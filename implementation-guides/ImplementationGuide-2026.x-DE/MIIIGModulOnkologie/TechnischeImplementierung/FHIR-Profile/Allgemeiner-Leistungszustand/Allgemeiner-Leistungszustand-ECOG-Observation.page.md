---
parent: 
topic: AllgemeinerLeistungszustandECOG
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog
---


## {{page-title}}

### Kontext
Dieses Profil beschreibt den allgemeinen Leistungszustand eines Patienten in der Onkologie nach ECOG.

Die Erfassung des allgemeine Leistungszustand wird im oBDS vorgeschrieben. 
Dabei wird die eigentliche Meldung als ECOG kodiert und übertragen, wobei die Antwortmöglichkeiten ein Mapping vom Karnofsky-Score ermöglichen. 

Im bisherigen oBDS und in den vorliegenden FHIR-Profilen ist sowohl eine Dokumentation des ECOG mit den Antwortmöglichkeiten 0-4 als auch des Karnofsky-Scores mit 10%, 20% etc.  gestattet. 
Der aktuelle Umsetzungsleitfaden enthält jedoch einen Hinweis, dass in Zukunft ausschließlich der ECOG gemeldet werden soll. https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532323/Allgemeiner+Leistungszustand+Typ

Für den Fall, dass in den Befunden nur Bezug auf den Allgemeinzustand genommen wird, ohne dabei in ECOG oder Karnofsky zu kodieren, empfiehlt der Dokumentationsleitfaden der Plattform §65c die Entwicklung hausinterner Richtlinien zur besseren Reproduzierbarkeit. https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/86310992/Allgemeiner+Leistungszustand

### ECOG-Karnofsky Mapping: oBDS vs. klinische Literatur

**Wichtiger Hinweis**: Es existieren unterschiedliche ECOG-Karnofsky-Konversionstabellen in der Literatur:

**oBDS 12.1 Spezifikation** (in diesem Profil verwendet):
- ECOG 0 = Karnofsky 90-100%
- ECOG 1 = Karnofsky 70-80%
- ECOG 2 = Karnofsky 50-60%
- ECOG 3 = Karnofsky 30-40%
- ECOG 4 = Karnofsky 10-20%

**Klinische Literatur** (Buccheri et al., 1996; Ma et al., 2010):
- ECOG 0 = Karnofsky 100%
- ECOG 1 = Karnofsky 80-90%
- ECOG 2 = Karnofsky 70%
- ECOG 3 = Karnofsky 50-60%
- ECOG 4 = Karnofsky 10-40%

Die oBDS-Mappings sind gegenüber der klinischen Literatur um ca. 10-20% nach unten verschoben. Da diese Profile den oBDS implementieren, verwenden alle Referenzbereiche und ObservationDefinitions die oBDS-Spezifikation.

Implementierer sollten sich dieser Unterschiede bewusst sein, insbesondere bei der Konversion zwischen ECOG und Karnofsky oder beim Austausch mit internationalen Systemen, die möglicherweise andere Konversionstabellen verwenden.

### LOINC-Unterstützung für internationale Interoperabilität

Das Profil unterstützt optionale LOINC-Kodierung zusätzlich zur verpflichtenden oBDS-Kodierung:

- **`code.coding`**: Neben dem verpflichtenden SNOMED CT Code (423740007) kann optional der LOINC Code 89262-0 angegeben werden
- **`valueCodeableConcept.coding`**: Neben der verpflichtenden oBDS-Kodierung können optional LOINC Answer List Codes angegeben werden

Zur Übersetzung zwischen oBDS- und LOINC-Codes steht folgende ConceptMap zur Verfügung:

@```
from ConceptMap
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc'
    for group.element
        select
            oBDS_Kodierung: code,
            oBDS_Label: display,
            LOINC_Code: target.code,
            LOINC_Display: target.display,
            Aequivalenzlevel: target.equivalence,
            Kommentar: target.comment
```


@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog' 
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog' 
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
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog'  
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

    ```GET [base]/Observation?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).
3. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

4. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

5. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
    
6. Der Suchparameter "value-concept" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?value-concept=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog|2```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

**Beispiele**

{{json:mii-exa-onko-allgemeiner-leistungszustand-ecog-1}}

---