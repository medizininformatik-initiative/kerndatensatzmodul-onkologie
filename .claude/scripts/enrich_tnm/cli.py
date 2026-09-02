"""CLI wrapper for ad-hoc / batch enrichment runs.

For production ETL pipelines, import ``enrich_tnm.core.enrich_observation``
directly and call it per record after broadcasting the ConceptMaps to workers.
This CLI is for: local backfills, CI smoke tests, manual reprocessing.

Usage:
    python -m enrich_tnm.cli \
        --input <dir|file> \
        --output <dir> \
        --conceptmap-clinical fsh-generated/resources/ConceptMap-mii-cm-onko-tnm-uicc-sct-clinical.json \
        --conceptmap-pathological fsh-generated/resources/ConceptMap-mii-cm-onko-tnm-uicc-sct-pathological.json \
        --provenance-out provenance.json \
        --agent "ETL@krebsregister.example"

Input may be:
  - a directory of *.json files (each a Resource or Bundle)
  - a single .json file (Resource or Bundle)
  - a single .ndjson file (one Resource per line, FHIR Bulk-Data style)

The CLI uses ``orjson`` if available (2–5× faster than stdlib json),
falls back to stdlib otherwise.
"""

from __future__ import annotations

import argparse
import sys
from datetime import datetime, timezone
from pathlib import Path
from uuid import uuid4

try:
    import orjson as _json  # type: ignore[import-not-found]

    def _loads(b: bytes) -> dict:
        return _json.loads(b)

    def _dumps(o: dict) -> bytes:
        return _json.dumps(o, option=_json.OPT_INDENT_2)

except ImportError:
    import json as _stdjson

    def _loads(b: bytes) -> dict:
        return _stdjson.loads(b)

    def _dumps(o: dict) -> bytes:
        return _stdjson.dumps(o, indent=2).encode("utf-8")


from .core import ConceptMaps, enrich_bundle, enrich_iter, load_conceptmaps


# -----------------------------------------------------------------------------
# Provenance generation
# -----------------------------------------------------------------------------


def make_provenance(
    targets: list[dict],
    agent_who: str,
    cm_clinical_path: Path,
    cm_pathological_path: Path,
) -> dict:
    """Build a single Provenance resource for the whole run."""
    now = datetime.now(timezone.utc).isoformat(timespec="seconds")
    return {
        "resourceType": "Provenance",
        "id": str(uuid4()),
        "target": targets,
        "recorded": now,
        "occurredDateTime": now,
        "activity": {
            "coding": [
                {
                    "system": "http://terminology.hl7.org/CodeSystem/v3-DataOperation",
                    "code": "UPDATE",
                    "display": "update",
                }
            ],
            "text": "TNM SNOMED-CT enrichment (UICC -> SCT, additional coding appended)",
        },
        "agent": [
            {
                "type": {
                    "coding": [
                        {
                            "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
                            "code": "assembler",
                        }
                    ]
                },
                "who": {"display": agent_who},
            }
        ],
        "entity": [
            {
                "role": "source",
                "what": {
                    "display": str(cm_clinical_path.name),
                },
            },
            {
                "role": "source",
                "what": {
                    "display": str(cm_pathological_path.name),
                },
            },
        ],
    }


# -----------------------------------------------------------------------------
# Input / output handling
# -----------------------------------------------------------------------------


def _process_one_resource(res: dict, maps: ConceptMaps) -> tuple[int, int, list[dict]]:
    if res.get("resourceType") == "Bundle":
        return enrich_bundle(res, maps)
    return enrich_iter([res], maps)


def _iter_input_files(input_path: Path):
    if input_path.is_file():
        yield input_path
        return
    for p in sorted(input_path.rglob("*.json")):
        yield p
    for p in sorted(input_path.rglob("*.ndjson")):
        yield p


def _process_file(path: Path, out_dir: Path, maps: ConceptMaps) -> tuple[int, int, list[dict]]:
    if path.suffix == ".ndjson":
        return _process_ndjson(path, out_dir, maps)
    return _process_json(path, out_dir, maps)


def _process_json(path: Path, out_dir: Path, maps: ConceptMaps):
    res = _loads(path.read_bytes())
    modified, seen, refs = _process_one_resource(res, maps)
    out_path = out_dir / path.name
    out_path.write_bytes(_dumps(res))
    return modified, seen, refs


def _process_ndjson(path: Path, out_dir: Path, maps: ConceptMaps):
    out_path = out_dir / path.name
    total_mod = 0
    total_seen = 0
    refs: list[dict] = []
    with path.open("rb") as fin, out_path.open("wb") as fout:
        for line in fin:
            line = line.strip()
            if not line:
                continue
            res = _loads(line)
            mod, seen, r = _process_one_resource(res, maps)
            total_mod += mod
            total_seen += seen
            refs.extend(r)
            fout.write(_dumps(res))
            fout.write(b"\n")
    return total_mod, total_seen, refs


# -----------------------------------------------------------------------------
# main
# -----------------------------------------------------------------------------


def main(argv: list[str] | None = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    ap.add_argument("--input", type=Path, required=True)
    ap.add_argument("--output", type=Path, required=True)
    ap.add_argument("--conceptmap-clinical", type=Path, required=True)
    ap.add_argument("--conceptmap-pathological", type=Path, required=True)
    ap.add_argument("--provenance-out", type=Path, default=None)
    ap.add_argument("--agent", default="enrich_tnm CLI", help="Free-text label for Provenance.agent.who.display")
    args = ap.parse_args(argv)

    args.output.mkdir(parents=True, exist_ok=True)
    maps = load_conceptmaps(args.conceptmap_clinical, args.conceptmap_pathological)

    total_mod = 0
    total_seen = 0
    all_refs: list[dict] = []
    for f in _iter_input_files(args.input):
        rel = f.relative_to(args.input) if args.input.is_dir() else f.name
        out_dir = (args.output / Path(rel).parent) if args.input.is_dir() else args.output
        out_dir.mkdir(parents=True, exist_ok=True)
        mod, seen, refs = _process_file(f, out_dir, maps)
        total_mod += mod
        total_seen += seen
        all_refs.extend(refs)
        print(f"  {f}: {mod}/{seen} enriched", file=sys.stderr)

    print(
        f"\n=== summary ===\n"
        f"  observations seen:     {total_seen}\n"
        f"  observations enriched: {total_mod}\n"
        f"  unchanged:             {total_seen - total_mod}",
        file=sys.stderr,
    )

    if args.provenance_out and all_refs:
        prov = make_provenance(
            all_refs,
            agent_who=args.agent,
            cm_clinical_path=args.conceptmap_clinical,
            cm_pathological_path=args.conceptmap_pathological,
        )
        args.provenance_out.write_bytes(_dumps(prov))
        print(f"  provenance written:    {args.provenance_out}", file=sys.stderr)

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
