<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-tod-intro.md) -->

##

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
The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tod/Tod-Observation.page.md gate=B -->
The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Tod](StructureDefinition-mii-pr-onko-tod.html).

---

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=1234```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005```

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

8. The search parameter "interpretation" MUST be supported:

    Examples:

    ```GET [base]/Observation?interpretation=http://fhir.de/CodeSystem/icd10gm|C44.3```

    Usage notes: Further information on searching by "interpretation" can be found in the FHIR base specification - section "token".

9. The search parameter "derived-from" MUST be supported:

    Examples:

    ```GET [base]/Observation?derived-from=Observation/example```

    Usage notes: Further information on searching by "derived-from" can be found in the FHIR base specification - section "reference".

**Examples**

[mii-exa-onko-tod-j](Observation-mii-exa-onko-tod-j.html)

[mii-exa-onko-tod-n](Observation-mii-exa-onko-tod-n.html)

[mii-exa-onko-tod-u](Observation-mii-exa-onko-tod-u.html)
