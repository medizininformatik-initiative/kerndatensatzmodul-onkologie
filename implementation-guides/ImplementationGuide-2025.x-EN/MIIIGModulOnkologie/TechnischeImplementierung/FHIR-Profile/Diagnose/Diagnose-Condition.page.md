---
parent: 
topic: DiagnoseCondition
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor
---

## {{page-title}}

---

### Content
This profile describes a diagnosis in oncology. It is based on the MII diagnosis module.

The oBDS expects the coding of the diagnosis via ICD-10 as well as the coding of the topography of the primary tumor and the histological morphology via ICD-O-3. In FHIR, this combination can already be fully represented via the MII diagnosis:
* ICD-10-GM via `Condition.code[icd10-gm]`, (derived from MII diagnosis)
* ICD-O-3 morphology via `Condition.extension[morphology-behavior-icdo3]` (comparable to mCODE extension)
* ICD-O-3 topography via `Condition.bodySite`.

Further histological examinations with differing morphologies during the course of therapy SHOULD be recorded via the histology profile.

---

### Links to other resources
The oncological diagnosis is the central core element of the basic dataset. All case-related observations are directly or indirectly linked to it:
- all observations refer to the primary diagnosis via `Observation.focus`
- the tumor board resource refers to the primary diagnosis via `CarePlan.addresses`
- all procedures (surgery, radiotherapy, systemic therapy) refer to the primary diagnosis via `reasonReference`

---

### Temporal assignment in the course
In the oBDS, an assignment of observations as important for the initial diagnosis is given by the fact that they are part of the diagnosis report. Later reports can then be made, for example, as follow-up, pathology, or death reports.

Observations made after the initial diagnosis refer in the present profiling to a "follow-up" observation resource with its own date.
The observations known at the time of the initial diagnosis are of particular interest for prognostic research questions. To make these data points easier to identify, **SHOULD** all observations from the oBDS diagnosis report be included in a FHIR list with the profile "Evidence primary diagnosis" referenced via `evidence.detail`.

---

### Conformity 
The present profiling is compatible with the diagnosis profile of the ISiK basic modules level 4. https://simplifier.net/isik-basis-v4/isikdiagnose

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition

```

### Content

<tabs>
  <tab title="Representation">{{tree, buttons}}</tab>
  <tab title="Description"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor'
        select
	        Description: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor' 
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
    for differential.element where id.contains('Diagnose')
    select 
        Dataset: short,
        Explanation: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor'  
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

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Condition?_id=12345```

    Application notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose```

    Application notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Condition?code=http://fhir.de/CodeSystem/bfarm/icd-10-gm|A15.0```

    Application notes: Further information on searching by "Condition.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Condition?subject=Patient/test```

    Application notes: Further information on searching by "Condition.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "patient" MUST be supported:

    Examples:

    ```GET [base]/Condition?patient=Patient/test```

    Application notes: Further information on searching by "Condition.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "body-site" MUST be supported:

    Examples:

    ```GET [base]/Condition?body-site=http://terminology.hl7.org/CodeSystem/icd-o-3|C44.2```

    Application notes: Further information on searching by "Condition.body-site" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "morphology-behaviour-icd03" MUST be supported:

    Examples:

    ```GET [base]/Condition?morphology-behaviour-icdo3=http://terminology.hl7.org/CodeSystem/icd-o-3|8503/2```

    Application notes: Further information on searching by "Condition.extension[morphology-behaviour-icdo3]" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "icd10gm-diagnosesicherheit" MUST be supported:

    Examples:

    ```GET [base]/Condition?icd10gm-diagnosesicherheit=https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT|G```

    Application notes: Further information on searching by "Condition.code.coding.extension.where(url='http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit').value" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "icd10gm-mehrfachcodierung" MUST be supported:

    Examples:

    ```GET [base]/Condition?icd10gm-mehrfachcodierung=http://fhir.de/CodeSystem/icd-10-gm-mehrfachcodierungs-kennzeichen|†```

    Application notes: Further information on searching by "Condition.code.coding.extension.where(url='http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen').value" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "icd10gm-seitenlokalisation" MUST be supported:

    Examples:

    ```GET [base]/Condition?icd10gm-seitenlokalisation=https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION|B```

    Application notes: Further information on searching by "Condition.code.coding.extension.where(url = 'http://fhir.de/StructureDefinition/seitenlokalisation').value" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#token).

---
**Examples**

{{json:mii-exa-onko-diagnose}}

---
