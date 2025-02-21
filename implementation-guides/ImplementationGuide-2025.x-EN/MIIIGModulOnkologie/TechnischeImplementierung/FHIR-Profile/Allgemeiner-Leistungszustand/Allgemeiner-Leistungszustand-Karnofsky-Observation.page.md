---
parent: 
topic: AllgemeinerLeistungszustandObservation
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky
---


## {{page-title}}

### Context
This profile describes the general performance status of a patient in oncology according to Karnofsky.

The recording of the general performance status is prescribed in the oBDS.
The actual report is coded and transmitted as ECOG, with the response options allowing a mapping from the Karnofsky score.

In the previous oBDS and in the present FHIR profiles, both documentation of the ECOG with response options 0-4 and the Karnofsky score with 10%, 20%, etc. is permitted.
However, the current implementation guide contains a note that in the future only the ECOG should be reported. https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532323/Allgemeiner+Leistungszustand+Typ

In cases where the findings only refer to the general condition without coding in ECOG or Karnofsky, the documentation guide of the platform §65c recommends the development of internal guidelines for better reproducibility. https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/86310992/Allgemeiner+Leistungszustand 


@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-general-performance-status-ecog' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Content

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky' 
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
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
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky'  
    for differential.element
    where mapping.identity='oBDS'
    select 
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

---

**Search parameter**

The following search parameters are relevant for the Oncology Module, also in combination:

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

5. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/example```

    Application notes: Further information on searching by "encounter" can be found in the FHIR base specification - section "reference".
    

**Examples**

{{json:mii-exa-onko-allgemeiner-leistungszustand-1}}

---