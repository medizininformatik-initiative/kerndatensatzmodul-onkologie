<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-prostate-clavien-dindo-intro.md (de) -->

### Content
This profile describes the Clavien-Dindo score for prostatectomy in oncology. The Clavien-Dindo classification is a standardized system for assessing postoperative complications based on their severity and the therapy required.

The profile is based on a FHIR Observation resource and uses SNOMED CT to code the assessment method. It supports both the SNOMED CT Clavien-Dindo grades and the oBDS-specific codes for postoperative complications.

---

### Links to other resources
The Clavien-Dindo score is an important postoperative observation:
- refers via `Observation.focus[Diagnose]` to the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor)
- refers via `Observation.focus[Operation]` to the procedure performed (MII_PR_Onko_Operation)
- refers via `Observation.subject` to the patient (Patient resource)
- can be linked via `Observation.encounter` to a specific treatment case
- can be linked via `Observation.specimen` to corresponding tissue samples

---

### oBDS context
According to the oBDS, postoperative complications after prostatectomy are systematically captured. The Clavien-Dindo classification complements the oBDS coding with an internationally standardized assessment of complication severity.

### Terminology binding
The profile uses **required** bindings for both coding systems:

#### Assessment method
- **SNOMED CT**: 789278003 "Clavien-Dindo classification (assessment scale)"

#### Observation code
- **SNOMED CT**: 789279006 "Clavien-Dindo classification grade (observable entity)"

#### Clavien-Dindo ValueSet
The ValueSet comprises the SNOMED CT codes for all Clavien-Dindo grades:

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Clavien-Dindo-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Prostata Clavien Dindo](ValueSet-mii-vs-onko-prostata-clavien-dindo.html).
{: .ig-highlight .ig-highlight-grey}

#### oBDS postoperative complications ValueSet
In addition, oBDS-specific codes for postoperative complications are supported:

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Clavien-Dindo-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Prostata Postsurgical Complications](ValueSet-mii-vs-onko-prostata-postsurgical-complications.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Clavien-Dindo-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Clavien-Dindo-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Clavien Dindo](StructureDefinition-mii-pr-onko-prostate-clavien-dindo.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-prostata-surgical-complication-1](Observation-mii-exa-onko-prostata-surgical-complication-1.html)
