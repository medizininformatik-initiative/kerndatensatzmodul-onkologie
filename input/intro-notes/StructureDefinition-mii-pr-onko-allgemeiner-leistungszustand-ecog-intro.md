<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog-intro.md) -->
### Context
This profile describes the general performance status of a patient in oncology according to ECOG.

Recording the general performance status is mandated by the oBDS.
The actual report is coded and transmitted as ECOG, whereby the answer options allow a mapping from the Karnofsky score.

In the oBDS so far, and in the present FHIR profiles, documentation both of the ECOG with the answer options 0-4 and of the Karnofsky score with 10%, 20% etc. is permitted.
The current implementation guide, however, contains a note that in future only the ECOG is to be reported. https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532323/Allgemeiner+Leistungszustand+Typ

For the case that the findings only refer to the general condition without coding it in ECOG or Karnofsky, the documentation guide of the Plattform §65c recommends developing in-house guidelines for better reproducibility. https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/86310992/Allgemeiner+Leistungszustand

### ECOG-Karnofsky mapping: oBDS vs. clinical literature

**Important note**: different ECOG-Karnofsky conversion tables exist in the literature:

**oBDS 12.1 specification** (used in this profile):
- ECOG 0 = Karnofsky 90-100%
- ECOG 1 = Karnofsky 70-80%
- ECOG 2 = Karnofsky 50-60%
- ECOG 3 = Karnofsky 30-40%
- ECOG 4 = Karnofsky 10-20%

**Clinical literature** (Buccheri et al., 1996; Ma et al., 2010):
- ECOG 0 = Karnofsky 100%
- ECOG 1 = Karnofsky 80-90%
- ECOG 2 = Karnofsky 70%
- ECOG 3 = Karnofsky 50-60%
- ECOG 4 = Karnofsky 10-40%

Compared with the clinical literature, the oBDS mappings are shifted downwards by approximately 10-20%. Since these profiles implement the oBDS, all reference ranges and ObservationDefinitions use the oBDS specification.

Implementers should be aware of these differences, in particular when converting between ECOG and Karnofsky or when exchanging data with international systems that may use other conversion tables.

### LOINC support for international interoperability

The profile supports optional LOINC coding in addition to the mandatory oBDS coding:

- **`code.coding`**: besides the mandatory SNOMED CT code (423740007), the LOINC code 89262-0 may optionally be given
- **`valueCodeableConcept.coding`**: besides the mandatory oBDS coding, LOINC answer list codes may optionally be given

The following ConceptMap is available for translating between oBDS and LOINC codes:
- [mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc](ConceptMap-mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc.html)

---

**Examples**

<!-- TODO:REVIEW the source page references mii-exa-onko-allgemeiner-leistungszustand-ecog-1; only mii-exa-onko-allgemeiner-leistungszustand-ecog exists in the repository -->
[mii-exa-onko-allgemeiner-leistungszustand-ecog](Observation-mii-exa-onko-allgemeiner-leistungszustand-ecog.html)
