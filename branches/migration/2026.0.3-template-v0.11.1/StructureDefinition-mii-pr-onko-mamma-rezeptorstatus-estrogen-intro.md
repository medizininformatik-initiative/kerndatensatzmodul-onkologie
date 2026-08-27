<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen-intro.md (de) -->

### Content

The **estrogen receptor status profile** documents the diagnostic estrogen receptor status of a pathologically examined specimen in breast cancer. This profile enables the detailed recording of both the quantitative measured values (proportion of positive cells, staining intensity) and the interpreted results according to various definitions.

The estrogen receptor status is a key prognostic and predictive biomarker in breast cancer and is decisive for therapy planning, in particular with regard to anti-hormonal therapy.

---

### Links to other resources

The profile is closely linked to other oncology resources:
- references the primary diagnosis via `Observation.focus` (MII_PR_Onko_Diagnose_Primaertumor)
- references the patient via `Observation.subject` (Patient resource)
- can be linked to a specific treatment case via `Observation.encounter`

---

### oBDS context

The profile implements the **oBDS data fields for the estrogen receptor status** in breast cancer. It should be noted that the [oBDS Mamma was originally published in 2015](https://www.basisdatensatz.de/download/Brust.pdf) and the methodology has been subject to considerable changes since then.

**Historical vs. current practice:**
- **IRS (Immunreactive Score)**: Was still used in 2015, but is no longer in broad clinical use today, although it remains relevant for registry data
- **Thresholds**: Modern pathological practice begins positivity already at >1% positive cells (instead of the historical 10% threshold)
- **Evaluation approaches**: Current S3 guidelines use definitions that differ from the original oBDS

**Modeling compromise**: The profile proposed here represents a compromise between older registry data, which is required by the current registry framework, and the changes in clinical and pathological practice.

**Note for commenting**: It should be discussed whether a separate profile for the IRS (Immunreactive Score) should be added in order to fully represent historical data.

### Terminology binding

The profile uses a **dual coding strategy** with **extensible** binding. This means that codes from the defined ValueSets SHOULD be used preferentially, but other suitable codes MAY also be used if needed.

#### ValueSet: MII VS Onko Mamma Rezeptorstatus oBDS

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Rezeptorstatus oBDS](ValueSet-mii-vs-onko-mamma-rezeptorstatus-obds.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Rezeptorstatus oBDS](ValueSet-mii-vs-onko-mamma-rezeptorstatus-obds.html).
{: .ig-highlight .ig-highlight-grey}

#### ValueSet: MII VS Onko Mamma Rezeptorstatus Leitlinie

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Rezeptorstatus Leitlinie](ValueSet-mii-vs-onko-mamma-rezeptorstatus-leitlinie.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Rezeptorstatus Leitlinie](ValueSet-mii-vs-onko-mamma-rezeptorstatus-leitlinie.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping of dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Rezeptorstatus Estrogen](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.html).
{: .ig-highlight .ig-highlight-grey}

---

**Search parameters**

The following search parameters are relevant for the Mamma-Estrogen-Rezeptorstatus profile, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-rezeptorstatus-estrogen```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|40556-3```

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

    ```GET [base]/Observation?value-concept=http://snomed.info/sct|416053008```

    Usage notes: Further information on searching by "Observation.value[x]" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "component-code" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-code=http://snomed.info/sct|1234804006```

    Usage notes: Further information on searching by "Observation.component.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "component-value-quantity" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-value-quantity=gt50```

    Usage notes: Further information on searching by "Observation.component.value[x]" can be found in the [FHIR base specification - section "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

---
**Examples**

[mii-exa-onko-mamma-rezeptorstatus-estrogen-1](Observation-mii-exa-onko-mamma-rezeptorstatus-estrogen-1.html)
