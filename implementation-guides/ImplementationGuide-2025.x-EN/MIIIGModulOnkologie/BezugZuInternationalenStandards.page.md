## {{page-title}}

The described oncology core dataset is based on the oBDS and thus the German cancer registry data models.

In the FHIR modeling, the FHIR profiling of other national oncological data models from abroad was considered.
---
https://hl7.org/fhir/us/mcode/
The model is currently in its fourth iteration.
The included data elements can be divided into:
- Patient information
- Disease characterization
- Health status
- Genomic data
- Treatment information
- Outcomes

#### Influences of mCODE on Data Modeling
1. mCODE captures the individual components of the **TNM classification** via individual FHIR observations, which are then grouped using a Stage Group resource. In addition to TNM, there are a number of important tumor staging classifications/scores that have been explicitly created as FHIR profiles. This approach is also recommended in the ongoing profiling of the organ-specific modules of the oBDS (e.g., Gleason Score).
2. mCODE encodes the details of individual **radiation units** via extensions. There is a module derived from mCODE called CodeX Radiation Therapy that explicitly deals with the modeling of radiation schemes (https://hl7.org/fhir/us/codex-radiation-therapy/), but it is much more detailed than the oBDS.
3. mCODE captures genomic data with the HL7 FHIR Genomics Report, developed by the HL7 FHIR Clinical Genomics Working Group. In the current version, the oBDS only includes sparse information on **genetic variants**. If detailed information on molecular genetic examinations, variants, and therapeutic consequences is available at the site, the Molecular Genetic Report of the MII can be used, which is also based on the HL7 Genomics Report.

#### Key Differences mCODE - oBDS

1. mCODE and data elements referenced by mCODE (comorbidities, vital parameters, ethnicity, etc.) are largely based on the US FHIR base modules from us-core and are therefore not directly applicable in Germany.
2. In the data modeling, clinical decision-making, such as recommendations from an interdisciplinary tumor board, is not represented.
3. Actual treatment data is to be used, so many FHIR resources are more detailed than the data situation in the oBDS allows. For example, exact times of medication administration and dosage information are not part of the oBDS, but they are part of mCODE.
4. Overall, mCODE is optimized for prospective data collection and can be continuously updated during treatment. This differs significantly from the basic structure of retrospectively documented German cancer registry data, whose contents can vary depending on the report (diagnosis, surgery, follow-up, etc.).

---

### OSIRIS, France

The French Common Data Model "Interoperability and data sharing of clinical and biological data in oncology" (OSIRIS)
comprises two independent core datasets: a clinical and a genomic part. A third part with a dataset on imaging and radiotherapy is currently in progress. Since the focus of the oBDS is on clinical data, similarities and differences to the clinical dataset are briefly summarized here.

The OSIRIS dataset models the temporal representation primarily around so-called "Tumor Events".
Tumor Events are either initial diagnoses or follow-up observations.

Further information can be found at: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8140800/

English version of the dataset available at: https://github.com/InstitutNationalduCancer/OSIRIS/blob/v1.1.05/documentation/ModeleCliniqueOSIRIS-english_version.pdf

https://github.com/InstitutNationalduCancer/OSIRIS/blob/master/documentation/MPD_OSIRIS_model_v1.1.05.png
