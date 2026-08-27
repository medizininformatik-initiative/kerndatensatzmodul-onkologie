<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-asa-klassifikation-intro.md) -->
### Content
This profile describes the ASA classification (American Society of Anesthesiologists Physical Status Classification) in oncology. The ASA classification primarily serves preoperative risk assessment and is used to estimate the general physical condition of patients before surgical interventions. It can, however, also be used as a comorbidity index for systemic therapy decisions.

Originally taken from oBDS KR9 (colorectal carcinoma module), this profile was generalised for all oncological indications, because the ASA classification is a universal preoperative assessment tool.

The profile is based on a FHIR Observation resource and uses LOINC for the standardised coding of the ASA classification. The specific ASA classes (ASA I to VI) are defined via a dedicated oBDS value set.

---

### Links to other resources
The ASA classification is an important preoperative assessment:
- references the primary diagnosis via `Observation.focus` (MII_PR_Onko_Diagnose_Primaertumor)
- references the patient via `Observation.subject` (Patient resource)
- can be linked to a specific encounter via `Observation.encounter`

---

### oBDS context
The ASA classification corresponds to the oBDS data field KR9 "ASA-Klassifikation" and comprises the assessment levels ASA I to VI as well as "unknown" (U). The classification also takes brain-dead patients for organ donation into account (ASA VI).

### Terminology binding
The value set for the ASA classification is bound as **required**. This means that exclusively the codes from the defined oBDS value set MUST be used.

#### Value set: MII VS Onko ASA oBDS

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Allgemeiner-Leistungszustand/ASA-Klassifikation-Observation.page.md gate=B -->
The metadata and the expansion of the value set are shown on the page [mii-vs-onko-asa-obds](ValueSet-mii-vs-onko-asa-obds.html).

---

**Examples**

[mii-exa-onko-asa-klassifikation](Observation-mii-exa-onko-asa-klassifikation.html)
