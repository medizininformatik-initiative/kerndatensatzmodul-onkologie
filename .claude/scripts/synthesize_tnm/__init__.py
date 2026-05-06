"""TNM Klassifikation synthesis library.

Builds a synthesized TNM Klassifikation Observation from multiple
Meldungs-level source Klassifikationen, applying UICC merge rules.
"""

from .core import (
    CategoryWinner,
    SynthesisResult,
    synthesize_klassifikation,
)

__all__ = [
    "CategoryWinner",
    "SynthesisResult",
    "synthesize_klassifikation",
]
