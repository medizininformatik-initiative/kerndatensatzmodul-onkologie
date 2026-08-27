# Toronto Classification (Pediatric Oncology) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Toronto Classification (Pediatric Oncology)**

## Toronto Classification (Pediatric Oncology)

### Context and Purpose

The **TNM classification is not applicable to most childhood tumours**: cancers in childhood and adolescence are rare and heterogeneous, and they are mostly staged according to entity-specific staging systems. For the same disease, several competing systems exist whose use differs between countries and registries — international comparisons of stage distribution, survival and quality of care are therefore only possible to a limited extent.

The **Toronto Paediatric Cancer Stage Guidelines** (Toronto Guidelines for short) close this gap. They were developed at a consensus meeting in **October 2014 in Toronto** by 26 international experts from 17 countries and published in 2016 as **Paediatric cancer stage in population-based cancer registries: the Toronto consensus principles and guidelines** (Gupta et al., Lancet Oncol 2016;17:e163–e172). They are **endorsed by the UICC and were adopted as the chapter "Paediatric Tumours" into the TNM classification, 8th edition**.

The Toronto Guidelines are therefore **not a separate, competing classification system**, but an agreed rule for **which** established staging system a cancer registry should collect for each entity — and at what level of detail.

### Tier Structure

At the core of the guidelines is a tiered model that takes account of the differing resources available to cancer registries. Recommendations are given for **18 major childhood cancers**:

| | | |
| :--- | :--- | :--- |
| **Tier 1** | registries with limited resources | coarse staging without elaborate imaging |
| **Tier 2** | well-resourced registries | the established entity-specific staging system |
| **Tier 3** | optional | additional prognostic factors |

The **Tier 1 values are deliberately coarse, but not uniform across all entities**. For hepatoblastoma and rhabdomyosarcoma, for example, a distinction is made between **Localised** (tumour confined to the organ or area of origin including regional lymph nodes) and **Metastatic** (distant metastases present); non-Hodgkin lymphoma instead uses **Limited** and **Advanced** (involvement of bone marrow and/or CNS). A common value list spanning all entities therefore does not exist.

At **Tier 2** the guidelines refer to the respective established systems:

| | |
| :--- | :--- |
| Hepatoblastoma | PRETEXT |
| Osteosarcoma, Ewing sarcoma | as Tier 1 |
| Rhabdomyosarcoma | modified TNM plus favourable/unfavourable tumour site → stage I–IV |
| Soft tissue sarcoma (non-rhabdomyosarcoma) | TNM |
| Wilms tumour | two systems: after primary resection, or SIOP in the case of preoperative chemotherapy |
| Retinoblastoma | pathological classification after enucleation, or IRSS |
| Neuroblastoma | INRGSS (International Neuroblastoma Risk Group Staging System) |
| Medulloblastoma, ependymoma | dedicated Tier 2 system of the TNM chapter |
| Ovary | TNM/FIGO |
| Non-Hodgkin lymphoma | St. Jude/Murphy |
| Hodgkin lymphoma | Ann Arbor or Lugano (as in adults) |

Germany is to be classified as a **well-resourced registry**; **Tier 2** is therefore the relevant level.

### Relevance for the Oncology Module

The **oBDS** is tailored to adult oncology and provides for the TNM classification as the primary staging attribute. Paediatric staging systems are represented there via the field **"Weitere Klassifikationen"** (other classifications, oBDS chapter 09), which records the classification name and the stage as free text.

The population-based recording of cancers in children and adolescents in Germany is additionally carried out by the **German Childhood Cancer Registry (DKKR)** at the IMBEI of the University Medical Center Mainz, which has been operating since 1980 and to which around 2,200 new cases from the institutions of the **GPOH** are reported each year. For analyses intended to connect to this environment, the Toronto system is the authoritative international frame of reference.

### Status in the Module (v2027)

For version 2027, the module contains **only this explanatory page**. A dedicated profile representation — for instance a generic staging profile with entity-dependent value lists and invariants — has been **deliberately deferred** (v2028 at the earliest). A prerequisite for this is an agreement with the childhood cancer registry on which staging systems are actually maintained there and whether a FHIR representation beyond the oBDS is needed.

Until then, paediatric stages are to be represented via the existing generic profile **[`MII_PR_Onko_Weitere_Klassifikationen`](StructureDefinition-mii-pr-onko-weitere-klassifikationen.md)** (`mii-pr-onko-weitere-klassifikationen`):

| | |
| :--- | :--- |
| `code.text` | name of the classification system as free text (mandatory), e.g. "INRGSS" |
| `code.coding.code`/`method` | coded indication of the system, where available (binding`preferred`) |
| `valueCodeableConcept.text` | stage as text, e.g. "L2" |
| `effectiveDateTime` | date of the classification |
| `focus` | reference to the primary tumour diagnosis |

Some of the Tier 2 systems named above can already be addressed in coded form via the ValueSet [`mii-vs-onko-weitere-klassifikationen`](ValueSet-mii-vs-onko-weitere-klassifikationen.md), among them INRGSS (SNOMED CT `1287643004`), the Stannard system for retinoblastoma (SNOMED CT `254366002`), **Modified Chang Staging System for Medulloblastoma** (NCIt `C198826`) and the **Lugano Classification Childhood Hodgkin Lymphoma** (NCIt `C141178`).

### Limits of the Current Representation

* **No dedicated CodeSystem** for the Toronto Guidelines in the module; the tier level itself cannot be represented in any element.
* **No binding terminology binding**: both `code.coding.code`/`method` and `valueCodeableConcept.coding` bind as `preferred`.
* **No stage values**: the ValueSet [`mii-vs-onko-weitere-klassifikationen-auspraegungen`](ValueSet-mii-vs-onko-weitere-klassifikationen-auspraegungen.md) is fed from the oBDS CodeSystem and contains no paediatric stages (no PRETEXT, St. Jude/Murphy, IRSS, COG/SIOP). These are to be transmitted as text.
* **No invariants** that tie permissible stage values to the entity of the referenced diagnosis — plausibility is currently not machine-checkable.

### Outlook

The 2014 guidelines were revised by an international expert panel at the **IARC**; in parallel, the **Paediatric Non-Stage Prognosticator (NSP) Guidelines** were created for 18 cancers in children under 15 years of age (Lancet Oncol, 2020). The **SEER programme** bases its paediatric staging elements on the **Toronto Guidelines version 2** and provides them for diagnoses from **1 January 2025**. A later profile representation in the module should build on version 2.

### Sources

* Gupta S. et al.: **Paediatric cancer stage in population-based cancer registries: the Toronto consensus principles and guidelines.** Lancet Oncol 2016;17:e163–e172. DOI: 10.1016/S1470-2045(16)30186-3
* Aitken J. F. et al.: **Assessing the feasibility and validity of the Toronto Childhood Cancer Stage Guidelines: a population-based registry study.** Lancet Child Adolesc Health 2018;2(3):173–179. DOI: 10.1016/S2352-4642(18)30023-3
* UICC: **TNM Classification of Malignant Tumours**, 8th edition, chapter "Paediatric Tumours"
* ENCR training material **Coding stage: Toronto Paediatric Cancer Stage Guidelines** (L. Van Eycken, November 2019)
* IARC: **Development of Paediatric Non-Stage Prognosticator Guidelines … and updates to the 2014 Toronto Paediatric Cancer Stage Guidelines**
* [SEER Pediatric Staging](https://seer.cancer.gov/tools/staging/pediatric/)
* [German Childhood Cancer Registry](https://www.kinderkrebsregister.de/)

