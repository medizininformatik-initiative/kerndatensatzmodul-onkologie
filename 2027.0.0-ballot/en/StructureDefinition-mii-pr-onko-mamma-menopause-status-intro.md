<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-mamma-menopause-status-intro.md (de) -->

### Content
This profile describes the (pretherapeutic) menopausal status of a patient with breast cancer in oncology. Menopausal status is an important prognostic factor for treatment planning and therapy selection in breast cancer.

The profile is based on a FHIR Observation resource and uses SNOMED CT to code the observed characteristic (menopause function). The specific manifestations of menopausal status are defined via a dedicated ValueSet.

---

### Links to other resources
Menopausal status is an important tumor-specific observation:
- refers via `Observation.focus` to the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor)
- refers via `Observation.subject` to the patient (Patient resource)
- can be linked via `Observation.encounter` to a specific treatment case

---

### oBDS context
According to the current oBDS version 2021, perimenopausal status is implicitly subsumed under premenopausal. This convention is reflected in the FHIR profiling through the corresponding ValueSet.

### Terminology binding
The ValueSet for menopausal status is bound **extensible**. This means that the codes from the defined ValueSet SHOULD preferably be used, but other suitable codes MAY also be used if needed, should the predefined values not be sufficient.

#### ValueSet: MII VS Onko Mamma Menopause Status

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Menopause Status](ValueSet-mii-vs-onko-mamma-menopause-status.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Menopause Status](ValueSet-mii-vs-onko-mamma-menopause-status.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Menopausenstatus Mamma](StructureDefinition-mii-pr-onko-mamma-menopause-status.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-mamma-menopause-status-1](Observation-mii-exa-onko-mamma-menopause-status-1.html)
