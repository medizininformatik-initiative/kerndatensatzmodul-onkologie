"""TNM Klassifikation synthesis — UICC merge rules implemented as pure functions.

Given multiple Meldungs-level Klassifikation Observations and a pool of
all per-category Observations, produce a single synthesized Klassifikation
that represents the patient's stage at a given decision date.

UICC merge rules implemented:
  1. **pTNM trumps cTNM**  — for each category, prefer assessments with
     cp-prefix == 'p' over 'c' / 'u' / missing.
  2. **Most recent wins** within the same evidence tier (p over p, c over c).
  3. **r-prefix is a chain break** — if any category Observation has
     cp-prefix == 'r' (recurrence), only Observations at-or-after that
     recurrence date are considered for that category.
  4. **Carry forward** — categories not reassessed in a later Meldung
     keep their value from the most recent prior assessment.

What this library deliberately does NOT compute:
  - The UICC stage grouping label (IIIA, IIIB, IV, ...). That mapping is
    entity-specific (rectum vs. breast vs. ...) and outside the scope of
    a generic merge. The caller assigns ``valueCodeableConcept`` on the
    returned synthesized Klassifikation.
  - Whether to include r-prefix (post-recurrence) data: the caller
    decides by passing ``include_recurrence`` (default False — the
    synthesized stage represents the *primary* disease evolution).

Hot path complexity: O(M + C log C) where M is number of source
Klassifikationen, C is total per-category Observations across them.
"""

from __future__ import annotations

from dataclasses import dataclass, field
from typing import Iterable

CANONICAL_BASE = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"

PROFILE_KLASSIFIKATION = (
    f"{CANONICAL_BASE}/StructureDefinition/mii-pr-onko-tnm-klassifikation"
)
PROFILE_SYNTHESIZED = (
    f"{CANONICAL_BASE}/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert"
)
CP_PRAEFIX_URL = (
    f"{CANONICAL_BASE}/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
)

CATEGORY_PROFILES: dict[str, str] = {
    "T": f"{CANONICAL_BASE}/StructureDefinition/mii-pr-onko-tnm-t-kategorie",
    "N": f"{CANONICAL_BASE}/StructureDefinition/mii-pr-onko-tnm-n-kategorie",
    "M": f"{CANONICAL_BASE}/StructureDefinition/mii-pr-onko-tnm-m-kategorie",
    "L": f"{CANONICAL_BASE}/StructureDefinition/mii-pr-onko-tnm-l-kategorie",
    "V": f"{CANONICAL_BASE}/StructureDefinition/mii-pr-onko-tnm-v-kategorie",
    "Pn": f"{CANONICAL_BASE}/StructureDefinition/mii-pr-onko-tnm-pn-kategorie",
    "S": f"{CANONICAL_BASE}/StructureDefinition/mii-pr-onko-tnm-s-kategorie",
}

# Inverse map for quick lookup.
PROFILE_TO_CATEGORY: dict[str, str] = {v: k for k, v in CATEGORY_PROFILES.items()}

# Symbol-Observation profiles. Structurally all four hang off the Klassifikation
# grouper via hasMember, but their UICC semantic scope differs:
#
#   y, r, a — qualify the WHOLE Klassifikation (phase markers):
#     y = during/after multimodal therapy
#     r = recurrence (post disease-free interval)
#     a = first determined at autopsy
#
#   m       — qualifies ONLY the T-Kategorie within the Klassifikation:
#     m = multiple primary tumours in a single site (T-modifier)
#
# The phase filter therefore only considers KLASSIFIKATIONS_SCOPE symbols.
# The m-symbol is propagated as a flag attached to the chosen T winner so
# downstream consumers can render "T2(m)".
KLASSIFIKATIONS_SCOPE_SYMBOLS: dict[str, str] = {
    "y": f"{CANONICAL_BASE}/StructureDefinition/mii-pr-onko-tnm-y-symbol",
    "r": f"{CANONICAL_BASE}/StructureDefinition/mii-pr-onko-tnm-r-symbol",
    "a": f"{CANONICAL_BASE}/StructureDefinition/mii-pr-onko-tnm-a-symbol",
}
T_MODIFIER_SYMBOLS: dict[str, str] = {
    "m": f"{CANONICAL_BASE}/StructureDefinition/mii-pr-onko-tnm-m-symbol",
}
PROFILE_TO_SYMBOL: dict[str, str] = {
    **{v: k for k, v in KLASSIFIKATIONS_SCOPE_SYMBOLS.items()},
    **{v: k for k, v in T_MODIFIER_SYMBOLS.items()},
}

