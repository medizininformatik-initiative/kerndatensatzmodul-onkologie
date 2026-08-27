<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page value-sets.md (de) -->

### Value Sets

This page describes the ValueSets of the Oncology module (naming convention
`MII_VS_Onko_<Name>`). The complete, automatically generated list can be
found in the [artifact overview](artifacts.html); the underlying code systems
are described on the [code systems](code-systems.html) page.

Particularities of this module's ValueSet landscape:

- **oBDS answer lists**: Most ValueSets represent the oBDS answer lists and
  bind the module's own CodeSystems (`MII_CS_Onko_…`).
- **Year-versioned terminologies**: For ATC and ICD-O-3 the module maintains
  version-pinned annual ValueSets together with transition ConceptMaps — see
  [ATC — annual versions and transitions](atc-terminologie.html) and
  [ICD-O — revisions and validation](icd-o-terminologie.html).
- **Reportable tumors**: The ValueSet
  [mii-vs-onko-icd10-meldepflichtige-tumoren](ValueSet-mii-vs-onko-icd10-meldepflichtige-tumoren.html)
  captures the reportable ICD-10-GM block codes; a warning invariant on the
  diagnosis flags codes outside this list without forbidding them.
- **Curated companion artifacts**: non-binding curated selection lists such
  as the [KDL document classes](ValueSet-mii-vs-onko-kdl-dokumentklassen.html)
  of the oncological treatment path; the curated tumor-marker LOINC codes are
  documented on the [tumor markers](tumormarker-loinc.html) page.
