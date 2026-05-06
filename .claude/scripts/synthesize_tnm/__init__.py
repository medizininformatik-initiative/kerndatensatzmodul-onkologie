"""TNM Klassifikation synthesis library.

Builds a synthesized TNM Klassifikation Observation from multiple
Meldungs-level source Klassifikationen, applying UICC merge rules.
"""

# Algorithm version. Must match the FHIR Library resource:
#   https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/
#   Library/mii-lib-onko-synthesize-tnm
#
# Bump per SemVer:
#   patch (1.0.x): bugfix without output change
#   minor (1.x.0): new features (new phase, new symbol detection)
#   major (x.0.0): breaking output change (merge rule revision)
__version__ = "1.0.0"

ALGORITHM_CANONICAL = (
    "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
    "Library/mii-lib-onko-synthesize-tnm"
)

from .core import (
    CategoryWinner,
    PhaseAuditEntry,
    SynthesisResult,
    make_synthesis_provenance,
    synthesize_klassifikation,
    PHASE_PRIMARY,
    PHASE_POST_NEOADJUVANT,
    PHASE_RECURRENCE,
)

__all__ = [
    "CategoryWinner",
    "PhaseAuditEntry",
    "SynthesisResult",
    "make_synthesis_provenance",
    "synthesize_klassifikation",
    "PHASE_PRIMARY",
    "PHASE_POST_NEOADJUVANT",
    "PHASE_RECURRENCE",
    "__version__",
    "ALGORITHM_CANONICAL",
]