# Priority of cp-prefix for "trump" comparison. Higher wins.
_CP_PRIORITY = {"p": 3, "c": 2, "u": 1, None: 0, "": 0}

# Phase literals — see docstring of synthesize_klassifikation.
# Note: "pre-therapeutic" intentionally NOT a phase here. It cannot be reliably
# derived from TNM data alone (a biopsy can produce pTNM before any therapy —
# e.g., melanoma excision biopsy, prostate core biopsy with pT2/pT3, polyp
# excision). Pre-therapeutic flagging belongs in the calling system based on
# Tumorkonferenz workflow (`mii-cs-onko-therapieplanung-typ#praeth`), not in
# this library.
PHASE_PRIMARY = "primary"
PHASE_POST_NEOADJUVANT = "post-neoadjuvant"
PHASE_RECURRENCE = "recurrence"

# SNOMED CT grouper codes (mii-vs-onko-tnm-klassifikation-typ)
GROUPER_CLINICAL = "399537006"     # Clinical TNM stage grouping
GROUPER_PATHOLOGICAL = "399588009"  # Pathologic TNM stage grouping
GROUPER_GENERIC = "399390009"      # TNM stage grouping (mixed/derived)


# -----------------------------------------------------------------------------
# Result dataclasses
# -----------------------------------------------------------------------------


@dataclass
class CategoryWinner:
    """The winning Observation for one TNM category."""

    category: str  # "T", "N", "M", "L", "V", "Pn", "S"
    observation: dict  # the full Observation resource
    cp_praefix: str | None
    effective_date: str  # ISO date string


@dataclass
class PhaseAuditEntry:
    """Per-source classification audit. Purely descriptive — no DQ heuristics
    or inference. Reflects what was DETECTED in the data, not what should
    have been there. Data quality concerns (missing symbols, suspicious
    gaps, etc.) belong in a separate CQL-based DQ library."""

    source_id: str
    klass_scope_symbols: set[str]      # detected y/r/a on the source
    t_modifier_symbols: set[str]       # detected m on the source
    grouper_code: str | None           # the SCT code on Klassifikation.code
    classification: str                # "kept" | "filtered-by-date" | "filtered-by-phase"
    reason: str | None = None          # human-readable detail when filtered


@dataclass
class SynthesisResult:
    synthesized: dict
    winners: list[CategoryWinner] = field(default_factory=list)
    skipped_unknown_member: list[str] = field(default_factory=list)
    # Set of TNM symbols (y/r/a/m) found across the kept source Klassifikationen.
    # Useful for the caller to interpret the synthesized stage in context.
    source_symbols: set[str] = field(default_factory=set)
    # Klassifikationen that were filtered out by phase or decision_date,
    # with the reason. Helps debug surprising outputs.
    filtered_sources: list[tuple[str, str]] = field(default_factory=list)
    # Per-source audit of phase classification. One entry per source
    # Klassifikation, describing what was detected and how it was classified.
    phase_audit: list[PhaseAuditEntry] = field(default_factory=list)


# -----------------------------------------------------------------------------
# Helpers
# -----------------------------------------------------------------------------


def _strip_version(canonical: str) -> str:
    return canonical.split("|", 1)[0]


def _category_of(obs: dict) -> str | None:
    profiles = (obs.get("meta") or {}).get("profile") or []
    for p in profiles:
        c = PROFILE_TO_CATEGORY.get(_strip_version(p))
        if c:
            return c
    return None


def _symbol_of(obs: dict) -> str | None:
    profiles = (obs.get("meta") or {}).get("profile") or []
    for p in profiles:
        s = PROFILE_TO_SYMBOL.get(_strip_version(p))
        if s:
            return s
    return None


def _grouper_code(klassifikation: dict) -> str | None:
    code = klassifikation.get("code") or {}
    for c in code.get("coding") or []:
        v = c.get("code")
        if v:
            return v
    return None


