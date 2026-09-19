<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-prostate-gleason-grade-group-intro.md (de) -->

### Content
This profile describes the Gleason Score and the corresponding Grade Group in the histopathological grading of prostate cancer. The Gleason Score results from the sum of the primary and secondary Gleason Pattern, while the Grade Group (1-5) represents an international standard classification.

The profile is based on a FHIR Observation resource. `Observation.code` is coded in SNOMED CT (mandatory slice, ISUP observable 1812491000004107) with an optional secondary LOINC coding (94734-1, GitHub issue #259). Score and grade group are documented as `valueCodeableConcept`.

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
According to oBDS P1 (Gleason-Score), the Gleason Score is documented as the sum of the primary and secondary pattern. The Grade Group represents a modern international classification that is standard in current oncological practice.

### Terminology binding
The ValueSet for Gleason Score codes is bound **required**. The Grade Group codes are likewise bound **required**, since they are internationally standardized.

#### ValueSet: MII VS Onko Prostata Gleason Score

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Prostata Gleason Score](ValueSet-mii-vs-onko-prostata-gleason-score.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Prostata Gleason Score](ValueSet-mii-vs-onko-prostata-gleason-score.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Uniform Oncological Base Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Prostata Gleason Grade Group](StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-prostata-gleason-pattern-grade-group-1](Observation-mii-exa-onko-prostata-gleason-pattern-grade-group-1.html)
