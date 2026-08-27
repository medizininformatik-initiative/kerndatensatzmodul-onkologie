<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-melanom-ldh-intro.md (de) -->

### Content
This profile describes the lactate dehydrogenase (LDH) laboratory values in malignant melanoma according to oBDS "LDH". LDH is an important prognostic marker in metastatic melanoma and is used to assess disease course and prognosis. Elevated LDH values correlate with a worse prognosis.

The profile is based on a FHIR Observation resource with category "laboratory" and uses LOINC for the standardized coding of the LDH determination. The value is given as a Quantity in Units per Liter (U/L).

---

### Links to other resources
The LDH determination is an important laboratory-chemical observation in melanoma:
- references the primary diagnosis via `Observation.focus` (MII_PR_Onko_Diagnose_Primaertumor)
- references the patient via `Observation.subject` (Patient resource)
- can be linked to a specific treatment case via `Observation.encounter`
- serves as a prognostic marker for therapy planning

---

### oBDS context
The LDH determination corresponds to the oBDS data field "LDH" for lactate dehydrogenase in malignant melanoma and is documented as a prognostic marker, in particular in metastatic disease. An assessment of LDH as normal or elevated is made in relation to laboratory-specific reference values.

### Terminology binding
The profile uses LOINC codes for the standardized coding of the LDH determination. The ValueSet comprises three different LDH-specific LOINC codes and is bound with **required** strength:

* 2532-0 "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma"
* 14804-9 "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Lactate to pyruvate reaction"
* 14805-6 "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Pyruvate to lactate reaction"

#### ValueSet: MII VS Onko Melanom LDH

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-LDH-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Melanom LDH](ValueSet-mii-vs-onko-melanom-ldh.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-LDH-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Melanom LDH](ValueSet-mii-vs-onko-melanom-ldh.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping of dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-LDH-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-LDH-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Melanom LDH](StructureDefinition-mii-pr-onko-melanom-ldh.html).
{: .ig-highlight .ig-highlight-grey}

---

**Search parameters**

The following search parameters are relevant for the Melanom-LDH profile, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-ldh```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|14805-6```

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

    ```GET [base]/Observation?value-quantity=280|http://unitsofmeasure.org|U/L```

    Usage notes: Further information on searching by "Observation.value[x]" can be found in the [FHIR base specification - section "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

---
**Examples**

[mii-exa-onko-melanom-ldh](Observation-mii-exa-onko-melanom-ldh.html)
