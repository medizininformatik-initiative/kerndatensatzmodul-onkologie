<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron-intro.md (de) -->

### Content

The **Progesterone Receptor Status Profile** documents the diagnostic progesterone receptor status of a pathologically examined sample in breast cancer. This profile enables the detailed capture of both the quantitative measurements (proportion of positive cells, staining intensity) and the interpreted results according to various definitions.

Progesterone receptor status is an important prognostic and predictive biomarker in breast cancer and complements the estrogen receptor status for therapy planning, in particular regarding anti-hormonal therapy.

---

### Links to other resources

The profile is closely linked to other oncological resources:
- refers via `Observation.focus` to the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor)
- refers via `Observation.subject` to the patient (Patient resource)
- can be linked via `Observation.encounter` to a specific treatment case

---

### oBDS context

The profile implements the **oBDS data fields for progesterone receptor status** in breast cancer. Note that the [oBDS Mamma was originally published in 2015](https://www.basisdatensatz.de/download/Brust.pdf) and the methodology has undergone significant changes since then.

**Historical vs. current practice:**
- **IRS (Immunreactive Score)**: Was still used in 2015, but is no longer in broad clinical use today, although still relevant for registry data
- **Thresholds**: Modern pathological practice starts positivity already at >1% positive cells (instead of the historical 10% threshold)
- **Assessment approaches**: Current S3 guidelines use different definitions than the original oBDS

**Modeling compromise**: The profile proposed here represents a compromise between older registry data, which is required by the current registry framework, and the changes in clinical and pathological practice.

**Commenting note**: It is to be discussed whether a separate profile for the IRS (Immunreactive Score) should be added in order to fully represent historical data.

### Terminology binding

The profile uses a **dual coding strategy** with **extensible** binding. This means that codes from the defined ValueSets SHOULD preferably be used, but other suitable codes MAY also be used if needed.

#### ValueSet: MII VS Onko Mamma Rezeptorstatus oBDS

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Progesteron-Rezeptorstatus-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Rezeptorstatus oBDS](ValueSet-mii-vs-onko-mamma-rezeptorstatus-obds.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Progesteron-Rezeptorstatus-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Rezeptorstatus oBDS](ValueSet-mii-vs-onko-mamma-rezeptorstatus-obds.html).
{: .ig-highlight .ig-highlight-grey}

#### ValueSet: MII VS Onko Mamma Rezeptorstatus Leitlinie

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Progesteron-Rezeptorstatus-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Rezeptorstatus Leitlinie](ValueSet-mii-vs-onko-mamma-rezeptorstatus-leitlinie.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Progesteron-Rezeptorstatus-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Rezeptorstatus Leitlinie](ValueSet-mii-vs-onko-mamma-rezeptorstatus-leitlinie.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Progesteron-Rezeptorstatus-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Uniform Oncological Base Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Progesteron-Rezeptorstatus-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Rezeptorstatus Progesteron](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-mamma-rezeptorstatus-progesteron-1](Observation-mii-exa-onko-mamma-rezeptorstatus-progesteron-1.html)
