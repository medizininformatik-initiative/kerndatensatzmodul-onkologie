---
parent: 
topic: OperationProcedure
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation
---

<style>
  img {
    max-width: 100%;
    height: auto;
  }
</style>

## Operation

Dieses Profil beschreibt eine Operation in der Onkologie. 

- Das Operationsprofil für die Onkologie ist vom Prozedurenmodul der MII abgeleitet und für oBDS-Inhalten zusätzlich ausspezifiziert. https://simplifier.net/guide/mii-ig-modul-prozedur-2024-de/MIIIGModulProzedur/TechnischeImplementierung/FHIRProfile/Prozedur-Procedure.page.md?version=current 

### Kategorie und Code

- Die MII-Prozedur empfiehlt die Abbildung der Kategorie mittels der in SNOMED übertragenen OPS-Hauptkategorien (https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct) , wobei der SNOMED-Code `38771300` der OPS-Kategorie "5 - Operationen" entspricht. Laut oBDS kann hier aber in begründeten Fällen auch ein andere Kodierung (z.B. `103693007`	 für "1 - Diagnostische Maßnahmen") eigetragen werden. Die Kategorie wird aus diesem Grund nicht weiter eingeschränkt. 
- Die genaue Art der Prozedur wird im Feld `Procedure.code` kodiert. **WICHTIG**: Jede Procedure MUSS einen Code haben - entweder OPS oder SNOMED CT.
- Primär SOLL ein OPS-Code verwendet werden. Wenn kein passender OPS-Code existiert, MUSS ein SNOMED CT Code gewählt werden.
- Pro Procedure-Ressource SOLL maximal ein OPS-Wert kodiert werden. Zusätzliche Prozeduren werden als einzelne Procedure-Ressourcen abgebildet.   
- Achtung: Innerhalb des KDS-Moduls Onkologie wird die übergeorndete MII-Prozedur auch für die Abbildung der Strahlen- und Systemischen/abwartenden Therapie genutzt. Für die Besondheiten bei Kategorien und Code - siehe [Strahlentherapie:Procedure  ](https://simplifier.net/guide/mii-ig-modul-onkologie-2024-de/MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Strahlentherapie-Procedure.page.md?version=current) und [Systemische Therapie: Procedure](https://simplifier.net/guide/mii-ig-modul-onkologie-2024-de/MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Procedure.page.md?version=current).

### Mehrteilige Eingriffe und zusammenhängende Operationen

Bei komplexen onkologischen Eingriffen werden häufig mehrere operative Prozeduren in einer Sitzung durchgeführt. Da pro Procedure-Ressource nur ein OPS-Code kodiert werden sollte, werden zwei Modellierungsansätze unterstützt:

#### Ansatz 1: Übergeordnete Procedure mit allgemeinem Code

**WICHTIG**: Eine Procedure MUSS entweder einen OPS-Code ODER einen SNOMED CT Code haben. Wenn kein passender OPS-Code für die übergeordnete Procedure existiert, MUSS ein geeigneter SNOMED CT Code gewählt werden.

1. **Übergeordnete Procedure**: Eine Haupt-Procedure mit allgemeinem SNOMED CT Code für die Lokation/Art des Eingriffs
   - `Procedure.code`: SNOMED CT Code (z.B. 86481000 "Laparotomy (procedure)")
   - `Procedure.code.coding[ops]`: Bleibt leer, da kein spezifischer OPS-Code existiert
   - Diese Procedure SOLLTE das MII_PR_Onko_Operation Profil erfüllen
   - **Hinweis**: Der SNOMED CT Code muss aus verfügbaren SNOMED CT Konzepten gewählt werden

2. **Detaillierte Teil-Procedures**: Einzelne Procedure-Ressourcen für jeden spezifischen OPS-Code
   - Verknüpfung über `Procedure.partOf` zur übergeordneten Procedure
   - Jede mit ihrem spezifischen OPS-Code

**Beispiel:**
```
Procedure/haupteingriff (SNOMED: 176282005 "Resektion des Rektums")
├── Procedure/teileingriff1 (partOf → haupteingriff) 
│   └── OPS: 5-484.35 "Rektumresektion mit Anastomose"
└── Procedure/teileingriff2 (partOf → haupteingriff)
    └── OPS: 5-469.21 "Andere Operationen am Darm"
```

#### Ansatz 2: Gleichberechtigte Procedures

Bei komplexen Tumoroperationen, wo die Hierarchie nicht eindeutig ist:

1. **Alle Procedures gleichberechtigt**: Jede Procedure repräsentiert einen OPS-Code
2. **Gemeinsame übergeordnete Procedure optional**: Kann als Gruppierung dienen
3. **Alternative**: Eine der Procedures als "Haupt-Procedure" wählen (Entscheidung kann arbiträr sein)

**Hinweis zur Harmonisierung**: Die Entscheidung, welche Procedure als "Haupt-Procedure" gilt, kann bei komplexen Tumoroperationen schwierig und post-hoc kaum harmonisierbar sein.

#### Gemeinsame Aspekte bei mehrteiligen Eingriffen:

- **Zeitpunkt**: Alle verknüpften Prozeduren sollten dasselbe `performedDateTime` haben, wenn sie in einer Sitzung durchgeführt wurden
- **Intention**: Die Extension für die OP-Intention sollte bei allen verknüpften Prozeduren konsistent sein
- **Komplikationen**: Können bei der betroffenen Einzelprozedur oder bei der übergeordneten Procedure dokumentiert werden
- **Residualstatus**: Der lokale Residualstatus wird bei der resezierenden Prozedur dokumentiert
- **Referenzen**: Alle Procedures sollten auf dieselbe Primärdiagnose (`reasonReference`) und ggf. Tumorboard-Empfehlung (`basedOn`) verweisen

#### Visualisierung am Beispiel Kim Musterperson

<img src="https://raw.githubusercontent.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/dev/implementation-guides/ImplementationGuide-2026.x-DE/Images/MII_Onko_MultiPartSurgery_Example/MII_Onko_MultiPartSurgery_Example.png" alt="Multi-Part Surgery Example: Kim Musterperson">  


### Extensions

#### Intention
Das MII-Modul Prozedur besitzt bereits eine Extension [Durchführungsabsicht](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht) mit Binding auf SNOMED-CT Codes. Da die Intention der OP im oBDS jedoch durch ein oBDS-spezifisches Antwortspektrum erfasst wird, wurde die Prozedur um eine zusätzliches Element "Intention" erweitert. Vorhandene Erweiterungen des MII-Moduls Prozedur sind optional und für das Mapping von oBDS nicht direkt relevant.

Weitere Informationen: {{pagelink:OperationIntention}}

#### Urgency (Art des Eingriffs)
Die Extension "Urgency" erfasst die Modalität der Eingriffsdurchführung. Dieser Datenpunkt stammt ursprünglich aus dem organspezifischen Modul Kolorektales Karzinom (KRK 6 oBDS 2021), ist aber **universell auf alle Procedures anwendbar** und wurde daher in das allgemeine Operation-Profil integriert.

Die Extension unterscheidet zwischen:
- **E**: Elektiveingriff (geplanter Eingriff)
- **N**: Notfalleingriff
- **U**: Unbekannt

Diese Extension ist besonders relevant für die Qualitätssicherung und statistische Auswertungen, da Notfalleingriffe oft andere Ergebnisse und Komplikationsraten aufweisen als geplante Eingriffe. Obwohl ursprünglich für kolorektale Eingriffe definiert, ist die Unterscheidung zwischen elektiven und Notfalleingriffen für alle chirurgischen Prozeduren klinisch relevant.

**Verwendung:**
```
* extension[urgency].valueCodeableConcept = $mii-cs-onko-operation-urgency#E "Elektiveingriff"
```

Weitere Informationen: {{pagelink:ExtensionUrgencyOperation}}

### Residualstatus und weitere Beobachtungen
Der oBDS sieht bei Resektion von Tumorgewebe eine Erfassung des R-Status vor. 
Je nach durchgeführter Prozedur soll die Beurteilung des Residualstatus dabei **lokal** oder **global** vorgenommen werden. Diese werden im oBDS als zwei verschieden Datenpunkte erfasst. In der vorliegenden FHIR-Profilierung ist der lokale Residualstatus (wenn zutreffend) unter Procedure.outcome kodiert. Der globale Residualstatus wird über eine eigene Observation erfasst (siehe Residualstatus: Observation.)

Es gibt nebem dem Residualstatus  weitere Datenpunkte, die auf eine Operation verweisen können und im oBDS gemeinsam mit dieser gemeldet werden. Dazu gehören die histologischen Untersuchungen (Lymphknoten, Grading) sowie ICD-O Morphologie, TNM und/oder ggfs. weitere Klassifikationen.

---

#### Verweise auf andere Profile
Eine im Rahmen der Krebsregister erfasste und gemeldete Operation basiert häufig auf einer Therapieempfehlung eines Tumorboards. In diesem Fall sollte eine Verknüpfung der Elemente über `Procedure.basedOn(Reference(CarePlan))` hergestellt werden.
Weiterhin verweist die Operation über `Procedure.reasonReference` auf die Primärdiagnose.  

---

### Konformität 
Die vorliegende Profilierung ist kompatibel mit dem Prozedurenprofil der ISiK-Basismodule Stufe 4. https://simplifier.net/isik-basis-v4/isikprozedur

---

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation' 
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
    for differential.element where id.contains('Operation')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation'  
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

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?category=http://snomed.info/sct|103693007```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?date=2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.performed" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?patient=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "bodySite" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?bodySite=http://snomed.info/sct|80891009```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.bodySite" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "dokumentationsdatum" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?dokumentationsdatum=2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Dokumentationsdatum" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "durchfuehrungsabsicht" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?durchfuehrungsabsicht=http://snomed.info/sct|262202000```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Durchfuehrungsabsicht" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "outcome" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?outcome=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus|R1```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Durchfuehrungsabsicht" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).    

1.  Der Suchparameter "extension-intention" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?extension-intention=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention|K```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Durchfuehrungsabsicht" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).   

**Beispiele**

{{json:mii-exa-onko-operation-1}}

---