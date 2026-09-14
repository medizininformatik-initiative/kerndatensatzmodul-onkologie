<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-tumorgroesse-intro.md (de) -->
This profile describes the tumour size in oncology, in particular in the context of breast carcinoma.
In the breast module of the oBDS the tumour size is given as the maximum diameter of the tumour in its largest dimension, in millimetres. The profile covers the oBDS breast fields **M7** (tumour size of the invasive carcinoma) and **M8** (tumour size of the DCIS). The distinction between invasive and DCIS results from the linked Condition resource.

Although the tumour size is frequently described by the T staging, it is nevertheless recorded and documented in various tumour entities, and it was therefore implemented as a generic tumour size observation.

---

Mapping of the [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

This profile is primarily designed for the **breast module** and maps to:
- **M7**: tumour size of the invasive carcinoma (maximum diameter of the invasive carcinoma in mm)
- **M8**: tumour size of the DCIS (maximum diameter of the DCIS in mm, if no invasive component is present)

---

**Examples**

[mii-exa-onko-mamma-tumorgroesse-1](Observation-mii-exa-onko-mamma-tumorgroesse-1.html)
