<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung-intro.md (de) -->

### Content

The **Mamma Preoperative Marking Profile** documents radiologically performed markings of tumor tissue in the breast prior to surgical procedures. This profile is based on the FHIR Procedure resource and captures various marking modalities used for the precise localization of tumor tissue.

Preoperative marking is an important part of breast-conserving therapy and enables surgeons to precisely localize and completely remove non-palpable lesions.

---

### Links to other resources

The profile is closely linked to other oncology resources:
- refers via `Procedure.partOf` to the parent operation (MII_PR_Onko_Operation)
- refers via `Procedure.subject` to the patient (Patient resource)
- can be linked via `Procedure.encounter` to a specific treatment case

---

### oBDS context

The profile implements **breast-specific marking procedures** as an extension of the general oBDS operation dataset. Preoperative marking is particularly relevant for:

**Clinical applications:**
- **Breast-conserving therapy**: precise localization of non-palpable tumors
- **Multifocal tumors**: marking of multiple tumor foci
- **Re-excision**: marking for R1 resections
- **Quality assurance**: documentation of marking quality

**Marking modalities (currently in the ValueSet):**
- **Wire marking with ultrasound guidance**: SNOMED CT 433222002
- **Marker insertion with X-ray guidance**: SNOMED CT 836381000000102
- **Wire marking with MRI guidance**: SNOMED CT 911831000000104

**Further clinically relevant modalities (not yet in the ValueSet):**
- **Radioactive seed marking**: radioactive seeds for localization
- **Magnetic seed marking**: modern wireless procedures (e.g. Magseed®)
- **Clip marking**: metal clips for orientation

*Note: The current ValueSet focuses on imaging-guided wire and marker procedures. Modern seed-based procedures could be added in future versions.*

### Terminology binding

The profile uses **extensible binding** for marking modalities directly on `Procedure.code`:

#### ValueSet: MII VS Onko Mamma Präoperative Markierung Modalität

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Praeoperative-Markierung-Procedure.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Präoperative Markierung Modalität](ValueSet-mii-vs-onko-mamma-praeoperative-markierung-modalitaet.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Praeoperative-Markierung-Procedure.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Präoperative Markierung Modalität](ValueSet-mii-vs-onko-mamma-praeoperative-markierung-modalitaet.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Praeoperative-Markierung-Procedure.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Praeoperative-Markierung-Procedure.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Präoperative Markierung Mamma](StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-mamma-praeoperative-markierung-1](Procedure-mii-exa-onko-mamma-praeoperative-markierung-1.html)
