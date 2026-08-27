<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz-intro.md (de) -->

### Content
This profile describes the occurrence of anastomotic leakage in colorectal carcinoma according to oBDS KR8. Anastomotic leakage is an important postoperative complication after colorectal resections and has an impact on prognosis and further therapy planning.

The profile is based on a FHIR Observation resource and uses a dedicated ValueSet for coding the occurrence and severity of the anastomotic leakage.

---

### Links to other resources
The anastomotic leakage assessment is an important postoperative observation:
- references the primary diagnosis via `Observation.focus` (MII_PR_Onko_Diagnose_Primaertumor)
- references the patient via `Observation.subject` (Patient resource)
- can be linked to a specific treatment case via `Observation.encounter`
- relates to the performed operation (Procedure resource)

---

### oBDS context
Anastomotic leakage corresponds to the oBDS data field KR8 "Anastomoseninsuffizienz" and documents the occurrence of this postoperative complication after colorectal procedures with creation of an anastomosis.

### Terminology binding
The ValueSet for anastomotic leakage is bound with **required** strength and includes the codes for the occurrence as well as the grading of the leakage.

#### ValueSet: MII VS Onko KRK Anastomoseninsuffizienz

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Anastomoseninsuffizienz-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie KRK Anastomoseninsuffizienz](ValueSet-mii-vs-onko-krk-anastomoseninsuffizienz.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Anastomoseninsuffizienz-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie KRK Anastomoseninsuffizienz](ValueSet-mii-vs-onko-krk-anastomoseninsuffizienz.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping of dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Anastomoseninsuffizienz-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Anastomoseninsuffizienz-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie KRK Anastomoseninsuffizienz](StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-krk-anastomoseninsuffizienz](Observation-mii-exa-onko-krk-anastomoseninsuffizienz.html)
