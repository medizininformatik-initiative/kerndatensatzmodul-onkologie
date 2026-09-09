<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-mamma-operation-intro.md (de) -->

### Content

The **Breast Operation profile** documents surgical procedures on the breast in the context of breast cancer treatment. This profile extends the general MII_PR_Onko_Operation profile with breast-specific aspects and enables the detailed capture of breast surgery procedures.

The profile supports both breast-conserving therapies and mastectomies as well as accompanying procedures such as lymph node removal and the use of intraoperative aids.

**Comment note**: It remains to be discussed whether preoperative marking should be modeled as a separate extra resource (as currently implemented) or simply as a usedCode with preoperative and intraoperative slices.

---

### Links to other resources

The profile is closely linked to other oncological resources:
- references the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor) via `Procedure.reasonReference`
- references the patient (Patient resource) via `Procedure.subject`
- can be linked to parent operations via `Procedure.partOf`
- can be linked to a specific treatment case via `Procedure.encounter`

---

### oBDS context

The profile implements **breast-specific operation data** as an extension of the general oBDS operation dataset (section 13). Breast surgery comprises various procedures:

**Surgical procedures:**
- **Breast-conserving therapy (BET)**: Lumpectomy, segmental resection, quadrantectomy
- **Mastectomy**: Simple, modified radical, radical mastectomy
- **Lymph node surgery**: Sentinel lymph node biopsy, axillary dissection
- **Reconstructive procedures**: Immediate reconstruction, secondary reconstruction

**Intraoperative aids:**
- **Wire markings**: Preoperative localization of non-palpable tumors
- **Seed markings**: Radioactive marking for tumor localization
- **Marking clips**: Orientation aids for follow-up care
- **Intraoperative imaging**: Specimen radiography, ultrasound

### Terminology binding

The profile uses a **dual coding strategy** with SNOMED CT and OPS:

#### ValueSet: MII VS Onko Mamma Operation SNOMED CT

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Operation SNOMED CT](ValueSet-mii-vs-onko-mamma-operation-sct.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Operation SNOMED CT](ValueSet-mii-vs-onko-mamma-operation-sct.html).
{: .ig-highlight .ig-highlight-grey}

#### ValueSet: MII VS Onko Mamma Operation OPS

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Operation OPS](ValueSet-mii-vs-onko-mamma-operation-ops.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Operation OPS](ValueSet-mii-vs-onko-mamma-operation-ops.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Uniform Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Mamma Operation](StructureDefinition-mii-pr-onko-mamma-operation.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

`mii-exa-onko-mamma-operation-1` <!-- TODO:REVIEW example instance no longer present in the module; check reference -->
