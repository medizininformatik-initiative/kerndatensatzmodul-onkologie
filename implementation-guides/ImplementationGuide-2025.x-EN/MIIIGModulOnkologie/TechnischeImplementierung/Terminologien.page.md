---
parent: 
---
## Terminologies

### **ICD-10 GM**
The International Statistical Classification of Diseases and Related Health Problems Version 10 German Modification (ICD-10-GM) is used for the description of the primary diagnosis, for pre-existing conditions, and for coding the cause of death. The BfArM publishes the ICD-10-GM annually on behalf of the Federal Ministry of Health. The current version is available here: https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-GM/_node.html

Note: In the oBDS, a cause of death report is provided using ICD-10-GM. According to BfArM, a cause of death should be coded with ICD-10-WHO (see here).
The oncology extension module follows the specifications of the oBDS and codes with ICD-10-GM.

---

### **ICD-O-3**
The description of the localization of the primary tumor is coded via ICD-O-3 topography.
The morphological characteristics are coded via ICD-O-3 morphology.
The BfArM publishes the ICD-O-3 on behalf of the Federal Ministry of Health. The current version is available here:
https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-O-3/_node.html

---

### **OPS**
The Operation and Procedure Code (OPS) is used to code surgical procedures performed as part of oncological diagnostics and therapy.
The current version is available here:
https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/OPS-ICHI/OPS/_node.html

---

### **ATC**
Medication in the oBDS is originally recorded as free text, although recording via ATC can be offered by the primary systems. In the present FHIR profiles, we assume that the medication is primarily coded in ATC. These are mainly medications administered as part of systemic therapy as antineoplastic therapies (chemo-, hormone-, immunotherapeutics).
https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ATC/_node.html

---

### **TNM Classification**
The TNM classification of malignant tumors is the globally used system for the clinical description of a tumor disease. The current 8th edition documents the current standards comprehensively and is published in collaboration with the Union for International Cancer Control (UICC).

---

### **CTCAE**
The Common Terminology Criteria of Adverse Events is used in the side effects profile to record side effects of radiation and systemic therapy.

https://ctep.cancer.gov/protocoldevelopment/electronic_applications/ctc.htm

---

### **SNOMED-CT**
https://www.bfarm.de/DE/Kodiersysteme/Terminologien/SNOMED-CT/_node.html

---

### **LOINC**
LOINC (Logical Observation Identifiers Names and Codes) is an international system issued by the Regenstrief Institute for the unique identification and coding of medical observations, particularly laboratory tests. According to § 355 Abs. 7 Sozialgesetzbuch SGB V, the BfArM is responsible for the further development of LOINC for the needs in Germany and for providing translations for the electronic patient record.
https://www.bfarm.de/DE/Kodiersysteme/Terminologien/LOINC-UCUM/LOINC-und-RELMA/_node.html

The current international LOINC version and the complete package with individual translations are available at http://loinc.org. A browser-based search is provided via search.loinc.org (registration required).

---

### **UCUM**
Unified Code for Units of Measure (UCUM) is a system for coding units of measure. The coding system was developed with the goal of representing all units of measure used internationally in science, including in the laboratory and pharmaceutical fields. The codes themselves represent units according to a defined notation, allowing quantitative data and other numerical values to be exchanged unambiguously. Since 1999, UCUM has been maintained and published in English by the Regenstrief Institute. The BfArM provides a value list with UCUM codes and descriptions of the codes for use in health applications in Germany.
https://www.bfarm.de/DE/Kodiersysteme/Terminologien/LOINC-UCUM/UCUM/_node.html

---

### **MedDRA**
The scope of the Medical Dictionary for Regulatory Activities (MedDRA) includes pharmaceuticals, biologics, vaccines, and drug/device combinations.

https://www.meddra.org/how-to-use/support-documentation/german/welcome
