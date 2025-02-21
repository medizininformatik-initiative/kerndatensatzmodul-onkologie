---
parent: 
topic: AdverseEvent
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation
---

## {{page-title}}

This profile describes the specific medications documented for the oBDS as part of systemic therapy.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

Since systemic and watchful therapy are grouped in one field in the oBDS, the data for systemic and watchful therapy are covered both by a FHIR procedure (systemic and watchful) and as FHIR medication.

The information on systemic oncological medication in the oBDS includes the following data points:
In the medication profile of systemic therapy, this is specifically:
* Start and end of medication
* Name of the treatment regimen
* Active substances (ATC-coded)

---

### Conformity

The present profiling is compatible with the procedure profile of the ISiK basic modules level 4. https://simplifier.net/isik-medikation-v4/isikmedikationsinformation

The present profiling is currently *not* compatible with the EPA MedicationStatement, as it explicitly requires a reference to a Medication resource under MedicationStatement.medication, while the present oncology MedicationStatement prefers coding via ATC. https://simplifier.net/epa-medication/epamedicationstatement

### Content

<tabs>
  <tab title="Representation">{{tree, buttons}}</tab>
  <tab title="Description"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation'
        select
	        Description: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation' 
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
    for differential.element where id.contains('SystemischeTherapieProtokoll') or id.contains('SystemischeTherapieSubstanz')
    select 
        Dataset: short,
        Explanation: definition, 
        FHIR: mapping[0].map 
```

---

Mapping [Unified Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation'  
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

    ```GET [base]/MedicationStatement?_id=1234```
    
    Application notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter ```_profile``` MUST be supported:

    Examples:
    
    ```GET [base]/MedicationStatement?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation```
    
    Application notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter ```medicationCodeableConcept``` MUST be supported:
    Examples:

    ```GET [base]/MedicationStatement?code=http://snomed.info/ct|400847007```

    Application notes: Further information on searching by "event" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

4. The search parameter ```partOf``` MUST be supported:
    
    Examples:

    ```GET [base]/MedicationStatement?part-of=Medication/123```

    Application notes: Further information on searching by "severity" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#all).

5. The search parameter ```effective``` MUST be supported:
    
    Examples:

    ```GET [base]/MedicationStatement?effective=gt2019-01-01```
    
    ```GET [base]/MedicationStatement?MedicationStatement?effective=ge2019-01-01&effective=le2019-12-01```

    Application notes: Further information on searching by "severity" can be found in the [FHIR base specification - section "date"](http://hl7.org/fhir/R4/search.html#all).

**Examples**

{{json:mii-exa-onko-systemische-therapie-1}}

---