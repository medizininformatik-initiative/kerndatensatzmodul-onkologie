<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze-intro.md (de) -->
### Content

This profile describes the percentage involvement of the most affected core
of a prostate biopsy or prostate excision specimen in oncology. This is an
important histopathological parameter for assessing tumor extent and
aggressiveness in prostate cancer.

The profile is based on a FHIR Observation resource and uses LOINC to code
the observed parameter. The value is given as a percentage and refers to the
most affected biopsy core.

### Relationships to other resources

The carcinoma involvement of the core is an important histopathological
observation:

- refers via `Observation.focus` to the primary diagnosis
  ([MII_PR_Onko_Diagnose_Primaertumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.html))
- refers via `Observation.subject` to the patient (Patient resource)
- can be linked via `Observation.encounter` to a specific encounter
- can be linked via `Observation.specimen` to the corresponding tissue sample

### oBDS context

According to oBDS P4.3, the percentage carcinoma involvement of the most
affected core of a prostate biopsy is documented. This is an important
parameter for the histopathological assessment of tumor extent.

### Terminology binding

The profile uses a **required** LOINC code for the unique identification of
the observation:

- **LOINC**: `44654-2` "Tissue involved by tumor in Prostate tumor"

### Example

- [Example instance carcinoma involvement of core](Observation-mii-exa-onko-prostata-ca-befall-stanze-1.html)
