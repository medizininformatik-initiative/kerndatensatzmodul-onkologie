<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-prostate-gleason-grade-group-intro.md) -->

##

---

### Content
This profile describes the Gleason Score and the corresponding Grade Group in the histopathological grading of prostate cancer. The Gleason Score results from the sum of the primary and secondary Gleason Pattern, while the Grade Group (1-5) represents an international standard classification.

The profile is based on a FHIR Observation resource and uses LOINC for coding. The Grade Group is documented as a component of the Observation.

---

### Links to other resources
The Gleason Score is a central histopathological assessment:
- refers via `Observation.focus` to the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor)
- refers via `Observation.subject` to the patient (Patient resource)
- can be linked via `Observation.encounter` to a specific treatment case
- can be linked via `Observation.partOf` to the corresponding biopsy procedure
- can reference the individual Gleason Pattern Observations via `Observation.hasMember`

---

### oBDS context
According to oBDS P3, the Gleason Score is documented as the sum of the primary and secondary pattern. The Grade Group represents a modern international classification that is standard in current oncological practice.

### Terminology binding
The ValueSet for Gleason Score codes is bound **required**. The Grade Group codes are likewise bound **required**, since they are internationally standardized.

#### ValueSet: MII VS Onko Prostata Gleason Score

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
The codes it contains are listed in the artefact view: [MII VS Onkologie Prostata Gleason Score](ValueSet-mii-vs-onko-prostata-gleason-score.html).

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
The codes it contains are listed in the artefact view: [MII VS Onkologie Prostata Gleason Score](ValueSet-mii-vs-onko-prostata-gleason-score.html).

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).

---

Mapping [Uniform Oncological Base Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Prostata Gleason Grade Group](StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.html).

---

**Search parameters**

The following search parameters are relevant for the Prostate Gleason Score Grade Group profile, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-grade-group```

1. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|44642-7```

1. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/test```

1. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/primaertumor```

1. The search parameter "value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?value-concept=http://snomed.info/sct|369771007```

1. The search parameter "component-code" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-code=http://loinc.org|79892-6```

    Usage notes: For searching by the Grade Group component.

---
**Examples**

[mii-exa-onko-prostata-gleason-pattern-grade-group-1](Observation-mii-exa-onko-prostata-gleason-pattern-grade-group-1.html)
