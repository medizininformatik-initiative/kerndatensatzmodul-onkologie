<!-- TODO:REVIEW machine translation of the German original (input/translations/de/pagecontent/tnm-breast-cancer-journey.md) -->
<!-- markdownlint-disable MD041 -->
<!-- Source: MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Breast-Cancer-Journey-Example.page.md.
     German original: input/translations/de/pagecontent/tnm-breast-cancer-journey.md —
     keep both language versions in step. -->

### Overview

This comprehensive example demonstrates the complete TNM staging journey of a breast cancer patient across five critical points in time. It illustrates the complexity of real-world oncological assessment and shows how the FHIR architecture, with linked Observations, represents clinical reality.

### Graphical representation

![TNM staging journey of a breast cancer patient across five points in time](TNM_Breast_Cancer_Journey.svg)

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Breast-Cancer-Journey-Example.page.md gate=B -->
> The image is provided as `.svg` and can be opened and downloaded separately for a better view: [TNM_Breast_Cancer_Journey.svg](TNM_Breast_Cancer_Journey.svg).
{: .ig-highlight .ig-highlight-grey}

### Clinical context

The patient passes through the following staging phases:

| Point in time | TNM stage | Description | UICC stage |
|-----------|-------------|--------------|--------------|
| January 2024 | cT3N1M0 | Initial clinical assessment | Stage IIIA |
| February 2024 | pT4cN1cM0 | After biopsy - mixed assessment | Stage IIIB |
| May 2024 | ycT2ycN0cM0 | After neoadjuvant chemotherapy | Stage IIA |
| June 2024 | ypT0ypN0cM0 | After surgery - complete pathological remission | Complete Response |
| June 2027 | rcT2N1M1 | Recurrence after 3 years disease-free interval | Stage IV |

<!-- TODO:REVIEW Discrepancy between table and shipped example instances: the February 2024 instance codes the T category clinically (cT4, mii-exa-onko-tnm-t-kategorie-cT4), not pathologically (pT4). The June 2024 instance carries "Stadium X" as its UICC stage instead of "Complete Response". Have this reviewed clinically and align either the table or the instances. -->

### Architecture highlights

#### 1. Component reuse

The initial `cM0` Observation (January 2024) is referenced in several later classifications:

- In the mixed staging after biopsy (pT4cN1cM0)
- After neoadjuvant therapy (ycT2ycN0cM0)
- In the postoperative assessment (ypT0ypN0cM0)

This shows that not all TNM categories need to be reassessed at every staging phase.

#### 2. Mixed assessment types

The example `pT4cN1cM0` demonstrates a common clinical situation:

- **T category**: assessed pathologically by biopsy (pT4)
- **N category**: assessed clinically by imaging (cN1)
- **M category**: assessed clinically by CT scan (cM0)

#### 3. Use of prefixes

**Category-level prefixes (c/p):**

- Applied to individual TNM components
- Indicate the assessment method (clinical vs. pathological)

**Classification-level prefixes (y/r):**

- `y`: post-neoadjuvant therapy assessment
- `r`: recurrence staging after a disease-free interval

### SNOMED CT coding

Each TNM category carries two codings:

1. **UICC code**: the traditional TNM value (e.g. `T3`, `N1`, `M0`)
2. **SNOMED CT code**: specific code from the UICC qualifier value hierarchy

Example for cT3:

```fsh
* valueCodeableConcept = $UICC#T3 "T3"
* valueCodeableConcept.coding[+] = $SCT#1352966002 "Union for International Cancer Control cT3 (qualifier value)"
```

### Implementation notes

#### Observation.hasMember architecture

Using `hasMember` instead of `component` allows:

- **Temporal coherence**: each category keeps its own `effectiveDateTime`
- **Method tracking**: different assessment methods per category
- **Reusability**: Observations, once created, can be referenced multiple times
- **Audit trail**: complete history of who assessed what, when and how

#### Why not Observation.component?

Components cannot:

- Have different assessment dates
- Be reused across Observations
- Have their own performers or methods
- Represent the complex reality of mixed assessments

### Technical details

#### Profiles used

- [`mii-pr-onko-tnm-klassifikation`](StructureDefinition-mii-pr-onko-tnm-klassifikation.html) (main TNM grouping)
- [`mii-pr-onko-tnm-t-kategorie`](StructureDefinition-mii-pr-onko-tnm-t-kategorie.html) (T categories)
- [`mii-pr-onko-tnm-n-kategorie`](StructureDefinition-mii-pr-onko-tnm-n-kategorie.html) (N categories)
- [`mii-pr-onko-tnm-m-kategorie`](StructureDefinition-mii-pr-onko-tnm-m-kategorie.html) (M categories)

