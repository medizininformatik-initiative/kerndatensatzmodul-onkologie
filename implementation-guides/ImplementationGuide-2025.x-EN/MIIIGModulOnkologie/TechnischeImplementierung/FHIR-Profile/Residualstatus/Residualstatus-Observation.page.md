---
parent: 
topic: ResidualstatusObservation
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-residualstatus
---

## {{page-title}}

This profile describes the overall status of the tumor residue after (surgical) therapy in oncology.

The oBDS dataset provides for either a local or global determination of the residual status depending on the procedures performed.
The OPS catalog of procedures for which a local residual status is expected is provided by the platform §65c.

Due to the direct reference, the assessment of the local residual status after completion of an operation is represented as Procedure.outcome in the operation profile.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-residualstatus' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-residualstatus'
        select
	        Description: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-residualstatus' 
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
    for differential.element where id.contains('Residualstatus')
    select 
        Dataset: short,
        Explanation: definition, 
        FHIR: mapping[0].map 
```

---

Mapping [Unified Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-residualstatus'  
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
    
    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod```
    
    Application notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005```

    Application notes: Further information on searching by "code" can be found in the FHIR base specification - section "token".

4. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example```

    Application notes: Further information on searching by "subject" can be found in the FHIR base specification - section "reference".

5. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example```

    Application notes: Further information on searching by "focus" can be found in the FHIR base specification - section "reference".

6. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/example```

    Application notes: Further information on searching by "encounter" can be found in the FHIR base specification - section "reference".

7. The search parameter "derived-from" MUST be supported:

    Examples:

    ```GET [base]/Observation?derived-from=Observation/example```

    Application notes: Further information on searching by "derived-from" can be found in the FHIR base specification - section "reference".

**Examples**

{{json:mii-exa-onko-residualstatus-1}}

---