<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-melanom-breslow-tiefe-intro.md (de) -->

### Content
This profile describes the Breslow tumor thickness in malignant melanoma of the skin according to oBDS MM2 "Breslow". Breslow depth is the most important prognostic factor for primary melanoma and describes the vertical tumor thickness in millimeters from the granular layer of the epidermis to the deepest point of tumor invasion.

The profile is based on a FHIR Observation resource and uses SNOMED CT for the standardized coding of the Breslow measurement. The tumor thickness is given as a Quantity value in millimeters.

---

### Links to other resources
Breslow depth is a central histopathological observation in melanoma:
- references the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor) via `Observation.focus`
- references the patient (Patient resource) via `Observation.subject`
- can be linked to a specific treatment case via `Observation.encounter`

---

### oBDS context
Breslow depth corresponds to the oBDS data field "Breslow" MM2 for tumor thickness in malignant melanoma and is documented in millimeters. This measurement is the most important prognostic factor and influences staging as well as the therapeutic approach.

### Terminology binding
The profile uses SNOMED CT code 106243009 "Breslow depth staging for melanoma of skin (observable entity)" for the standardized coding of the Breslow measurement. The value is given as a UCUM-conformant Quantity in millimeters.

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Breslow-Tiefe-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Uniform Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Breslow-Tiefe-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Melanom Breslow Tiefe](StructureDefinition-mii-pr-onko-melanom-breslow-tiefe.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-melanom-breslow-tiefe](Observation-mii-exa-onko-melanom-breslow-tiefe.html)
