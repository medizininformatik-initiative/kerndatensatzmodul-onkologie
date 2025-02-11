## {{page-title}}

The implementation of the oBDS is done using extensions. This is particularly related to the oBDS data structure and the oBDS-specific code systems and the attempt to map them with modules from the MII core dataset.

The present extensions were designed with a focus on integration into the MII core dataset and use as secondary data utilization of cancer registry data via the FDPG.

Since the use of extensions in the FHIR context should be avoided if possible, at least as long as there are meaningful alternative options within the existing FHIR data model, implementation alternatives should be presented and discussed below.

### Procedures Extension (Intention, Position)
__Intention__
* Necessity of the extension:
    * The FHIR R4 Procedure does not contain an element that can adequately represent the treatment intention.
    * The MII Procedure therefore contains an extension [Implementation Intention](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht)
    * CarePlan contains the element Intention; however, this describes the strength of the intention of the resource (how binding the resource is, i.e., plan, option, requirement, etc.) and therefore cannot be used for coding the treatment intention in the sense of the oBDS.
* Alternative proposal:
    * Possibly, a consensus SNOMED mapping can achieve agreement so that the treatment intention is directly captured in SNOMED-CT and thus implemented using the extension [Implementation Intention](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht).

__Position__
* The position of a radiation or systemic therapy cannot be represented by the previous FHIR procedures. Mapping via another resource (e.g., in CarePlan as part of the tumor board) was discussed but not considered advantageous.

### Radiotherapy Radiation Extension
* Necessity of the extension: Mapping the complex oBDS radiation type via traditional FHIR resources is currently only partially possible.
* Representation of individual radiations in MII is not possible, as mandatory OPS codes or SNOMED-CT codes must be specified, which are not available for all oBDS data fields.

* Alternative proposal:
    * Continue radiotherapy as MII_Procedure
    * Define radiation as R4 Procedure
        * bodySite for target area, with laterality extension
        * code as application type
        * method as slice for radiation type
        * Mapping of dose and boost still via extensions

### TNM (c/p, itc, sn) Extensions

Alternative implementations:
* As individual observations with existing TNM grouper logic
    * Advantage: behaves the same as other categories and symbols
    * Disadvantage: does not occur independently, close coupling to T/N/M classification profiles necessary
* As part of the T/N/M categories (e.g., component)




