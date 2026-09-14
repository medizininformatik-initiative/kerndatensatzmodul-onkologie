<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin-intro.md (de) -->

This profile describes "individual irradiations" of nuclear medicine therapy in oncology. This profile is intended to cover both brachytherapies and the systemic administration of radioactive metabolites or similar. The profile for oncology is based on the procedure profile of the MII base module Procedure. Each brachytherapeutic procedure or systemic nuclear medicine therapy refers to a parent radiotherapy procedure, which contains overarching information such as intention and outcome.

#### Implementation recommendation
From the points mentioned above, the following coding recommendation results for the oBDS nuclear medicine treatment:
- Category as SNOMED code
    - Category for nuclear medicine `399315003 | Radionuclide therapy (procedure)`
- Coding via OPS
    - Nuclear medicine therapy as OPS `8-53 Nuklearmedizinische Therapie` (or more specific if available)

---

### Conformance
The present profiling is compatible with the procedure profile of the ISiK base modules level 4. https://simplifier.net/isik-basis-v4/isikprozedur

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/NuklearmedizinischeTherapie-Procedure.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/NuklearmedizinischeTherapie-Procedure.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Strahlentherapie Nuklearmedizin](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1.html)
