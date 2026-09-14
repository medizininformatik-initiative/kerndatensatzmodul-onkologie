<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-tnm-m-symbol-intro.md (de) -->
> **DEPRECATED as of v2027.** Multiple primary tumours (UICC m suffix, oBDS 8.10) are no
> longer carried as a separate Observation but as `component[multipleTumoren]` on the
> [T category](StructureDefinition-mii-pr-onko-tnm-t-kategorie.html) — the suffix is
> T-exclusive and belongs on the category, not alongside it as a panel member of equal
> rank. Legacy data remains readable; new implementations should use the component.
{: .ig-highlight .ig-highlight-grey}

This profile represents the m symbol of a TNM classification.
The m symbol indicates the presence of multiple tumours.

The explicit use of `m` codes for multiple tumours where the exact number is unknown. Instead of `m`, a specific number may also be given.

The m symbol is to be distinguished from the M category used for the assessment of distant metastases.
