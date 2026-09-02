"""TNM SNOMED-CT enrichment — pure-stdlib hot-path library.

Adds an additional [snomed-ct] coding to the valueCodeableConcept of TNM
T/N/M-Kategorie Observations, sourced from the project's UICC->SCT
ConceptMaps (clinical / pathological). Original UICC coding is preserved.

The function ``enrich_observation`` is:
  - **Pure** — no IO, no global state, no logging side effects.
  - **Idempotent** — re-running on an already enriched Observation is a no-op.
  - **Stateless across records** — safe to broadcast to Spark/Beam workers
    and run in parallel without coordination.
  - **Stdlib only** — ``orjson`` is optional (CLI uses it if available).

Hot-path complexity per Observation:
  - 1 dict lookup in cps_to_map (size 2)
  - 1 dict lookup in map.elements (size ~131)
  - O(n) scan of valueCodeableConcept.coding (n typically <= 3)
  - O(1) dict insertion if a new coding is appended

For high-throughput ETL (Spark/Beam):
  cm = load_conceptmaps(clin_path, path_path)
  bcm = sc.broadcast(cm)
  rdd.mapPartitions(lambda part: (enrich_observation(o, bcm.value) and o for o in part))

For >100k records/sec sustained, port to JVM (Kafka Streams) or Rust.
The logic is trivial; the win comes from JIT/native + GC behavior,
not algorithmic differences.
"""

from __future__ import annotations

import json
from dataclasses import dataclass, field
from pathlib import Path
from typing import Iterable

# -----------------------------------------------------------------------------
# Constants — profile URLs the enrichment is allowed to touch
# -----------------------------------------------------------------------------

CANONICAL_BASE = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"

ENRICH_PROFILES: frozenset[str] = frozenset(
    f"{CANONICAL_BASE}/StructureDefinition/{p}"
    for p in (
        "mii-pr-onko-tnm-t-kategorie",
        "mii-pr-onko-tnm-n-kategorie",
        "mii-pr-onko-tnm-m-kategorie",
    )
)

UICC_SYSTEM = "https://www.uicc.org/resources/tnm"
SCT_SYSTEM = "http://snomed.info/sct"
CP_PRAEFIX_URL = f"{CANONICAL_BASE}/StructureDefinition/mii-ex-onko-tnm-cp-praefix"


# -----------------------------------------------------------------------------
# ConceptMap representation
# -----------------------------------------------------------------------------


@dataclass(frozen=True)
class CmTarget:
    code: str
    display: str | None


@dataclass
class ConceptMaps:
    """Loaded UICC -> SNOMED CT ConceptMaps.

    ``clinical`` and ``pathological`` map UICC source codes (T2, N1, M0, ...)
    to SNOMED CT target codes for the respective clinical/pathological
    SCT category-value codes. cp-prefix `c`, `u`, missing -> clinical map;
    `p` -> pathological map.
    """

    clinical: dict[str, CmTarget] = field(default_factory=dict)
    pathological: dict[str, CmTarget] = field(default_factory=dict)

    def lookup(self, cp_praefix: str | None, uicc_code: str) -> CmTarget | None:
        m = self.pathological if cp_praefix == "p" else self.clinical
        return m.get(uicc_code)


def _load_one_map(path: Path) -> dict[str, CmTarget]:
    with path.open("rb") as f:
        cm = json.load(f)
    out: dict[str, CmTarget] = {}
    for group in cm.get("group", []):
        for el in group.get("element", []):
            src = el.get("code")
            targets = el.get("target") or []
            if not src or not targets:
                continue
            t = targets[0]
            tc = t.get("code")
            if not tc:
                continue
            out[src] = CmTarget(code=tc, display=t.get("display"))
    return out


def load_conceptmaps(clinical_path: Path | str, pathological_path: Path | str) -> ConceptMaps:
    """Load both ConceptMaps from disk. Call once at worker start."""
    return ConceptMaps(
        clinical=_load_one_map(Path(clinical_path)),
        pathological=_load_one_map(Path(pathological_path)),
    )


# -----------------------------------------------------------------------------
# Enrichment hot path
# -----------------------------------------------------------------------------


def _is_tnm_category(obs: dict) -> bool:
    # meta.profile values may carry a |<version> suffix (per FHIR canonical
    # URL convention). Strip before matching.
    profiles = (obs.get("meta") or {}).get("profile") or []
    return any(p.split("|", 1)[0] in ENRICH_PROFILES for p in profiles)


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


def _existing_codings(vcc: dict, system: str) -> list[dict]:
    return [c for c in vcc.get("coding") or [] if c.get("system") == system]


def enrich_observation(obs: dict, maps: ConceptMaps) -> bool:
    """Enrich one Observation in-place with a SNOMED CT coding.

    Returns True if the Observation was modified, False otherwise.
    Idempotent: a second call on the same Observation is a no-op.

    The Observation dict is mutated in place. Callers that need
    immutability should ``copy.deepcopy`` before calling.

    Skipped silently (returns False) when:
      - resourceType != "Observation"
      - meta.profile does not match a TNM T/N/M-Kategorie profile
      - no UICC coding present
      - SNOMED CT coding already present (idempotency)
      - UICC code is not in the relevant ConceptMap (mapping miss)
    """
    if obs.get("resourceType") != "Observation":
        return False
    if not _is_tnm_category(obs):
        return False

    vcc = obs.get("valueCodeableConcept")
    if not vcc:
        return False

    if _existing_codings(vcc, SCT_SYSTEM):
        return False  # idempotency

    uicc_codings = _existing_codings(vcc, UICC_SYSTEM)
    if not uicc_codings:
        return False
    uicc_code = uicc_codings[0].get("code")
    if not uicc_code:
        return False

    cp = _cp_praefix(obs)
    target = maps.lookup(cp, uicc_code)
    if target is None:
        return False  # mapping miss — caller decides via dead-letter

    new_coding = {
        "system": SCT_SYSTEM,
        "code": target.code,
    }
    if target.display:
        new_coding["display"] = target.display
    # Marker that this coding was derived, not originally captured.
    # Leaves `userSelected` unset on UICC (interpretable as "originally captured").
    new_coding["userSelected"] = False

    vcc.setdefault("coding", []).append(new_coding)
    return True


# -----------------------------------------------------------------------------
# Bulk helpers
# -----------------------------------------------------------------------------


def enrich_iter(observations: Iterable[dict], maps: ConceptMaps) -> tuple[int, int, list[dict]]:
    """Iterate, mutate in place, return (modified_count, total_seen, modified_refs).

    ``modified_refs`` is a list of {"reference": "Observation/<id>"} suitable
    for use as Provenance.target entries.
    """
    modified = 0
    seen = 0
    refs: list[dict] = []
    for obs in observations:
        seen += 1
        if enrich_observation(obs, maps):
            modified += 1
            oid = obs.get("id")
            if oid:
                refs.append({"reference": f"Observation/{oid}"})
    return modified, seen, refs


def enrich_bundle(bundle: dict, maps: ConceptMaps) -> tuple[int, int, list[dict]]:
    """Enrich every Observation entry in a Bundle. Mutates in place."""
    if bundle.get("resourceType") != "Bundle":
        return 0, 0, []
    entries = bundle.get("entry") or []
    return enrich_iter(
        (e["resource"] for e in entries if isinstance(e.get("resource"), dict)),
        maps,
    )
