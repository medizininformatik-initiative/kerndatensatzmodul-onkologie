<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-systemische-therapie-medikation-intro.md (de) -->

This profile describes the specific medications documented for the oBDS within the context of systemic therapy.

Since systemic therapy and watchful waiting are grouped in one field in the oBDS, the data for systemic therapy and watchful waiting are covered both via a FHIR procedure (systemic and watchful waiting) and as FHIR medication.

The information on systemic oncological medication in the oBDS is mapped using the following data points. In the medication profile of systemic therapy, these are specifically:

* Start and end of the medication
* Name of the treatment regimen
* Active ingredients (ATC-coded)

---

### Conformance

This profiling is compatible with the procedure profile of the ISiK base modules level 4. https://simplifier.net/isik-medikation-v4/isikmedikationsinformation

This profiling is currently *not* compatible with the EPA MedicationStatement, since it explicitly requires a reference to a Medication resource under MedicationStatement.medication, whereas the present oncology MedicationStatement prefers coding via ATC. https://simplifier.net/epa-medication/epamedicationstatement

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-MedicationStatement.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-MedicationStatement.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-systemische-therapie-medikation1](MedicationStatement-mii-exa-onko-systemische-therapie-medikation1.html)
