<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand-intro.md (de) -->

### Content
This profile describes the minimal safety margin to the primary tumor in malignant melanoma according to oBDS MM1. This measurement is performed after definitive surgical intervention and indicates the minimal distance of the melanoma to the nearest lateral surgical resection margin in the excision specimen. A value of 0 corresponds to a local R1 or R2 resection status.

The profile is based on a FHIR Observation resource and uses SNOMED CT for standardized coding of the safety margin measurement. The distance is given as a Quantity value in millimeters (mm).

---

### Links to other resources
The safety margin measurement is an important surgical observation in melanoma:
- refers via `Observation.focus` to the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor)
- refers via `Observation.subject` to the patient (Patient resource)
- can be linked via `Observation.encounter` to a specific treatment case

---

### oBDS context
The safety margin measurement corresponds to the oBDS data field MM1 "Minimal safety margin to the primary tumor" and is documented in millimeters. This measurement is essential for assessing the completeness of tumor resection and the prognosis in melanoma.

**Note on coding not-assessable cases:**
According to oBDS, the safety margin can take the following values:
- **-1**: not assessable → In FHIR, `dataAbsentReason` is used (e.g. "unknown" or "not-asked") instead of `valueQuantity`
- **0**: no safety margin (R1/R2 resection) → `valueQuantity.value = 0`
- **n**: safety margin in mm → `valueQuantity.value = n`

The profile contains an invariant ensuring that either `valueQuantity` or `dataAbsentReason` must be present.

### Terminology binding
The profile uses SNOMED CT code 396511007 "Distance of in situ melanoma from closest lateral surgical margin in excised specimen of skin (observable entity)" for standardized coding of the safety margin measurement. The value is given as a UCUM-compliant Quantity in millimeters (mm).

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Sicherheitsabstand-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Uniform Oncological Base Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Sicherheitsabstand-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Melanom Sicherheitsabstand](StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand.html).
{: .ig-highlight .ig-highlight-grey}

---

**Search parameters**

The following search parameters are relevant for the Melanoma Safety Margin profile, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-sicherheitsabstand```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://snomed.info/sct|396511007```

    Usage notes: Further information on searching by "Observation.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/test```

    Usage notes: Further information on searching by "Observation.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/primaertumor```

    Usage notes: Further information on searching by "Observation.focus" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "value-quantity" MUST be supported:

    Examples:

    ```GET [base]/Observation?value-quantity=5|http://unitsofmeasure.org|mm```

    Usage notes: Further information on searching by "Observation.value[x]" can be found in the [FHIR base specification - section "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

---
**Examples**

[mii-exa-onko-melanom-sicherheitsabstand](Observation-mii-exa-onko-melanom-sicherheitsabstand.html)
