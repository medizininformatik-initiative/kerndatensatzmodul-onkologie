<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-studienteilnahme-intro.md) -->

##

This profile describes whether and when a patient participated in a study.

It includes:
* a reference to Patient
* a reference to the primary diagnosis
* the Observation code "709491003 | Enrollment in clinical trial (procedure)" (SNOMED-CT)
* the exact date of first enrollment in a study with ethics approval
* the status of study participation (Yes, No, Unknown)

In the case of a pharmacological study, a reference to a Procedure / systemic therapy SHOULD ideally exist, either via Observation.partOf = Reference (SystemischeTherapie), Observation.basedOn = Reference (MedicationRequest); or Procedure.basedOn.

### Referencing studies

Information about the exact study (organization, study ID, study phase, etc.) MAY be provided via the element `Observation.focus[studie]` with a reference to a ResearchStudy resource from the [MII Studie module](https://simplifier.net/medizininformatikinitiative-modul-studie).

The ResearchStudy resource enables the structured capture of:
* Study identifiers (DRKS, ClinicalTrials.gov, EudraCT, Innovationsfonds project number)
* Study type and phase
* Primary study objectives
* Study context and indication
* Study status

A complete example can be found in the PRO-B study participation, which references a ResearchStudy with DRKS registration (DRKS00024015) and an Innovationsfonds project number (01NVF19013).

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Studienteilnahme/Studienteilnahme-Observation.page.md gate=B -->
The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).

---

Mapping [Uniform Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Studienteilnahme/Studienteilnahme-Observation.page.md gate=B -->
The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Studienteilnahme](StructureDefinition-mii-pr-onko-studienteilnahme.html).

---

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=1234```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-studienteilnahme```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|709491003```

    Usage notes: Further information on searching by "code" can be found in the FHIR base specification - section "token".

4. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example```

    Usage notes: Further information on searching by "subject" can be found in the FHIR base specification - section "reference".

5. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example```

    Usage notes: Further information on searching by "focus" can be found in the FHIR base specification - section "reference".

6. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/example```

    Usage notes: Further information on searching by "encounter" can be found in the FHIR base specification - section "reference".

7. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Observation?date=2024-02-08```

    Usage notes: Further information on searching by "date" can be found in the FHIR base specification - section "date".

8. The search parameter "derived-from" MUST be supported:

    Examples:

    ```GET [base]/Observation?derived-from=Observation/example```

    Usage notes: Further information on searching by "derived-from" can be found in the FHIR base specification - section "reference".

**Examples**

Example 1: Simple study participation

[mii-exa-onko-studienteilnahme](Observation-mii-exa-onko-studienteilnahme.html)

---

Example 2: Study participation with ResearchStudy reference (PRO-B study)

This example shows the documentation of study participation with a reference to a ResearchStudy resource that contains detailed study information including DRKS registration and Innovationsfonds project number.

[mii-exa-onko-studienteilnahme-prob](Observation-mii-exa-onko-studienteilnahme-prob.html)

ResearchStudy resource:

[mii-exa-onko-studie-prob](ResearchStudy-mii-exa-onko-studie-prob.html)
