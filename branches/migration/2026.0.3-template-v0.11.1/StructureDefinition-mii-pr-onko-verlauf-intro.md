<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-verlauf-intro.md (de) -->

### Context

This profile describes a follow-up observation in the context of oncological therapy.

In the oBDS, the follow-up report ("Verlaufsmeldung") is one of several report types. The follow-up report can contain several other report contents. In the present FHIR profiling, follow-up observations are, alongside tumor boards, one of the two decisive resource types used for the temporal modeling of the treatment course.

The correct coding and interpretation of cancer registry follow-up data is not trivial - details can be found in the documentation guide of the Plattform §65c.

https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/75628552/Verlaufsmeldung

---

### Conformance Statements

- A follow-up observation **SHOULD** have a reference to the primary diagnosis via `focus`
- A follow-up observation **SHOULD** additionally contain in `value` an assessment of the disease progression (PD, PR, MR, etc.), provided this assessment has been made and is present in the data
- A follow-up observation **SHOULD** furthermore contain in `component` assessments of the staging of the tumor, the lymph nodes and the distant metastases, provided these have been made and are relevant for the staging
- Since the FHIR profiling does not represent a complete follow-up report, other observations that are relevant for staging in addition to or differing from the TNM criteria mentioned above **SHOULD** be referenced from the follow-up observation via `hasMember`. Examples include newly diagnosed distant metastases, additionally performed histologies, or genetic tests carried out later in the course. These observations **MAY** be taken directly from the oBDS report contents of the respective follow-up report.

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Verlauf/Verlauf-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Verlauf/Verlauf-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.html).
{: .ig-highlight .ig-highlight-grey}

---

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=1234```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "identfier" MUST be supported:

    Examples:

    ```GET [base]/Observation?identfier=http://charite.de/labor/labortests|1234```

    Usage notes: Further information on searching by "identfier" can be found in the FHIR base specification - section "token".

4. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005```

    Usage notes: Further information on searching by "code" can be found in the FHIR base specification - section "token".

5. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example```

    Usage notes: Further information on searching by "subject" can be found in the FHIR base specification - section "reference".

6. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example```

    Usage notes: Further information on searching by "focus" can be found in the FHIR base specification - section "reference".

7. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/example```

    Usage notes: Further information on searching by "encounter" can be found in the FHIR base specification - section "reference".

8. The search parameter "component-code-value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-code-value-concept=http://loinc.org|12345-6$http://fhir.de/CodeSystem/sct|12345678```

    Usage notes: Further information on searching by "components" can be found in the FHIR base specification - section "compodsite".

**Examples**

[mii-exa-onko-verlauf-tumor](Observation-mii-exa-onko-verlauf-tumor.html)
