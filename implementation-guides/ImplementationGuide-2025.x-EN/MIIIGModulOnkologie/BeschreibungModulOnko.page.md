---
parent: 
---

## {{page-title}}
The oncology module serves to capture data points.
In its first version, the module is based on the ADT/GEKID core dataset, which forms the basis for the national cancer registries. This includes diagnostic and histological parameters as well as information on treatment, tumor staging at the beginning and during the course, and the recording of side effects and detection of metastases.

### Content and Purpose of the Modeling
The goal of the oncology extension module is to accurately represent the oncological data that arises in primary care and cancer registry reporting and to relate it to other data sources.

The focus of the first implementation version is the transfer of the registry data collected in the oBDS for secondary data use with the FDPG and other projects within the framework of PM4Onko. Therefore, this first version only includes data points that have a clinical-diagnostic or therapeutic character. Administrative (e.g., reporting, reporter) or person-identifying (person, tumor assignment) data points are not within the scope.

In addition to the core dataset, the oBDS provides for the collection of organ-specific data fields.
In the first implementation step, the implementation of the organ-specific modules (breast, colon, prostate, melanoma) was omitted.

### Mapping to Open Data Standards

The oncological core dataset contains ValueSets primarily defined by ADT/GEKID and has no direct reference to open data standards and terminologies such as SNOMED-CT or LOINC.
The coding of the response options was adopted in the same way as they are present in the primary systems.
At the same time, this implementation guide provides a preliminary mapping of the fields and response options to SNOMED-CT (and possibly other terminologies) as a FHIR ConceptMap.
The state cancer registries, in collaboration with the BfArM, aim to create an official national mapping of the oBDS cancer registry data to SNOMED-CT by the end of 2024.
Once this is officially published, the mapping contained here will be updated accordingly.


