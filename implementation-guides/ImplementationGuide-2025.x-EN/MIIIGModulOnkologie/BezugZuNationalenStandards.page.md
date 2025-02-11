## {{page-title}}

The described oncology core dataset follows the oBDS and thus the German cancer registry data models.

---
#### Information Systems in Hospitals (ISiK)
ISiK describes a standard intended for use by hospital systems to exchange information with each other.
ISiK itself contains few content specifications and bindings relevant to the collection of oncological data. Due to its increasing importance in the hospital sector, conformity was ensured during profiling.
- The diagnosis and procedure profiles are part of the ISiK basic modules https://simplifier.net/guide/isik-basis-v4?version=current
- Medication is part of the ISiK medication module https://simplifier.net/guide/isik-medikation-v4?version=current

#### Medical Information Objects (MIOs)
MIOs are significant as structured data elements in the context of the electronic patient record (ePA). The first major component is to provide structured medication data. At the time of profiling (Jan-Apr 2024), the profiles for medication/medication plan were still in profiling and could not be considered in this specification. It should be noted that the medication list and tumor documentation are currently still separate ecosystems. Long-term harmonization of comparable profiles will be coordinated and promoted by the KIG of gematik from 2025.
The implementation guide for the "ePA Medication Service" can be found here: https://simplifier.net/guide/medication-service?version=1.1.0
Link to the specific profile EPA MedicationStatement https://simplifier.net/epa-medication/epamedicationstatement

---

### National Preliminary Work

#### German OncoLogical Data Standard (GOLD)
The GOLD project is part of Vision Zero Oncology. The data model and associated profiles were derived from existing data models and coordinated with German experts. Efforts were also made towards semantic harmonization of various data models from research and industry.
The first profiles focus on diagnosis and classifications, such as the TNM classification. The current version can be found here: https://vision-zero-oncology.github.io/GOLD/

#### Oncology Base Profiles by HL7 Germany
In the German base profiles, profiling work was provided in 2022 for a foundation for the uniform use of FHIR resources in the oncology sector. https://simplifier.net/BasisprofileOnkologie
Work on the base profiles has been on hold since the 2022 commentary. The HL7 oncology base profiles now refer to the present oncology extension module of the MII.

#### German Consortium for Translational Cancer Research
The internal data model of the DKTK uses oBDS data prepared from tumor documentation systems in FHIR format as an exchange medium (accessible at https://simplifier.net/oncology). The original information model of the oncology extension module was strongly oriented towards the DKTK model. However, the profiling differs in that the DKTK profiles are self-contained, while an MII module should work as well as possible with the MII base modules (especially diagnosis, procedure, medication) and already existing extension modules. Therefore, one of the main modeling decisions was to use the MII diagnosis and MII medication, as well as to represent surgeries, radiotherapies, and systemic/watchful waiting therapies as MII procedures.