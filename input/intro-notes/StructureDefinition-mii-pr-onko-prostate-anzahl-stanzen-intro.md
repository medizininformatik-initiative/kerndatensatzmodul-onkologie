<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen-intro.md) -->

##

---

### Content
This profile describes the total number of biopsy cores taken during prostate biopsy. This information is important for assessing the representativeness of the biopsy and interpreting the findings.

The profile is based on a FHIR Observation resource and uses LOINC for coding. The value is specified as a Quantity with the unit "piece".

---

### Links to other resources
The number of biopsy cores is an important biopsy parameter:
- references the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor) via `Observation.focus`
- references the patient (Patient resource) via `Observation.subject`
- can be linked to the corresponding biopsy Procedure via `Observation.partOf`

---

### oBDS context
According to oBDS P4.1, the total number of biopsy cores taken is documented. This information is essential for assessing the adequacy of the sample collection.

### Terminology binding
The LOINC code for the number of biopsy cores is bound as **required**.

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Anzahl-Stanzen-Observation.page.md gate=B -->
The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Anzahl-Stanzen-Observation.page.md gate=B -->
The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Prostata Anzahl Stanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen.html).

---

**Search parameters**

The following search parameters are relevant for the prostate biopsy core count profile:

1. The search parameter "_id" MUST be supported:

    ```GET [base]/Observation?_id=12345```

1. The search parameter "_profile" MUST be supported:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-stanzen```

1. The search parameter "code" MUST be supported:

    ```GET [base]/Observation?code=http://loinc.org|33747-0```

1. The search parameter "value-quantity" MUST be supported:

    ```GET [base]/Observation?value-quantity=gt10```

---
**Examples**

[mii-exa-onko-prostata-anzahl-stanzen-1](Observation-mii-exa-onko-prostata-anzahl-stanzen-1.html)
