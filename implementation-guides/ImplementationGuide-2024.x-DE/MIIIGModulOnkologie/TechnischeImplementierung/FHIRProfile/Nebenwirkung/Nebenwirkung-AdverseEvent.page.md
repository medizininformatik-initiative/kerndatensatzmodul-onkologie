---
parent: 
topic: AdverseEvent
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event
---

## {{page-title}}

Dieses Profil beschreibt die Nebenwirkung von Strahlentherapie und systemische Therapie in der Onkologie.

Die Art Nebenwirkung kann entweder als CTCAE-Terminus oder als medDRA-Nummer beschrieben werden. 
Weitere Hinweise sind der Dokumentationsleitfaden https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/93683749/Nebenwirkungen
zu entnehmen. Außerdem stellt die Plattform §65c eine kuratierte Liste mit übersetzten CTCAE-Begriffen und den dazugehörigen medDRA-Nummern bereit. 
https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15533115/Nebenwirkungen+CTCAE



@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event'
        select
	        Beschreibung: description
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
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

Mapping Datensatz zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie'
    for differential.element where id.contains('Nebenwirkungen')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

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

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter ```_id``` MUSS unterstützt werden:

    Beispiele: 

    ```GET [base]/AdverseEvent?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter ```_profile``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/AdverseEvent?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter ```event``` MUSS unterstützt werden:
    Beispiele:

    ```GET [base]/AdverseEvent?event=https://www.meddra.org|10016256```

    Anwendungshinweise: Weitere Informationen zur Suche nach "event" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

4. Der Suchparameter ```serverity``` MUSS unterstützt werden:
    
    Beispiele:

    ```GET [base]/AdverseEvent?severity=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-vs-onko-nebenwirkung-ctcae-grad|4```

    Anwendungshinweise: Weitere Informationen zur Suche nach "severity" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

5. Der Suchparameter ```suspectEntity.instance``` MUSS unterstützt werden:
    
    Beispiele:

    ```GET [base]/AdverseEvent?suspectEntity.instance=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "severity" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#all).

**Beispiele**

{{json:mii-pr-onko-nebenwirkung-0}}

---
