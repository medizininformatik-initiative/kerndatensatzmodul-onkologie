<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-krk-abstand-anokutan-intro.md (de) -->

### Content

This profile describes the distance from the lower tumour margin to the anal verge in colorectal cancer according to oBDS KR1. This measurement is of particular importance for therapy planning in rectal cancer, since it influences the surgical strategy and the sphincter-preserving operative approach.

The profile is based on a FHIR Observation resource and uses LOINC for the standardised coding of the distance measurement. The distance is given as a Quantity value in centimetres.

---

### Links to other resources

The distance measurement to the anal verge is an important diagnostic observation:

- refers via `Observation.focus` to the primary diagnosis ([MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.html))
- refers via `Observation.subject` to the patient (Patient resource)
- can be linked via `Observation.encounter` to a specific episode of care

---

### oBDS context

The distance measurement corresponds to the oBDS data field KR1 "Abstand des Tumorunterrandes zur Anokutanlinie" and is documented in centimetres. This measurement is specific to rectal cancer and serves preoperative planning.

### Terminology binding

The profile uses LOINC code 33748-5 "Distance from anal verge" for the standardised coding of the distance measurement. The value is given as a UCUM-conformant Quantity in centimetres.

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Tumor-Anokutanlinie-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Tumor-Anokutanlinie-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Abstand Anokutan](StructureDefinition-mii-pr-onko-krk-abstand-anokutan.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-krk-abstand-tumor-anokutanlinie](Observation-mii-exa-onko-krk-abstand-tumor-anokutanlinie.html)
