<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen-intro.md (de) -->

### Content
This profile describes the number of tumor-positive biopsy cores in the prostate biopsy. This information is decisive for risk assessment and therapy planning, as it reflects the extent of tumor spread within the prostate.

The profile is based on a FHIR Observation resource and uses LOINC for coding. The value is given as a Quantity with the unit "piece".

---

### Links to other resources
The number of positive biopsy cores is an important biopsy parameter:
- refers via `Observation.focus` to the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor)
- refers via `Observation.subject` to the patient (Patient resource)
- can be linked via `Observation.partOf` to the corresponding biopsy procedure
- is related to the total number of biopsy cores (separate Observation)

---

### oBDS context
According to oBDS P5 (Anzahl der positiven Stanzen), the number of tumor-positive biopsy cores is documented. This information, together with the total number of biopsy cores, is essential for assessing tumor burden.

### Terminology binding
The LOINC code for the number of positive biopsy cores is bound **required**.

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Anzahl-Positive-Stanzen-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Uniform Oncological Base Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Anzahl-Positive-Stanzen-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Prostata Anzahl positiver Stanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-prostata-anzahl-positiver-stanzen-1](Observation-mii-exa-onko-prostata-anzahl-positiver-stanzen-1.html)
