<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-prostate-gleason-patterns-intro.md) -->

### Content
This profile describes the individual Gleason patterns (primary, secondary, tertiary) in the histopathological grading of prostate carcinoma. The Gleason patterns form the basis for calculating the Gleason score and are decisive for prognosis assessment.

The profile is based on a FHIR Observation resource and uses LOINC for coding the different pattern types. Each pattern is scored with a value of 1-5, whereby patterns ≥3 are considered malignant.

---

### Links to other resources
The Gleason patterns are important histopathological observations:
- references the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor) via `Observation.focus`
- references the patient (Patient resource) via `Observation.subject`
- can be linked to a specific treatment case via `Observation.encounter`
- can be linked to the corresponding biopsy Procedure via `Observation.partOf`

---

### oBDS context
According to oBDS P2, Gleason patterns are documented as primary, secondary, or tertiary pattern. The pattern values of 1-5 correspond to the international Gleason grading, whereby patterns from grade 3 upward are classified as malignant.

### Terminology binding
The ValueSet for Gleason pattern codes has a **required** binding, since the LOINC codes for Gleason patterns are standardized.

#### ValueSet: MII VS Onko Prostata Gleason Patterns

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Patterns-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Prostata Gleason Patterns](ValueSet-mii-vs-onko-prostata-gleason-patterns.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Patterns-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Prostata Gleason Patterns](ValueSet-mii-vs-onko-prostata-gleason-patterns.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Patterns-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Uniform Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Patterns-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Prostata Gleason Pattern](StructureDefinition-mii-pr-onko-prostate-gleason-patterns.html).
{: .ig-highlight .ig-highlight-grey}

---

**Search parameters**

The following search parameters are relevant for the Prostata-Gleason-Patterns profile, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns```

1. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|44641-9```

1. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/test```

1. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/primaertumor```

1. The search parameter "value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?value-concept=http://snomed.info/sct|369771007```

---
**Examples**

[mii-exa-onko-prostata-gleason-pattern-primary-1](Observation-mii-exa-onko-prostata-gleason-pattern-primary-1.html)

[mii-exa-onko-prostata-gleason-pattern-secondary-1](Observation-mii-exa-onko-prostata-gleason-pattern-secondary-1.html)
