---
parent: 
topic: AllgemeinerObservation
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf
---

## {{page-title}}

---

### Context

This profile describes a follow-up observation in the context of oncological therapy.

In the oBDS, the follow-up report is one of several types of reports. The follow-up report can contain several other report contents. In the present FHIR profiling, follow-up observations, along with tumor boards, are one of the two key resource types used for the temporal modeling of the treatment course.

The correct coding and interpretation of cancer registry follow-up data is not trivial - details can be found in the documentation guide of the §65c platform.

https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/75628552/Verlaufsmeldung

---

### Conformance Statements

- A follow-up observation **SHOULD** have a reference to the primary diagnosis via `focus`
- A follow-up observation **SHOULD** include an assessment of disease progression (PD, PR, MR, etc.) in the `value` if this has been made and is available in the data
- A follow-up observation **SHOULD** also include assessments of the staging of the tumor, lymph nodes, and distant metastases in the `component` if these have been made and are relevant for staging
- Since the FHIR profiling does not represent a complete follow-up report, other observations that are additionally or differently relevant for staging than the above-mentioned TNM criteria **SHOULD** refer to the follow-up observation via `derivedFrom`. For example, these are newly diagnosed distant metastases, additional histologies, or later genetic examinations. These observations **CAN** be directly taken from the oBDS report contents of the respective follow-up report.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

---

### Content

<tabs>
  <tab title="Representation">{{tree, buttons}}</tab>
  <tab title="Description"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf' 
        select
	        Description: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Field Name: id, Short Description: short, Notes: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

Mapping dataset to FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie'
    for differential.element where id.contains('AllgemeinerLeistungszustand')
    select 
        Dataset: short,
        Explanation: definition, 
        FHIR: mapping[0].map 
```

---

Mapping [Unified Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-'  
    for differential.element
    where mapping.identity='oBDS'
    select 
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

---

**Search Parameters**

The following search parameters are relevant for the oncology module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples: 

    ```GET [base]/Observation?_id=1234```
    
    Application notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:
    
    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand```
    
    Application notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "identifier" MUST be supported:

    Examples:

    ```GET [base]/Observation?identifier=http://charite.de/labor/labortests|1234```

    Application notes: Further information on searching by "identifier" can be found in the FHIR base specification - section "token".

4. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005```

    Application notes: Further information on searching by "code" can be found in the FHIR base specification - section "token".

5. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example```

    Application notes: Further information on searching by "subject" can be found in the FHIR base specification - section "reference".

6. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example```

    Application notes: Further information on searching by "focus" can be found in the FHIR base specification - section "reference".

7. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/example```

    Application notes: Further information on searching by "encounter" can be found in the FHIR base specification - section "reference".

8. The search parameter "component-code-value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-code-value-concept=http://loinc.org|12345-6$http://fhir.de/CodeSystem/sct|12345678```

    Application notes: Further information on searching by "components" can be found in the FHIR base specification - section "composite".

**Examples**

{{json:mii-exa-onko-verlauf-tumor}}

---