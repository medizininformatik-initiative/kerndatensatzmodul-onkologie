<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-mamma-her2neu-status-intro.md) -->

### Content

The **HER2/neu Status Profile** documents the diagnostic HER2/neu status of a pathologically examined specimen in breast cancer. HER2/neu (also HER2 or ERBB2) is an important prognostic and predictive biomarker that determines eligibility for anti-HER2-targeted therapy.

The HER2/neu status is based on **immunohistochemical (IHC) staining** and, for certain findings, additionally on **in situ hybridization (ISH, e.g. FISH or CISH)**. Determination follows the ASCO/CAP guidelines and the requirements of the S3 guideline on breast cancer.

---

### Clinical background

HER2/neu determination is essential for therapy planning in breast cancer:

- **HER2-positive tumors** (approx. 15-20% of breast cancers) benefit from anti-HER2 therapies such as trastuzumab, pertuzumab or T-DM1
- **HER2-low tumors** show low HER2 expression and may benefit from newer therapies such as trastuzumab deruxtecan (based on the DESTINY-Breast04/06 trials)
- **HER2-negative tumors** do not receive anti-HER2-targeted therapy

---

### HER2/neu determination according to ASCO/CAP

HER2/neu determination is a multi-step process:

![her2neu-1](her2neu-1.png)

**Figure 1**: HER2/neu determination algorithm according to ASCO/CAP guidelines. The initial IHC staining leads to ISH testing for 2+ findings.

![her2neu-2](her2neu-2.png)

**Figure 2**: Interpretation of HER2/neu results and classification into HER2-positive, HER2-low, HER2-ultralow and HER2-negative.

#### IHC scores:
- **3+**: Strong, complete membrane staining in >10% of tumor cells → HER2-positive
- **2+**: Weak to moderate, complete membrane staining in >10% of tumor cells → ISH testing required
- **1+**: Weak, incomplete membrane staining in >10% of tumor cells → HER2-low (if ISH-negative or without ISH)
- **0**: No staining or membrane staining in ≤10% of tumor cells

#### ISH testing (FISH, CISH, etc.):
- **Positive**: HER2/CEP17 ratio ≥2.0 or HER2 copy number ≥6.0 per cell
- **Negative**: HER2/CEP17 ratio <2.0 and HER2 copy number <4.0 per cell
- **Equivocal**: Borderline findings that require retesting

The Molecular Tumor Board module offers more fine-grained profiles for representing the IHC and ISH data points within a molecular pathology findings report.
---

### Links to other resources

The profile is closely linked to other oncology resources:
- refers via `Observation.focus` to the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor)
- refers via `Observation.subject` to the patient (Patient resource)
- can be linked via `Observation.encounter` to a specific treatment case

---

### oBDS context and dual coding

The profile implements the **oBDS data fields for the HER2/neu status** (field M4, no. 243) in breast cancer. A **dual coding strategy** is used to accommodate both the frozen oBDS specification and the newer S3 guidelines and ASCO/CAP guidelines.

#### oBDS definition (based on guideline 3.0 specification):
The oBDS coding uses letter codes that correspond exactly to the published specification:
- **P** = Positive (IHC 3+ or IHC 2+ and ISH positive)
- **N** = Negative
- **U** = Unknown

#### S3 guideline/ASCO-CAP definition (current guideline version 5.1):
The modern classification additionally takes into account the **HER2-low** and **HER2-ultralow** categories:
- **HER2-positive**: IHC 3+ or IHC 2+ and ISH-positive
- **HER2-low**: IHC 1+ or IHC 2+ and ISH-negative
- **HER2-ultralow**: IHC 0 with membrane staining
- **HER2-negative**: IHC 0 without membrane staining
- **Equivocal**: Borderline, further testing required

This dual coding enables **backward compatibility** with existing oBDS registry data while also enabling **forward compatibility** with newer therapeutic developments (e.g. trastuzumab deruxtecan for HER2-low).

---

### Terminology binding

The profile uses a **dual coding strategy** with **extensible** binding for `valueCodeableConcept`. This means that codes from both ValueSets MAY be used in parallel.

#### ValueSet: MII VS Onko Mamma Her2neu Status oBDS

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Her2neu-Status-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Her2neu Status oBDS](ValueSet-mii-vs-onko-mamma-her2neu-status-obds.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Her2neu-Status-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Her2neu Status oBDS](ValueSet-mii-vs-onko-mamma-her2neu-status-obds.html).
{: .ig-highlight .ig-highlight-grey}

#### ValueSet: MII VS Onko Mamma Her2neu Status Leitlinie

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Her2neu-Status-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Her2neu Status Leitlinie](ValueSet-mii-vs-onko-mamma-her2neu-status-leitlinie.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Her2neu-Status-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Her2neu Status Leitlinie](ValueSet-mii-vs-onko-mamma-her2neu-status-leitlinie.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Her2neu-Status-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Her2neu-Status-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Her2neu Status](StructureDefinition-mii-pr-onko-mamma-her2neu-status.html).
{: .ig-highlight .ig-highlight-grey}

---

**Search parameters**

The following search parameters are relevant for the Mamma-Her2neu-Status profile, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-her2neu-status```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|48676-1```

    Usage notes: Further information on searching by "Observation.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/test```

    Usage notes: Further information on searching by "Observation.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "patient" MUST be supported:

    Examples:

    ```GET [base]/Observation?patient=Patient/test```

    Usage notes: Further information on searching by "Observation.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/primaertumor```

    Usage notes: Further information on searching by "Observation.focus" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?value-concept=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-obds|P```

    Usage notes: Further information on searching by "Observation.value[x]" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "component-code" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-code=http://loinc.org|85319-2```

    Usage notes: Further information on searching by "Observation.component.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

---
**Examples**

[mii-exa-onko-mamma-her2neu-status](Observation-mii-exa-onko-mamma-her2neu-status.html)
