# Profiles - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

The complete, automatically generated list of all profiles of this module can be found in the [artifact overview](artifacts.md); the domain documentation of each profile appears as an introduction directly on the respective profile page. This page provides the overview: the standards basis, the simplified structure views per oBDS chapter and the organ-specific modules.

### Standards basis

The CDS specifications are based, where possible, on international standards and terminologies — notably the [International Patient Summary](http://hl7.org/fhir/uv/ips/history.html). Adaptation to the German healthcare system is achieved through the [German FHIR base profiles](https://simplifier.net/basisprofil-de-r4) of HL7 Germany; compatibility with the FHIR specifications of the National Association of Statutory Health Insurance Physicians (KBV) is also sought.

### Simplified profile views (inheritance and oBDS mapping)

The following shows the profiles in a simplified version, focusing on the inheritance from other profiles and the mapping of oBDS data fields to the corresponding FHIR elements.

#### Diagnosis

The diagnosis contains information on the primary diagnosis itself as well as on histology and localization of the primary tumor.

![](MII_Onko_05_Diagnosis.svg)

#### Histology

![](MII_Onko_06_Histologie.svg)

#### TNM classification

![](MII_Onko_08_TNM.svg)

#### Further classifications, residual status, performance status, distant metastases

![](MII_Onko_9-12_Observations.svg)

#### Procedures, medication and adverse events

![](MII_Onko_13-16_Prozeduren.svg)

#### Follow-up, tumor conference, death and genetic variant

![](MII_Onko_17-20_23_Others.svg)

### Lymph node examinations

Four profiles describe the lymph node examinations performed as part of oncological staging. The oBDS provides four distinct data points:

* [Number of examined lymph nodes](StructureDefinition-mii-pr-onko-anzahl-untersuchte-lymphknoten.md)
* [Number of affected lymph nodes](StructureDefinition-mii-pr-onko-anzahl-befallene-lymphknoten.md)
* [Number of examined sentinel lymph nodes](StructureDefinition-mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten.md)
* [Number of affected sentinel lymph nodes](StructureDefinition-mii-pr-onko-anzahl-befallene-sentinel-lymphknoten.md)

The ratio between affected and examined lymph nodes is sometimes determined in clinical practice but is not a separate data point in the oBDS.

### Organ-specific modules

The organ-specific modules extend the base module with **entity-specific data elements** according to the requirements of the ADT/GEKID base documentation. They address the particular diagnostic and therapeutic aspects of individual tumor entities.

#### Breast (Mamma)

The breast module implements the organ-specific profiles for breast-cancer data according to the [oBDS module breast cancer](https://www.basisdatensatz.de/module/5/mammakarzinom): receptor-status determinations (estrogen/progesterone with staining intensity and share of positive cells), menopause status, preoperative marking modalities, intraoperative imaging and breast-specific surgical procedures. The HER2/neu status is currently represented in the molecular tumor board profile; tumor size was moved to the histology chapter as it applies to multiple entities.

![](MII_Onko_Mamma_Module.png)

#### Prostate

The prostate module covers PSA values as the central tumor marker, Gleason scoring (primary, secondary and tertiary patterns), grade groups (1–5), biopsy results (number of cores, carcinoma involvement) and postoperative complications per Clavien-Dindo.

![](MII_Onko_Prostata_Module.png)

#### Colorectal carcinoma (CRC)

The CRC module covers the preoperative assessment (distance to the anocutaneous line, MRI-based measurement of the mesorectal fascia, ASA classification), CRC-specific surgical procedures and stoma marking, resection margins (aboral and circumferential/CRM), anastomotic-leak grading and specific specimen profiles for CRC resections.

![](MII_Onko_KRK_Module.png)

#### Malignant melanoma

The melanoma profiles cover Breslow depth (LOINC 39092-1) as the most important prognostic factor, ulceration of the primary tumor (SNOMED CT 385324008), the excision safety margin, LDH as a prognostic marker and melanoma-specific excision procedures.

![](MII_Onko_Melanom_Module.png)