#### Extensions

- [`mii-ex-onko-tnm-cp-praefix`](StructureDefinition-mii-ex-onko-tnm-cp-praefix.html): for c/p prefixes
- [`mii-ex-onko-tnm-y-praefix`](StructureDefinition-mii-ex-onko-tnm-y-praefix.html): for post-therapy marking
- [`mii-ex-onko-tnm-r-praefix`](StructureDefinition-mii-ex-onko-tnm-r-praefix.html): for recurrence marking

### Example instances

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Breast-Cancer-Journey-Example.page.md gate=B -->
> The five staging time points are shipped as separate example instances; the structure view is found on the respective artefact page:
{: .ig-highlight .ig-highlight-grey}

- Initial clinical staging (cT3N1M0): [mii-exa-onko-tnm-clinical-cT3cN1cM0](Observation-mii-exa-onko-tnm-clinical-cT3cN1cM0.html)
- Mixed staging after biopsy (pT4cN1cM0): [mii-exa-onko-tnm-biopsy-cT4cN1cM0](Observation-mii-exa-onko-tnm-biopsy-cT4cN1cM0.html) <!-- TODO:REVIEW The source page pointed at "mii-exa-onko-tnm-mixed-pT4cN1cM0"; in the module the instance is named "mii-exa-onko-tnm-biopsy-cT4cN1cM0" (matched via date 2024-02-15 and stage IIIB). -->
- Post-chemotherapy staging (ycT2ycN0cM0): [mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0](Observation-mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0.html)
- Post-operative complete remission (ypT0ypN0cM0): [mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0](Observation-mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0.html)
- Recurrence after 3 years (rcT2N1M1): [mii-exa-onko-tnm-recurrence-rcT2cN1cM1](Observation-mii-exa-onko-tnm-recurrence-rcT2cN1cM1.html) <!-- TODO:REVIEW The source page pointed at "mii-exa-onko-tnm-recurrence-rcT2N1M1"; in the module the instance is named "mii-exa-onko-tnm-recurrence-rcT2cN1cM1". -->

### JSON representation

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Breast-Cancer-Journey-Example.page.md gate=B -->
> The full JSON and XML representation is available on each instance's artefact page:
{: .ig-highlight .ig-highlight-grey}

- Complete initial TNM classification: [mii-exa-onko-tnm-clinical-cT3cN1cM0](Observation-mii-exa-onko-tnm-clinical-cT3cN1cM0.html)
- T category with SNOMED coding: [mii-exa-onko-tnm-t-kategorie-cT3](Observation-mii-exa-onko-tnm-t-kategorie-cT3.html)
- Reused M category: [mii-exa-onko-tnm-m-kategorie-cM0](Observation-mii-exa-onko-tnm-m-kategorie-cM0.html)

### Clinical validation

This example structure was developed to represent the following clinical realities:

- **Biopsy upgrades**: only the T category is reassessed pathologically
- **Neoadjuvant response**: complete reassessment with the y prefix
- **Pathological complete remission**: ypT0ypN0 indicates a complete response
- **Distant metastasis assessment**: the M category often remains clinical, since distant metastases are rarely biopsied
- **Recurrence documentation**: new baseline with the r prefix after a disease-free interval

### References

- [GitHub Issue #189](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/189)
- [UICC TNM Classification 8th Edition](https://www.uicc.org/resources/tnm)
- [SNOMED CT UICC Qualifier Values](http://snomed.info/sct)

### Usage notes for implementers

1. **Create TNM components only on reassessment**: reuse existing Observations when no new assessment has taken place
2. **Use correct SNOMED codes**: the ConceptMaps [`mii-cm-onko-tnm-uicc-sct-clinical`](ConceptMap-mii-cm-onko-tnm-uicc-sct-clinical.html) and [`mii-cm-onko-tnm-uicc-sct-pathological`](ConceptMap-mii-cm-onko-tnm-uicc-sct-pathological.html) contain all mappings
3. **Document the temporal context**: the `effectiveDateTime` of each component should reflect the actual time of assessment
4. **Observe the prefix hierarchy**: y/r prefixes apply to the entire classification, c/p prefixes to individual categories

### Summary

This example demonstrates the full flexibility and expressiveness of the MII Onkologie TNM profiles. It shows how the FHIR architecture can precisely represent the complex reality of oncological staging processes while at the same time ensuring data integrity and reusability.
