"""TNM SNOMED-CT enrichment library.

Hot-path entry: ``core.enrich_observation`` — pure-stdlib, IO-free, idempotent.
Designed to be imported by ETL frameworks (Spark/Beam/Flink/Kafka Streams)
and called per-record after broadcasting the loaded ConceptMaps.
"""

from .core import (
    ConceptMaps,
    enrich_observation,
    load_conceptmaps,
)

__all__ = ["ConceptMaps", "enrich_observation", "load_conceptmaps"]
