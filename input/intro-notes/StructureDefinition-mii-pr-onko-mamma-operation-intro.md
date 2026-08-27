<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-mamma-operation-intro.md) -->

##

---

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
The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Operation SNOMED CT](ValueSet-mii-vs-onko-mamma-operation-sct.html).

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Operation SNOMED CT](ValueSet-mii-vs-onko-mamma-operation-sct.html).

#### ValueSet: MII VS Onko Mamma Operation OPS

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Operation OPS](ValueSet-mii-vs-onko-mamma-operation-ops.html).

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Operation OPS](ValueSet-mii-vs-onko-mamma-operation-ops.html).

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).

---

Mapping [Uniform Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md gate=B -->
The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Mamma Operation](StructureDefinition-mii-pr-onko-mamma-operation.html).

---

**Search parameters**

The following search parameters are relevant for the Breast Operation profile, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-intraoperatives-imaging-specimen```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Procedure?code=http://snomed.info/sct|392090004```

    Usage notes: Further information on searching by "Procedure.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Procedure?subject=Patient/test```

    Usage notes: Further information on searching by "Procedure.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "patient" MUST be supported:

    Examples:

    ```GET [base]/Procedure?patient=Patient/test```

    Usage notes: Further information on searching by "Procedure.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "reason-reference" MUST be supported:

    Examples:

    ```GET [base]/Procedure?reason-reference=Condition/primaertumor```

    Usage notes: Further information on searching by "Procedure.reasonReference" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "part-of" MUST be supported:

    Examples:

    ```GET [base]/Procedure?part-of=Procedure/hauptoperation```

    Usage notes: Further information on searching by "Procedure.partOf" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Procedure?date=2024-01-15```

    Usage notes: Further information on searching by "Procedure.performed[x]" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

---
**Examples**

`mii-exa-onko-mamma-operation-1` <!-- TODO:REVIEW example instance no longer present in the module; check reference -->
