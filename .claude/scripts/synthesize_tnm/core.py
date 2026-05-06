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

# Priority of cp-prefix for "trump" comparison. Higher wins.
_CP_PRIORITY = {"p": 3, "c": 2, "u": 1, None: 0, "": 0}


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
class SynthesisResult:
    synthesized: dict
    winners: list[CategoryWinner] = field(default_factory=list)
    skipped_unknown_member: list[str] = field(default_factory=list)


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


def _pick_winner(observations: list[dict], include_recurrence: bool) -> dict | None:
    """Apply UICC merge rules to a list of Observations for one category."""
    if not observations:
        return None

    enriched = []
    for o in observations:
        cp = _cp_praefix(o)
        date = (o.get("effectiveDateTime") or "")
        enriched.append((o, cp, date))

    # r-prefix chain break: if any has cp == 'r', take only those at-or-after
    # the earliest 'r' assessment for this category. include_recurrence controls
    # whether the chain break happens at all.
    if include_recurrence:
        r_dates = [d for (_, cp, d) in enriched if cp == "r" and d]
        if r_dates:
            cutoff = min(r_dates)
            enriched = [(o, cp, d) for (o, cp, d) in enriched if d >= cutoff]
    else:
        enriched = [(o, cp, d) for (o, cp, d) in enriched if cp != "r"]

    if not enriched:
        return None

    # Sort: cp-priority desc, date desc.
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
    include_recurrence: bool = False,
) -> SynthesisResult:
    """Build a synthesized Klassifikation Observation.

    Parameters
    ----------
    source_klassifikationen
        Meldungs-level Klassifikation Observations to merge. Order does not matter.
    pool
        Iterable of all Observation resources (will be indexed by id) so that
        ``hasMember`` references on the source Klassifikationen can be resolved.
    decision_date
        ISO date for ``effectiveDateTime`` on the synthesized output.
    synthesized_id
        ``id`` to assign to the synthesized Observation.
    patient_reference
        e.g. ``"Patient/abc123"``.
    focus_reference
        e.g. ``"Condition/diagnose"`` — copied from a source if not given.
    method
        Optional ``Observation.method`` (TNM version). Defaults to the method of
        the most recent source Klassifikation if any.
    include_recurrence
        If False (default), r-prefix data is excluded — the synthesized stage
        reflects the primary disease evolution. Set True to include recurrence.

    Returns
    -------
    SynthesisResult with the synthesized resource plus diagnostics.
    """
    pool_by_id: dict[str, dict] = {}
    for o in pool:
        oid = o.get("id")
        if oid:
            pool_by_id[oid] = o

    by_cat, skipped = _category_observations_from_klassifikationen(
        source_klassifikationen, pool_by_id
    )

    winners: list[CategoryWinner] = []
    has_member: list[dict] = []
    for cat in ("T", "N", "M", "L", "V", "Pn", "S"):
        winner_obs = _pick_winner(by_cat.get(cat, []), include_recurrence=include_recurrence)
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

    # Default focus: use focus from the most recent source.
    # Observation.focus is 0..* in FHIR R4, so we read the first entry.
    if focus_reference is None:
        sorted_sources = sorted(
            source_klassifikationen,
            key=lambda k: k.get("effectiveDateTime") or "",
            reverse=True,
        )
        for src in sorted_sources:
            f_list = src.get("focus") or []
            if f_list and f_list[0].get("reference"):
                focus_reference = f_list[0]["reference"]
                break

    # Default method: use method from the most recent source
    if method is None:
        sorted_sources = sorted(
            source_klassifikationen,
            key=lambda k: k.get("effectiveDateTime") or "",
            reverse=True,
        )
        for src in sorted_sources:
            m = src.get("method")
            if m:
                method = m
                break

    derived_from = [
        {"reference": f"Observation/{k['id']}"}
        for k in source_klassifikationen
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
    )
