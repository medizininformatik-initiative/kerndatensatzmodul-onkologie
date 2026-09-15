<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-tod-intro.md (de) -->

This profile describes whether and when a patient died of tumor-related causes. It is part of the oBDS cancer registry dataset.

The date of death can also be represented in the MII Kerndatensatz via the Patient resource, but has additionally been added here as an Observation for reasons of data structure and cohesion.

Since version MII-Patient(2024), a cause of death is also available directly in the Patient resource. In contrast to the oBDS cause of death, which is recorded using ICD-10-GM, the MII-Patient cause of death refers to ICD-10-WHO.

It includes:
* a reference to Patient
* the Observation code "184305005 | Cause of death (observable entity)" (SNOMED-CT)
* the exact date of death
* a coding of the cause of death according to ICD-10 GM
* an interpretation of the relationship between the tumor disease and the cause of death

In the oBDS, the death report is transmitted as a standalone entity. Since there should only be one death report per patient, the FHIR profiling therefore does not include a direct link to the primary diagnosis or the individual follow-up stagings, but exclusively to the patient.

---

Mapping of dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tod/Tod-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tod/Tod-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Tod](StructureDefinition-mii-pr-onko-tod.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-tod-j](Observation-mii-exa-onko-tod-j.html)

[mii-exa-onko-tod-n](Observation-mii-exa-onko-tod-n.html)

[mii-exa-onko-tod-u](Observation-mii-exa-onko-tod-u.html)
