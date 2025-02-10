---
parent: 
topic: FernmetastasenObservation
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen
---

## {{page-title}}

This profile describes distant metastases as recorded in the oBDS in oncology for reporting to cancer registries. For each metastasis, the following data fields must be specified individually:
* Date of detection
* Localization based on oBDS-specific coding

In the FHIR profiling, **SHOULD** each distant metastasis be created as a separate resource.
In the oBDS, the specification of non-invasive diagnostic procedures is not provided. Likewise, according to the oBDS, the degree of diagnostic certainty (clinical, radiological, histological) does not need to be collected. If necessary, a distant metastasis **CAN** refer to corresponding diagnostic procedures.

This profile is compliant with the [Patho-Finding profile of the MII pathology report](https://simplifier.net/guide/mii-ig-pathologie/Befund-TechnischeImplementierung-FHIRProfile-MII-PR-Patho-Finding?version=current) and can therefore be included as an observation in a pathological report.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen' 
        select
	        Description: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen' 
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
    for differential.element where id.contains('Fernmetastasen')
    select 
        Dataset: short,
        Explanation: definition, 
        FHIR: mapping[0].map 
```

---

Mapping [Unified Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen'  
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

7. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Observation?date=2024-02-08```

    Application notes: Further information on searching by "date" can be found in the FHIR base specification - section "date".

8. The search parameter "body-site" MUST be supported:

    Examples:

    ```GET [base]/Observation?body-site=http://snomed.info/sct|258332000```

    Application notes: Further information on searching by "body-site" can be found in the FHIR base specification - section "token".

9. The search parameter "derived-from" MUST be supported:

    Examples:

    ```GET [base]/Observation?derived-from=Observation/example```

    Application notes: Further information on searching by "derived-from" can be found in the FHIR base specification - section "reference".

**Examples**

{{json:mii-exa-onko-fernmetastasen-1}}

---