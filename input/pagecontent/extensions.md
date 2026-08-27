<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of the German original (input/translations/de/pagecontent/extensions.md) -->

The complete, automatically generated list of this module's extensions can be
found in the [artifact overview](artifacts.html). This page documents the
design decisions: why extensions were needed and which alternatives were
discussed.

### Use of extensions

The oBDS implementation uses extensions. This is mainly due to the oBDS data
structure, the oBDS-specific code systems and the attempt to represent them
with modules of the MII core dataset. The extensions were designed with a
focus on integration into the MII core dataset and the secondary use of
cancer registry data via the FDPG.

Since the use of extensions should be avoided in FHIR where sensible
alternatives exist within the existing FHIR data model, implementation
alternatives are shown and discussed below.

### Procedure extensions (intention, timing relative to surgery)

**Intention**

- Why the extension is needed:
  - The FHIR R4 Procedure has no element that can adequately represent the
    treatment intention.
  - The MII Procedure therefore contains an extension
    [Durchführungsabsicht](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht).
  - CarePlan does have the `intent` element; however, it describes the
    bindingness of the resource (plan, option, order etc.) and cannot be used
    to code the treatment intention in the oBDS sense.
- Alternative proposal: a consented SNOMED mapping might allow the treatment
  intention to be captured directly in SNOMED CT and transported via the
  Durchführungsabsicht extension.

**Timing relative to surgical therapy (Stellung)**

The timing of a radiotherapy or systemic therapy relative to surgery cannot
be represented with the existing FHIR procedures. Representation via another
resource (e.g. in CarePlan as part of the tumor conference) was discussed but
not considered advantageous.

### Radiotherapy irradiation extension

- Why the extension is needed: representing the complex oBDS irradiation type
  with traditional FHIR resources is currently only partially possible.
- Individual irradiations cannot be represented as separate MII procedures,
  as mandatory OPS or SNOMED CT codes would be required that do not exist for
  all oBDS data fields.
- Alternative proposal:
  - keep radiotherapy as an MII procedure,
  - define the irradiation as an R4 procedure:
    - `bodySite` for the target volume, with laterality extension,
    - `code` as application type,
    - `method` as a slice for the radiation type,
    - dose and boost still represented via extensions.

### TNM extensions (c/p prefix, itc, sn)

Alternative implementations:

- as individual observations with the existing TNM grouper logic
  - advantage: behaves exactly like other categories and symbols
  - disadvantage: does not occur independently; tight coupling to the T/N/M
    classification profiles required
- as part of the T/N/M categories (e.g. `component`)

### Irradiation extensions (single irradiation)


The radiation extensions capture all information relevant to individual radiation units that is not already covered by the parent Strahlentherapie procedure profile.


#### Total dose

The total dose indicates the total dose with which the target region was irradiated (including boost).

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Bestrahlung.page.md gate=B -->
Structure and description: [MII EX Onko Strahlentherapie Bestrahlung Gesamtdosis](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis.html).


#### Single fraction dose

The single fraction dose indicates the dose (most frequent dose, not boost) per day with which the target region was irradiated.

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Bestrahlung.page.md gate=B -->
Structure and description: [MII EX Onko Strahlentherapie Bestrahlung Einzeldosis](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis.html).


#### Boost

Indicates whether a boost was applied and, if so, which type of boost.

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Bestrahlung.page.md gate=B -->
Structure and description: [MII EX Onko Strahlentherapie Bestrahlung Boost](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-boost.html).


#### Laterality

Indicates the laterality of the target region. For bilateral irradiation of paired organs, the irradiations are to be reported individually.

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Bestrahlung.page.md gate=B -->
Structure and description: [MII EX Onko Strahlentherapie Bestrahlung Seitenlokalisation](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation.html).

*Note: the former complex parent extension `mii-ex-onko-strahlentherapie-bestrahlung` has been superseded (commented out in FSH); the four individual extensions on the irradiation procedure profile apply.*
