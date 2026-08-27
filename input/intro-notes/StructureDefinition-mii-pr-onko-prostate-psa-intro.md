<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-prostate-psa-intro.md) -->

##

---

### Content
This profile describes the PSA value (prostate-specific antigen) in patients with prostate carcinoma in oncology. The PSA value is a key tumor marker for diagnostics, follow-up, and therapy monitoring in prostate carcinoma.

The profile is based on a FHIR Observation resource and uses LOINC for coding the observed parameter. PSA values can be documented both as total PSA and as free PSA.

---

### Links to other resources
The PSA value is an important tumor-specific observation:
- references the primary diagnosis via `Observation.focus` (MII_PR_Onko_Diagnose_Primaertumor)
- references the patient via `Observation.subject` (Patient resource)
- can be linked to a specific treatment case via `Observation.encounter`

---

### oBDS context
According to oBDS P1, the PSA value is documented as a tumor marker for diagnostics and follow-up. Both diagnostic and follow-up PSA values can be recorded.

### Terminology binding
The ValueSet for PSA codes is bound with **required** strength, since LOINC codes for PSA determinations are standardized and uniquely defined.

#### PSA codes

- **Free PSA**: LOINC 10886-0 "Prostate specific antigen Free [Mass/volume] in Serum or Plasma"

---

Mapping of dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-PSA-Observation.page.md gate=B -->
The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-PSA-Observation.page.md gate=B -->
The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie PSA-Wert](StructureDefinition-mii-pr-onko-prostate-psa.html).

---

**Search parameters**

The following search parameters are relevant for the Prostata-PSA profile, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-psa```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|2857-1```

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

    ```GET [base]/Observation?value-quantity=gt5.0```

    Usage notes: Further information on searching by "Observation.value[x]" can be found in the [FHIR base specification - section "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

---
**Examples**

[mii-exa-onko-prostata-psa-diagnose-1](Observation-mii-exa-onko-prostata-psa-diagnose-1.html)

[mii-exa-onko-prostata-psa-verlauf-1](Observation-mii-exa-onko-prostata-psa-verlauf-1.html)
