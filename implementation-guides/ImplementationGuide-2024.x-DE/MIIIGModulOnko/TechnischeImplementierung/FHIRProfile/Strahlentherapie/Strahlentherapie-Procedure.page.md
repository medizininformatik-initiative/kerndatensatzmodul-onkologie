---
parent: 
topic: StrahlentherapieProcedure
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie
---

## Strahlentherapie

Dieses Profil beschreibt eine Operation in der Onkologie. Das Operationsprofil für die Onkologie basiert auf dem Prozedurenmodul der MII. Es übernimmt damit die zwingende Angabe von OPS als Kodierung für die Art der Prozedur. 

Da die Details der Prozedur in den einzelnen Bestrahlungselementen hinterlegt sind, SOLLTE hier der OPS-Code wie folgt vergeben werden: 
 - 8-52 "Strahlentherapie" oder spezifischer 
 - 8-53 "Radionuklidtherapie" oder spezifischer
Die OPS-Kodierung SOLLTE so detailliert wie möglich übernommen werden.  


Das MII-Modul Prozedur besitzt bereits eine Extension [Durchführungsabsicht](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht) mit Binding auf SNOMED-CT Codes. Da die Intention der Strahlentherapie im oBDS jedoch durch ein oBDS-spezifisches Antwortspektrum erfasst wird, wurde die Prozedur um eine zusätzliches Element "Intention" erweitert. Ebenso wird der Zusammenhang zu eventuellen Operationen (z.b. adjuvant/neoadjuvant) über das Erweiterungselement "Stellung" erfasst.   

Die spezifischen Details der Strahlentherapie werden in einzelnen Bestrahlungen unterteilt und berichtet. Dabei wird jede Bestrahlung als Extension erfasst. 

Komplikationen der Strahlentherapie werden nicht als `Procedure.complication` oder `Procedure.complicationReference` kodiert, sondern wie bei der Systemischen Therapie in einer gesonderten AdverseEvent-Ressource mit Verweis auf die Strahlentherapie-Ressource erfasst. Es ist dabei zu beachten, dass ein Verweis auf die Strahlentherapie-Ressource unspezifisch auf die komplette Strahlentherapie und nicht auf einzelne Bestrahlungen zeigt. 

Der Grund der Beendigung (unabhängig ob erfolgreich oder nicht erfolgreich) wird über `Procedure.outcome` kodiert.

### Struktur 
Die Entscheidung, die Bestrahlungsdaten als Extension umzusetzen, hat mehrere Gründe. 
1. Die Datenstruktur des oBDS sieht die Angabe von einer StrahlentherapieGesamtperiode mit Start und Ende sowie einem Gesamt-Intentions und Stellung-zur-OP-Datenpunkt. Alle weiteren strukturierten Behandlungsinformationen zur Bestrahlung (Strahlenart, Lokalisation, Dosis, Boost etc) sollen gemeinsam als Bestrahlung vorliegen. 
2. Die MII-Prozedur verlangt, dass 

3. Die US-amerikanische FHIR-Datenmodell mCODE bildet die relevanten Datenpunkte in Extensions ab. Zu erwähnen ist allerdings, dass es bei mCODE hier keine Unterscheidung in übergeordnete Strahlentherapie und untergeordnete Bestrahlung gibt. mCODe sieht jedoch dafür auch detaillierte Angaben zur Größe des Zielvolumens 

Alternativ wurde auch eine Umsetzung diskutiert, die übergreifende Strahlentherapie als Profil konform zur MII-Prozedur zu belassen, und die Hier wurde kritisch angemerkt,  

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie' 
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
    for differential.element where id.contains('Strahlentherapie')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie'  
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

    ```GET [base]/Procedure?outcome=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund|R1```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Durchfuehrungsabsicht" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).    

1.  Der Suchparameter "extension-intention" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?extension-intention=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention|K```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Intention" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).    

1.  Der Suchparameter "extension-stellung" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?extension-stellung=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-stellung|K```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Stellung" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).   

1.  Der Suchparameter "extension-stellung" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?extension-stellung=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-stellung|K```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Stellung" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).    



1.  Der Suchparameter "extension-bestrahlung-applikationsart" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?extension-bestrahlung-applikationsart=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-applikationsart|KLDR```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Stellung" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).    


1.  Der Suchparameter "extension-bestrahlung-strahlenart" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?extension-bestrahlung-strahlenart=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-strahlenarart|PN```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Stellung" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).    


1.  Der Suchparameter "extension-bestrahlung-zielgebiet" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?extension-bestrahlung-zielgebiet=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-zielgebiet|4.9```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Bestrahlung.extension:Applikationsart" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  Der Suchparameter "extension-bestrahlung-zielgebiet-Lateralitaet" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?extension-bestrahlung-zielgebiet-Lateralitaet=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation|L```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Bestrahlung.extension:Zielgebiet_Lateralitaet" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"]
(http://hl7.org/fhir/R4/search.html#token).


1.  Der Suchparameter "extension-bestrahlung-boost" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?extension-bestrahlung-boost=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost|SIB```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Bestrahlung.extension:Boost" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"]

1.  Der Suchparameter "extension-bestrahlung-einzeldosis" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?extension-bestrahlung-einzeldosis=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-einzeldosis```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Bestrahlung.extension:Einzeldosis" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Quantity Search"]

1.  Der Suchparameter "extension-bestrahlung-gesamtdosis
" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?extension-bestrahlung-gesamtdosis=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-gesamtdosis```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Bestrahlung.extension:Gesamtdosis" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Quantity Search"]

**Beispiele**

{{json:mii-exa-onko-strahlentherapie}}

---