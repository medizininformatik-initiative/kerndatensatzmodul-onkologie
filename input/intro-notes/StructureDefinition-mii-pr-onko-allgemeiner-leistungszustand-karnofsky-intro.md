<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky-intro.md (de) -->
### Context
This profile describes the general performance status of a patient in oncology according to Karnofsky.

Recording the general performance status is mandated by the oBDS.
The actual report is coded and transmitted as ECOG, whereby the answer options allow a mapping from the Karnofsky score.

In the oBDS so far, and in the present FHIR profiles, documentation both of the ECOG with the answer options 0-4 and of the Karnofsky score with 10%, 20% etc. is permitted.
The current implementation guide, however, contains a note that in future only the ECOG is to be reported. https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532323/Allgemeiner+Leistungszustand+Typ

For the case that the findings only refer to the general condition without coding it in ECOG or Karnofsky, the documentation guide of the Plattform §65c recommends developing in-house guidelines for better reproducibility. https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/86310992/Allgemeiner+Leistungszustand

### Karnofsky-ECOG mapping: oBDS vs. clinical literature

**Important note**: different Karnofsky-ECOG conversion tables exist in the literature:

**oBDS 12.1 specification** (used in this profile):
- Karnofsky 90-100% = ECOG 0
- Karnofsky 70-80% = ECOG 1
- Karnofsky 50-60% = ECOG 2
- Karnofsky 30-40% = ECOG 3
- Karnofsky 10-20% = ECOG 4
- Karnofsky 0% = ECOG 5

**Clinical literature** (Buccheri et al., 1996; Ma et al., 2010):
- Karnofsky 100% = ECOG 0
- Karnofsky 80-90% = ECOG 1
- Karnofsky 70% = ECOG 2
- Karnofsky 50-60% = ECOG 3
- Karnofsky 10-40% = ECOG 4

Compared with the clinical literature, the oBDS mappings are shifted downwards by approximately 10-20%. Since these profiles implement the oBDS, all reference ranges and ObservationDefinitions use the oBDS specification.

Implementers should be aware of these differences, in particular when converting between Karnofsky and ECOG or when exchanging data with international systems that may use other conversion tables.

### LOINC support for international interoperability

The profile supports optional LOINC coding in addition to the mandatory oBDS coding:

- **`code.coding`**: besides the mandatory SNOMED CT code (761869008), the LOINC code 89243-0 may optionally be given
- **`valueCodeableConcept.coding`**: besides the mandatory oBDS coding, LOINC answer list codes may optionally be given

The following ConceptMap is available for translating between oBDS and LOINC codes:
- [mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc](ConceptMap-mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc.html)

---

**Examples**

<!-- TODO:REVIEW the source page references mii-exa-onko-allgemeiner-leistungszustand-1; only mii-exa-onko-allgemeiner-leistungszustand-karnofsky exists in the repository -->
[mii-exa-onko-allgemeiner-leistungszustand-karnofsky](Observation-mii-exa-onko-allgemeiner-leistungszustand-karnofsky.html)