def _symbols_of_klassifikation(klassifikation: dict, pool_by_id: dict[str, dict]) -> tuple[set[str], set[str], dict[str, str]]:
    """Read all symbol Observations from a Klassifikation's hasMember pool.

    Returns three values:
      - klass_scope_symbols: set ⊆ {y, r, a} that qualify the whole stage
      - t_modifier_symbols:  set ⊆ {m} that qualify only the T-Kategorie
      - symbol_obs_ids:      mapping symbol_letter -> Observation.id, so the
                             synthesized stage can include the relevant symbol
                             observations in its hasMember.
    """
    klass_scope: set[str] = set()
    t_mod: set[str] = set()
    obs_ids: dict[str, str] = {}
    for hm in klassifikation.get("hasMember") or []:
        ref = hm.get("reference")
        oid = _ref_to_id(ref)
        if not oid:
            continue
        obs = pool_by_id.get(oid)
        if obs is None:
            continue
        s = _symbol_of(obs)
        if s is None:
            continue
        if s in KLASSIFIKATIONS_SCOPE_SYMBOLS:
            klass_scope.add(s)
        elif s in T_MODIFIER_SYMBOLS:
            t_mod.add(s)
        obs_ids[s] = oid
    return klass_scope, t_mod, obs_ids


def _cp_praefix(obs: dict) -> str | None:
    code = obs.get("code") or {}
    for ext in code.get("extension") or []:
        if ext.get("url") != CP_PRAEFIX_URL:
            continue
        vcc = ext.get("valueCodeableConcept") or {}
        for c in vcc.get("coding") or []:
            v = c.get("code")
            if v:
                return v
    return None


def _ref_to_id(ref: str | None) -> str | None:
    if not ref:
        return None
    # strip "Observation/" or full URL
    return ref.rsplit("/", 1)[-1]


def _resolve_members(klassifikation: dict, pool_by_id: dict[str, dict]) -> tuple[list[dict], list[str]]:
    resolved: list[dict] = []
    missing: list[str] = []
    for hm in klassifikation.get("hasMember") or []:
        ref = hm.get("reference")
        oid = _ref_to_id(ref)
        if not oid:
            continue
        obs = pool_by_id.get(oid)
        if obs is None:
            missing.append(ref)
        else:
            resolved.append(obs)
    return resolved, missing


def _category_observations_from_klassifikationen(
    klassifikationen: list[dict],
    pool_by_id: dict[str, dict],
) -> tuple[dict[str, list[dict]], list[str]]:
    """Group all category Observations from all source Klassifikationen by category."""
    by_cat: dict[str, list[dict]] = {}
    skipped: list[str] = []
    seen_ids: set[str] = set()
    for k in klassifikationen:
        members, missing = _resolve_members(k, pool_by_id)
        skipped.extend(missing)
        for obs in members:
            oid = obs.get("id")
            if oid and oid in seen_ids:
                continue
            if oid:
                seen_ids.add(oid)
            cat = _category_of(obs)
            if cat is None:
                # Could be Anzahl_Lymphknoten or other non-category member -- skip
                continue
            by_cat.setdefault(cat, []).append(obs)
    return by_cat, skipped


# -----------------------------------------------------------------------------
# Winner selection
# -----------------------------------------------------------------------------


def _pick_winner(observations: list[dict]) -> dict | None:
    """Apply UICC merge within an already phase-/date-filtered candidate list.

    Phase filtering (y/r exclusion) happens at the source-Klassifikation level
    before this function is called. Within the kept candidates, the rule is:
    cp-priority desc (p > c > u > none), then date desc.
    """
    if not observations:
        return None
    enriched = [(o, _cp_praefix(o), o.get("effectiveDateTime") or "") for o in observations]
    enriched.sort(key=lambda t: (_CP_PRIORITY.get(t[1], 0), t[2]), reverse=True)
    return enriched[0][0]


# -----------------------------------------------------------------------------
# Public API
# -----------------------------------------------------------------------------


