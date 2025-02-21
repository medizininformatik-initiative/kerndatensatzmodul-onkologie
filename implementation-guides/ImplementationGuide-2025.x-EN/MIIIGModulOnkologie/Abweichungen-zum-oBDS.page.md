## {{page-title}}
This Implementation Guide describes an implementation of the oBDS in FHIR. A pure 1:1 mapping of the complete dataset is neither meaningful in content nor technically feasible. Here are the most important deviations:

### Contents

The oncology extension module includes those groups of the oBDS that primarily encompass clinical-diagnostic and therapeutic data points.

Therefore, several groups were **not** implemented in FHIR. This includes:

- The person-related groups
    - Group 3: Patient Master Data
    - Group 4: Reporter Master Data
    - Group 7: Sender
    - Group 22: Surgeon
    - Group 25: Additional Contacts

- The administrative and report-related groups
    - Group 1: Report
    - Group 2: Center
    - Group 21: Notes
    - Group 24: Study Participation

It was also decided to focus on the technical implementation of the main contents in the first profiling and to integrate the organ-specific modules at a later stage.
- These include:
    - Prostate Module
    - Breast Module
    - Melanoma Module
    - Colon Module

### Cardinalities
The oBDS has been primarily optimized for data reporting to cancer registries.

In the first version, the cardinalities were largely adopted from the oBDS but are partially set "softer" to gain access to a broader data base, especially in the first step.

### Integration of Terminologies and Code Systems
To ensure evaluability by the Health Research Data Portal (FDPG), the specification of medication in systemic therapy requires coding using ATC. Free text is still possible as an additional specification.

### Validation
The oBDS XML schema 3.0.2 provides a number of validations to check data quality and completeness. These are technically **not** implemented in the first version. It is assumed that the oBDS data in the primary tumor documentation systems is at least validated to the extent that an export to XML format is possible. Further validations (e.g., mutually exclusive data fields) could be performed in the future if needed. This would be necessary if the present extension module is to serve as a data collection basis for primary systems beyond its current purpose.

### Contents of the Modules and Profiles
In the oBDS, the data fields are bound to the reporting structure. Groups with different cardinalities are often stored in different groups. For example, tumor board and therapy recommendations are in two different groups because a tumor board can refer to multiple therapy recommendations. However, both groups can be easily represented in the FHIR CarePlan resource, so they were combined into one FHIR profile. Important changes are excerpted below:

- The diagnosis includes parts of the histology group (ICD-O topography, ICD-O morphology)
- The tumor board group was combined with the tumor board/therapy recommendation group
- The general condition should only be coded as ECOG (and no longer optionally as Karnofsky), which is also planned for future oBDS versions.