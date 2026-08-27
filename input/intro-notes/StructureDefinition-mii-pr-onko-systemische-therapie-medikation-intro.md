<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-systemische-therapie-medikation-intro.md) -->

##

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
The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-MedicationStatement.page.md gate=B -->
The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.html).

---

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples:

    ```GET [base]/MedicationStatement?_id=1234```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter ```_profile``` MUST be supported:

    Examples:

    ```GET [base]/MedicationStatement?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter ```medicationCodeableConcept``` MUST be supported:
    Examples:

    ```GET [base]/MedicationStatement?code=http://fhir.de/CodeSystem/bfarm/atc|L01AA01```

    Usage notes: Further information on searching by "token" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

4. The search parameter ```partOf``` MUST be supported:

    Examples:

    ```GET [base]/MedicationStatement?part-of=Procedure/123```

    Usage notes: `MedicationStatement.partOf` refers to the associated procedure of the systemic therapy, so `Procedure/[id]` must be specified as the reference. Further information on searching by "part-of" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#all).

5. The search parameter ```effective``` MUST be supported:

    Examples:

    ```GET [base]/MedicationStatement?effective=gt2019-01-01```

    ```GET [base]/MedicationStatement?effective=ge2019-01-01&effective=le2019-12-01```

    Usage notes: The search parameter "effective" evaluates the period of the medication (`MedicationStatement.effectivePeriod`). Further information on searching by "effective" can be found in the [FHIR base specification - section "date"](http://hl7.org/fhir/R4/search.html#all).

**Examples**

[mii-exa-onko-systemische-therapie-medikation1](MedicationStatement-mii-exa-onko-systemische-therapie-medikation1.html)