def synthesize_klassifikation(
    source_klassifikationen: list[dict],
    pool: Iterable[dict],
    *,
    decision_date: str,
    synthesized_id: str,
    patient_reference: str,
    focus_reference: str | None = None,
    method: dict | None = None,
    phase: str = PHASE_PRIMARY,
) -> SynthesisResult:
    """Build a synthesized Klassifikation Observation.

    Parameters
    ----------
    source_klassifikationen
        Meldungs-level Klassifikation Observations to merge. Order does not matter.
    pool
        Iterable of all Observation resources (indexed by id) so that
        ``hasMember`` references on the source Klassifikationen can be resolved.
        Must include the y/r/a/m symbol Observations referenced from the sources.
    decision_date
        ISO date used as ``effectiveDateTime`` on the synthesized output AND
        as a temporal filter — sources with ``effectiveDateTime > decision_date``
        are excluded (per Manual S. 89: "TNM-Angaben, die im weiteren Verlauf
        erhoben werden, dürfen die TNM-Klassifizierung zum Diagnosezeitpunkt
        nicht überschreiben").
    synthesized_id
        ``id`` to assign to the synthesized Observation.
    patient_reference
        e.g. ``"Patient/abc123"``.
    focus_reference
        e.g. ``"Condition/diagnose"`` — copied from a source if not given.
    method
        Optional ``Observation.method`` (TNM version). Defaults to the method of
        the most recent source Klassifikation if any.
    phase
        Which staging phase to synthesize:
          - ``"primary"`` (default): primary-disease stage. Excludes sources
            with y- or r-symbol. Per Manual S. 89, cTNM beschreibt die
            Tumorausbreitung zum Diagnosezeitpunkt in der Regel besser als
            ypTNM — y-Quellen *müssen* daher draußen bleiben.
          - ``"post-neoadjuvant"``: post-therapy stage. Keeps only y-flagged
            sources (excluding r-flagged).
          - ``"recurrence"``: recurrence stage. Keeps only r-flagged sources.

    Returns
    -------
    SynthesisResult with the synthesized resource plus diagnostics:
      - ``synthesized``: the new Observation dict
      - ``winners``: per-category winning Observations
      - ``source_symbols``: union of {y,r,a,m} across kept sources
      - ``filtered_sources``: sources excluded by phase/date, with reason
      - ``skipped_unknown_member``: hasMember refs that could not be resolved
    """
    pool_by_id: dict[str, dict] = {}
    for o in pool:
        oid = o.get("id")
        if oid:
            pool_by_id[oid] = o

    # 1. Annotate each source with klass-scope symbols, T-modifier symbols,
    #    obs-id-by-symbol mapping, and date.
    annotated: list[tuple[dict, set[str], set[str], dict[str, str], str]] = []
    for k in source_klassifikationen:
        klass_scope, t_mod, sym_ids = _symbols_of_klassifikation(k, pool_by_id)
        date = k.get("effectiveDateTime") or ""
        annotated.append((k, klass_scope, t_mod, sym_ids, date))

    # 2. Filter by decision_date (sources at-or-before decision_date)
    filtered_log: list[tuple[str, str]] = []
    audit: list[PhaseAuditEntry] = []
    kept: list[tuple[dict, set[str], set[str], dict[str, str], str]] = []
    for k, klass_scope, t_mod, sym_ids, date in annotated:
        kid = k.get("id") or "<unknown>"
        gc = _grouper_code(k)
        if date and decision_date and date > decision_date:
            reason = f"effectiveDateTime {date} > decision_date {decision_date}"
            filtered_log.append((kid, reason))
            audit.append(PhaseAuditEntry(
                source_id=kid, klass_scope_symbols=klass_scope, t_modifier_symbols=t_mod,
                grouper_code=gc, classification="filtered-by-date", reason=reason,
            ))
            continue
        kept.append((k, klass_scope, t_mod, sym_ids, date))

    # 3. Filter by phase. Phase semantics use KLASS-SCOPE symbols only;
    #    T-modifier (m) is preserved across all phases as a flag.
    def _phase_matches(klass_scope: set[str]) -> bool:
        if phase == PHASE_PRIMARY:
            return "y" not in klass_scope and "r" not in klass_scope
        if phase == PHASE_POST_NEOADJUVANT:
            return "y" in klass_scope and "r" not in klass_scope
        if phase == PHASE_RECURRENCE:
            return "r" in klass_scope
        raise ValueError(f"Unknown phase: {phase!r}")

    phase_kept: list[tuple[dict, set[str], set[str], dict[str, str], str]] = []
    for k, klass_scope, t_mod, sym_ids, date in kept:
        kid = k.get("id") or "<unknown>"
        gc = _grouper_code(k)
        if not _phase_matches(klass_scope):
            reason = f"phase={phase!r}, klass-scope-symbols={sorted(klass_scope) or 'none'}"
            filtered_log.append((kid, reason))
            audit.append(PhaseAuditEntry(
                source_id=kid, klass_scope_symbols=klass_scope, t_modifier_symbols=t_mod,
                grouper_code=gc, classification="filtered-by-phase", reason=reason,
            ))
            continue
        phase_kept.append((k, klass_scope, t_mod, sym_ids, date))
        audit.append(PhaseAuditEntry(
            source_id=kid, klass_scope_symbols=klass_scope, t_modifier_symbols=t_mod,
            grouper_code=gc, classification="kept", reason=None,
        ))

    surviving_sources = [k for (k, _, _, _, _) in phase_kept]
    surviving_symbols: set[str] = set()
    for _, klass_scope, t_mod, _, _ in phase_kept:
        surviving_symbols |= klass_scope | t_mod

    by_cat, skipped = _category_observations_from_klassifikationen(
        surviving_sources, pool_by_id
    )

    winners: list[CategoryWinner] = []
    has_member: list[dict] = []
    for cat in ("T", "N", "M", "L", "V", "Pn", "S"):
        winner_obs = _pick_winner(by_cat.get(cat, []))
        if winner_obs is None:
            continue
        winners.append(
            CategoryWinner(
                category=cat,
                observation=winner_obs,
                cp_praefix=_cp_praefix(winner_obs),
                effective_date=winner_obs.get("effectiveDateTime") or "",
            )
        )
        wid = winner_obs.get("id")
        if wid:
            has_member.append({"reference": f"Observation/{wid}"})

    # Propagate symbol Observations into the synthesized hasMember:
    # - klass-scope (y/r/a): include if any surviving source carried them,
    #   they qualify the synthesized stage as a whole
    # - T-modifier (m): include only if the T winner came from a source
    #   that had m-Symbol (multifocality is per-T-event, not per-stage)
    propagated_symbol_ids: set[str] = set()
    t_winner = next((w for w in winners if w.category == "T"), None)
    t_winner_obs_id = t_winner.observation.get("id") if t_winner else None

    for k, klass_scope, t_mod, sym_ids, _ in phase_kept:
        for s in klass_scope:
            sid = sym_ids.get(s)
            if sid and sid not in propagated_symbol_ids:
                has_member.append({"reference": f"Observation/{sid}"})
                propagated_symbol_ids.add(sid)
        # m only propagates from the source that supplied the T winner
        if t_winner_obs_id and "m" in t_mod:
            t_member_ids = {_ref_to_id(hm.get("reference")) for hm in (k.get("hasMember") or [])}
            if t_winner_obs_id in t_member_ids:
                sid = sym_ids.get("m")
                if sid and sid not in propagated_symbol_ids:
                    has_member.append({"reference": f"Observation/{sid}"})
                    propagated_symbol_ids.add(sid)

    # Defaults derived from the SURVIVING sources only (after phase/date filter)
    # so the synthesized stage doesn't borrow focus/method from filtered-out
    # sources. If no source survived, fall back to all input sources.
    fallback_sources = surviving_sources or source_klassifikationen
    sorted_sources = sorted(
        fallback_sources,
        key=lambda k: k.get("effectiveDateTime") or "",
        reverse=True,
    )

    if focus_reference is None:
        for src in sorted_sources:
            f_list = src.get("focus") or []
            if f_list and f_list[0].get("reference"):
                focus_reference = f_list[0]["reference"]
                break

    if method is None:
        for src in sorted_sources:
            m = src.get("method")
            if m:
                method = m
                break

    # derivedFrom lists ONLY the sources that contributed (post-filter).
    # Filtered sources are reported separately in result.filtered_sources.
    derived_from = [
        {"reference": f"Observation/{k['id']}"}
        for k in surviving_sources
        if k.get("id")
    ]

    synthesized = {
        "resourceType": "Observation",
        "id": synthesized_id,
        "meta": {"profile": [PROFILE_SYNTHESIZED]},
        "status": "final",
        "code": {
            "coding": [
                {
                    "system": "http://snomed.info/sct",
                    "code": "399390009",
                    "display": "TNM stage grouping",
                }
            ]
        },
        "subject": {"reference": patient_reference},
        "effectiveDateTime": decision_date,
        "derivedFrom": derived_from,
        "hasMember": has_member,
    }
    if focus_reference:
        synthesized["focus"] = [{"reference": focus_reference}]
    if method:
        synthesized["method"] = method

    return SynthesisResult(
        synthesized=synthesized,
        winners=winners,
        skipped_unknown_member=skipped,
        source_symbols=surviving_symbols,
        filtered_sources=filtered_log,
        phase_audit=audit,
    )
