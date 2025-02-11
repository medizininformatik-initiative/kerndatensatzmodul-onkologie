---
parent: 
---
## Description of Scenarios for the Application of the Modules

The oBDS serves as the basis for cancer registry reports to the state cancer registries.

The present profiling of the oBDS aims to make the data collected during cancer registration usable for other research fields.

Thus, in the FHIR mapping of the example below, it becomes clear that information on imaging procedures, detailed treatment and radiation schemes, and genetic variants are available in detailed form outside the cancer registry data. The present FHIR profiling thus makes an important contribution to integrating as much information as possible for oncological research.

### Application Scenario of Guideline-Based Treatment

Disclaimer: The course of therapy corresponds to a possible guideline-based therapy, data and course are constructed for testing purposes, similarities with actual disease courses are coincidental.

#### Textual Representation of the Exemplary Course of Therapy

* Kim Musterperson, born 14.03.1956

* 10.06.2021 CT Abdomen with contrast: Suspected peritoneal carcinomatosis, ascites throughout the abdominal cavity, mass in the right ovary. Mesenteric retroperitoneal lymph node metastases, suspected liver metastasis.

* 15.06.2021 Ascites puncture: with malignant tumor cells. Cytologically possible ovarian cancer.
* 22.06.2021 CT Thorax: no evidence of metastases.

* Tumor board 25.06.2021: Clear CT correlate and cytological diagnosis of ovarian cancer.
    * Neoadjuvant chemotherapy with 3 cycles of Carboplatin/Paclitaxel, interval debulking in the course.
        * 05.07.21-25.07.21 Cycle 1 Carboplatin AUC5 d1, Paclitaxel 175 mg/m2, d1, repeat d21
        * 26.07.21-15.08.21 Cycle 2 Carboplatin AUC5 d1, Paclitaxel 175 mg/m2, d1, repeat d21
        * 16.08.21-05.09.21 Cycle 3 Carboplatin AUC5 d1, Paclitaxel 175 mg/m2, d1, repeat d21
* 15.09.21 CT Thorax/Abdomen: Assessment
Peritoneal carcinomatosis increasing, metastasis-suspect lymph nodes retroperitoneal. Suspected constant liver metastasis.

* 16.09.21 Tumor board:
Significant tumor progression. Surgery for histological confirmation already planned, aiming for optimal debulking.

* 30.09.2021 Surgery
Interval debulking via longitudinal laparotomy, tumor resection via hysterectomy, bilateral adnexectomy, and atypical liver segment resection (segments II and V). Postoperative: R0.

* Pathological Report
    * Histology: Resection specimen from 30.09.2021
    * Neoplasm of the ovary (post neoadjuvant therapy) (ICD-10-C56) Ovary NOS (ICD-O-C56.9) Examination material: Resection specimen WHO type: Serous adenocarcinoma (ICD-O M-8441/3)
    * Local tumor spread: Ovarian tumor left with a maximum size of 2.2 cm and tumor-infiltrated capsule with evidence of tumor cells on the ovarian surface, proportion of viable tumor cells about 80%.
    * UICC classification (8th edition): ypT3c. pM1b (HEP) L1. V0. Pn0 FIGO: IVB
    * Immunohistochemistry: (example for some markers, in a real report there are many more) Occasionally strong nuclear expression of the progesterone receptor. Positivity for P16 in the tumor. The proliferation index by MIB-1 is up to 38%. Microscopy: Partial evidence of mucin.
    * Comment: The immunohistochemical marker profile is consistent with a high-grade serous adenocarcinoma of the ovary (post neoadjuvant chemotherapy).

* Tumor board 25.10.2021:
    * Macroscopic complete resection achieved by surgery.
    * However, progression under neoadjuvant therapy.
    * Therefore switch to Carboplatin/Gemcitabine
    * Human genetic consultation recommended

* Systemic Therapy
    * 08.11.21-28.11.21 Cycle 1 Carboplatin AUC 4 d1, Gemcitabine 1000mg/m2 d1+d8 repeat d22
    * 29.11.21-19.12.21 Cycle 2 Carboplatin AUC 4 d1, Gemcitabine 1000mg/m2 d1+d8 repeat d22
    * 20.12.21-09.01.22 Cycle 3 Carboplatin AUC 4 d1, Gemcitabine 1000mg/m2 d1+d8 repeat d22
* 15.01.22 CT: Abdomen:
    * Regression of the known peritoneal carcinomatosis
    * Liver without clear evidence of metastasis, post atypical liver segment resection likely scar changes
    * Assessment: Regressive findings, post interim surgical debulking

* 20.01.22 Tumor board:
    * Maintenance therapy with Niraparib in BRCA wild type
    * Restaging in 3 months with CT Thorax/Abdomen and tumor markers
* 25.01.22 Start Niraparib 300mg d1-28 repeat d28

#### Graphical Representation of the Exemplary Course of Therapy

<img src="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/refs/heads/dev/implementation-guides/ImplementationGuide-2025.x-DE/Images/MII_Onko_Example_Patient.svg" width="100%"></br>

The image file can be viewed and downloaded separately [here (Github)](https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/refs/heads/dev/implementation-guides/ImplementationGuide-2025.x-DE/Images/MII_Onko_Example_Timeline.svg) for better representation (provided as `.svg`).