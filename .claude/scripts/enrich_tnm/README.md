# TNM SNOMED-CT Enrichment

**ETL-side** library for enriching MII Onkologie TNM Observations with an
additional SNOMED CT coding alongside the (mandatory, original) UICC coding.
The UICC coding is preserved unchanged; SNOMED CT is appended.

## Why ETL, not server-side

The MII Onkologie profile defines the SNOMED CT coding as `0..1 MS` —
optional but supported. Senders that have a UICC↔SCT mapping should emit
both. Senders that don't (e.g., classic Krebsregister-Meldungen) emit
UICC only. Bridging the two is an **ETL-side concern**:

- Blaze (Clojure/JVM) — the typical FHIR target server in MII contexts —
  has no pre-storage interceptor. Mutation must happen before PUT/POST.
- Even on HAPI, putting derivation logic into the server couples
  clinical-data semantics to a specific deployment.
- Backfill of historical Meldungen needs an offline batch run anyway.

So: enrich in your ingestion pipeline, store the enriched form, query
against the dual-coded data.

## What the library does

For each `Observation` whose `meta.profile` matches one of:

- `mii-pr-onko-tnm-t-kategorie`
- `mii-pr-onko-tnm-n-kategorie`
- `mii-pr-onko-tnm-m-kategorie`

…the function `enrich_observation(obs, maps)`:

1. Reads the cp-Präfix extension on `Observation.code` (`c` / `p` / `u` / missing).
2. Reads the UICC coding from `valueCodeableConcept.coding` (system `https://www.uicc.org/resources/tnm`).
3. Looks up the matching SNOMED CT code in the clinical or pathological ConceptMap.
4. Appends a new `coding` entry with `system = http://snomed.info/sct`, the target code, the ConceptMap's `display`, and `userSelected = false` (marks the coding as derived, not originally captured).

Idempotent: re-running on an already-enriched Observation returns
`False` and mutates nothing.

## Files

| File | Purpose |
|---|---|
| `core.py` | Hot-path functions. Pure stdlib. Designed to be imported by Spark/Beam/Flink/Kafka workers. |
| `cli.py` | CLI for ad-hoc / batch local runs. Uses `orjson` if installed. |
| `__init__.py` | Re-exports `enrich_observation`, `load_conceptmaps`, `ConceptMaps`. |

## CLI usage

```bash
python -m enrich_tnm.cli \
  --input /path/to/incoming/bundles \
  --output /path/to/enriched/bundles \
  --conceptmap-clinical fsh-generated/resources/ConceptMap-mii-cm-onko-tnm-uicc-sct-clinical.json \
  --conceptmap-pathological fsh-generated/resources/ConceptMap-mii-cm-onko-tnm-uicc-sct-pathological.json \
  --provenance-out /path/to/run-provenance.json \
  --agent "ETL@krebsregister.example"
```

Input may be:

- A directory of `*.json` (each a Resource or Bundle)
- A single `.json` file
- A `.ndjson` file (FHIR Bulk Data style)

## ETL integration sketch

### PySpark

```python
from enrich_tnm import load_conceptmaps, enrich_observation

cm = load_conceptmaps("cm-clinical.json", "cm-pathological.json")
bcm = sc.broadcast(cm)

def enrich_partition(rows):
    maps = bcm.value
    for row in rows:
        obs = json.loads(row.json)
        enrich_observation(obs, maps)
        yield (row.id, json.dumps(obs))

enriched = observations_rdd.mapPartitions(enrich_partition)
```

### Apache Beam (Python SDK)

```python
class EnrichTnm(beam.DoFn):
    def setup(self):
        self.maps = load_conceptmaps(self.cm_clinical, self.cm_pathological)
    def process(self, obs):
        enrich_observation(obs, self.maps)
        yield obs
```

### High-throughput streaming (Kafka)

For sustained >100k records/sec or sub-50ms p99 latency, port the logic
to a JVM/native language. The algorithm is ~40 lines of dict lookup +
mutation; the win comes from JIT/native and GC behavior, not algorithmic
differences. Keep this Python implementation as the **reference**:
all other implementations should validate their outputs against it.

## Provenance

Per ETL run, the CLI emits a single `Provenance` resource with:

- `target` — every enriched Observation, by reference
- `activity` — `UPDATE` (HL7 v3 DataOperation)
- `agent.who.display` — your `--agent` label
- `entity.what.display` — the ConceptMap filenames used

This is intentionally a **single Provenance per run**, not per resource —
otherwise the FHIR server is bombarded with auxiliary writes during
backfills. For per-resource granularity, post-process the `target` array.

## Profile-level invariant

The MII profiles enforce `tnm-sct-uicc-konsistenz`: when a SNOMED CT
coding is present, its `display` must contain the cp-prefix + UICC code +
trailing space (e.g. `cT2 `). This script preserves the ConceptMap's
`display` value (typically the SCT FSN like `Union for International
Cancer Control cT2 (qualifier value)`, which contains `cT2 ` already).

If you produce SNOMED codings from a different source, validate each
output against this invariant or strip the display and let the server
re-display from `$lookup`.

## Mapping misses

Some UICC codes have no SCT target in the ConceptMap (e.g., `Tis(pu)`,
some category-cardinality suffixes). The library returns `False` for
those — the Observation passes through unchanged. **Decide your
production policy**:

- **Silent skip** (default): UICC-only stays valid per profile.
- **Dead-letter queue**: route unmapped Observations elsewhere for
  manual triage.
- **Hard fail**: only if your downstream consumers strictly require SNOMED.

## Testing

A smoke test against the FSH-built examples:

```bash
sushi .   # ensures fsh-generated/resources/ is current
python -m enrich_tnm.cli \
  --input fsh-generated/resources/ \
  --output /tmp/enriched/ \
  --conceptmap-clinical fsh-generated/resources/ConceptMap-mii-cm-onko-tnm-uicc-sct-clinical.json \
  --conceptmap-pathological fsh-generated/resources/ConceptMap-mii-cm-onko-tnm-uicc-sct-pathological.json
```

## Performance notes

| Setup | Throughput (single core) | Suitable for |
|---|---|---|
| Stdlib `json` only | 10–30k Obs/sec | Small backfills, CI |
| `orjson` + multiprocessing | 100–300k/sec aggregate | Full Krebsregister backfills |
| PySpark + broadcasted ConceptMap | 50–150k/sec/executor | Bulk-FHIR over many cores |
| JVM port (recommended for streaming) | >500k/sec | Kafka-based real-time pipelines |
