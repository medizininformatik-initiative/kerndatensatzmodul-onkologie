<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-krk-abstand-aboral-intro.md (de) -->

### Content
This profile describes the minimum distance of the aboral tumor margin to the aboral resection margin in colorectal carcinoma according to oBDS KR2. This measurement is crucial for assessing the R classification and the risk of local recurrence in rectal carcinomas.

The profile is based on a FHIR Observation resource and uses a dedicated ValueSet to specify the aboral resection plane. The distance is specified as a Quantity value in millimeters.

---

### Links to other resources
The aboral resection margin measurement is an important pathological observation:
- references the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor) via `Observation.focus`
- references the patient (Patient resource) via `Observation.subject`
- can be linked to a specific treatment case via `Observation.encounter`

---

### oBDS context
The distance measurement corresponds to the oBDS data field KR2 "Minimum distance of the aboral tumor margin to the aboral resection margin" and is documented in millimeters. This measurement is of particular prognostic importance in rectal carcinomas.

### Terminology binding
The ValueSet for the aboral resection line is bound as **extensible** and specifies the various aspects of determining the aboral resection margin.

#### ValueSet: MII VS Onko KRK Abstand Resektionslinie Aboral

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Resektionsrand-Aboral-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie KRK Abstand Resektionslinie Aboral](ValueSet-mii-vs-onko-krk-abstand-resektionslinie-aboral.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Resektionsrand-Aboral-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie KRK Abstand Resektionslinie Aboral](ValueSet-mii-vs-onko-krk-abstand-resektionslinie-aboral.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Resektionsrand-Aboral-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Resektionsrand-Aboral-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Abstand Aboral](StructureDefinition-mii-pr-onko-krk-abstand-aboral.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-krk-abstand-resektionsrand-aboral](Observation-mii-exa-onko-krk-abstand-resektionsrand-aboral.html)
