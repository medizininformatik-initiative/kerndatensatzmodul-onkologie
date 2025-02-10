---
parent: 
topic: AdverseEvent
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event
---

## {{page-title}}

This profile describes the adverse effects of radiotherapy and systemic therapy in oncology.

The type of adverse effect can be described either as a CTCAE term or as a medDRA number.
Further information can be found in the documentation guide https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/93683749/Nebenwirkungen.
Additionally, the platform §65c provides a curated list with translated CTCAE terms and the corresponding medDRA numbers.
https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15533115/Nebenwirkungen+CTCAE

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event'
        select
	        Description: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event' 
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
    for differential.element where id.contains('Nebenwirkungen')
    select 
        Dataset: short,
        Explanation: definition, 
        FHIR: mapping[0].map 
```

---

Mapping [Unified Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event'  
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

    ```GET [base]/AdverseEvent?_id=1234```
    
    Application notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter ```_profile``` MUST be supported:

    Examples:
    
    ```GET [base]/AdverseEvent?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event```
    
    Application notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter ```event``` MUST be supported:
    Examples:

    ```GET [base]/AdverseEvent?event=https://www.meddra.org|10016256```

    Application notes: Further information on searching by "event" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

4. The search parameter ```seriousness``` MUST be supported:
    
    Examples:

    ```GET [base]/AdverseEvent?seriousness=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-vs-onko-nebenwirkung-ctcae-grad|4```

    Application notes: Further information on searching by "seriousness" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

5. The search parameter ```suspectEntity.instance``` MUST be supported:
    
    Examples:

    ```GET [base]/AdverseEvent?suspectEntity.instance=Patient/example```

    Application notes: Further information on searching by "severity" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#all).

**Examples**

{{json:mii-pr-onko-nebenwirkung-0}}

---
