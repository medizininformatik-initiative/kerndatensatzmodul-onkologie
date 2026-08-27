<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-intro.md) -->

<!-- TODO:REVIEW target artefact mii-ex-onko-strahlentherapie-bestrahlung does not exist in the module; this intro note is currently not associated with any generated artefact -->

The radiation extensions capture all information relevant to individual radiation units that is not already covered by the parent Strahlentherapie procedure profile.

---

### Total dose

The total dose indicates the total dose with which the target region was irradiated (including boost).

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Bestrahlung.page.md gate=B -->
Structure and description: [MII EX Onko Strahlentherapie Bestrahlung Gesamtdosis](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis.html).

---

### Single fraction dose

The single fraction dose indicates the dose (most frequent dose, not boost) per day with which the target region was irradiated.

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Bestrahlung.page.md gate=B -->
Structure and description: [MII EX Onko Strahlentherapie Bestrahlung Einzeldosis](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis.html).

---

### Boost

Indicates whether a boost was applied and, if so, which type of boost.

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Bestrahlung.page.md gate=B -->
Structure and description: [MII EX Onko Strahlentherapie Bestrahlung Boost](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-boost.html).

---

### Laterality

Indicates the laterality of the target region. For bilateral irradiation of paired organs, the irradiations are to be reported individually.

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Bestrahlung.page.md gate=B -->
Structure and description: [MII EX Onko Strahlentherapie Bestrahlung Seitenlokalisation](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation.html).
