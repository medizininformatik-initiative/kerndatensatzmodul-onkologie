<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-melanom-ulzeration-intro.md (de) -->

### Content
This profile describes ulceration in malignant melanoma of the skin according to oBDS MM4. Ulceration is an important histopathological criterion in melanoma and describes the presence of ulceration of the epidermis over the melanoma. The presence of ulceration is an independent prognostic factor and is required for TNM classification (in particular pT1b).

The profile is based on a FHIR Observation resource and uses LOINC for standardized coding of the ulceration. The assessment is made via a dedicated ValueSet with the oBDS-compliant options J (Yes), N (No) and U (Unknown).

---

### Links to other resources
The ulceration assessment is an important histopathological observation in melanoma:
- refers via `Observation.focus` to the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor)
- refers via `Observation.subject` to the patient (Patient resource)
- can be linked via `Observation.encounter` to a specific treatment case

---

### oBDS context
Ulceration corresponds to oBDS data field MM4 "Ulceration" and documents the presence of ulceration of the epidermis over the melanoma. This information is relevant to therapy and is an important feature of the tumor's biological behavior and prognosis.

### Terminology binding
The ValueSet for melanoma ulceration is bound as **required** and comprises the oBDS-compliant assessment options J (Yes), N (No) and U (Unknown). This corresponds to the strict terminology requirement for oBDS data fields.

#### ValueSet: MII VS Onko Melanom Ulzeration

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Ulzeration-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Melanom Ulzeration](ValueSet-mii-vs-onko-melanom-ulzeration.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Ulzeration-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Melanom Ulzeration](ValueSet-mii-vs-onko-melanom-ulzeration.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Ulzeration-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Ulzeration-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Melanom Ulzeration](StructureDefinition-mii-pr-onko-melanom-ulzeration.html).
{: .ig-highlight .ig-highlight-grey}

---

**Search parameters**

The following search parameters are relevant for the Melanom-Ulzeration profile, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-ulzeration```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|97816-3```

    Usage notes: Further information on searching by "Observation.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/test```

    Usage notes: Further information on searching by "Observation.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/primaertumor```

    Usage notes: Further information on searching by "Observation.focus" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?value-concept=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-melanom-ulzeration|J```

    Usage notes: Further information on searching by "Observation.value[x]" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

---
**Examples**

[mii-exa-onko-melanom-ulzeration](Observation-mii-exa-onko-melanom-ulzeration.html)
