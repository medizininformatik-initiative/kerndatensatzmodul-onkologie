---
parent: 
topic: CarePlan
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz
---

## {{page-title}}





Dieses Profil beschreibt die Tumorkonferenz und die Therapieempfehlungen.
Die Datenfelder sind seit der Version 2021 Teil des oBDS und werden in zwei verschiedenen Modulen erfasst. Da alle beteiligten Felder sehr gut über die FHIR CarePlan-Ressource abbildbar sind, wurden alle die Tumorkonferenz- und Therapieemfpehlungsfelder im Tumorkonferenz-Profil zusammengefasst.  

Das Tumorkonferenz-Profil umfasst daher
* die Referenz auf Patient über `subject`
* die Referenz auf die Primärdiagnose über `addresses`.
* die Kategorie des Plans nach oBDS über `category`
* das Datum über `created`
* einzelne Empfehlungen (`activity`)mit jeweils den folgenden Elementen: 
    * die oBDS-Kodierung der vorgeschlagenen Therapiemaßnahme`code`
    * Der Status der einzelnen Aktivitäten unter`status` gemäß den HL7 FHIR status codes
    * Bei Abbruch: Die Angabe, ob therapiespezifisch auf Wunsch des Patienten abgebrochen wurde, unter `statusReason`

Die CarePlan-Ressource sieht eine verpflichtende Angabe des `status`-Elements einer `activity` vor. Diese Informationen sind in dieser Form nicht im oBDS  enthalten. Die tatsächlich erfolgten Therapien werden jedoch in den Krebsregisterdaten erfasst und SOLLEN  über `Procedure.basedOn(Reference(CarePlan))` auf die Tumorkonferenz-Ressource verweisen. 

Die Statusangaben geben den tatsächlichen Stand der Therapieempfehlung wieder. Für alle Statusangaben gilt das offizielle FHIR CarePlanActivityStatus-CodeSet.  
https://www.hl7.org/fhir/R4/valueset-care-plan-activity-status.html  
Es SOLLTEN folgende Status-Codes verwendet werden: 
- `completed` bei abgeschlossener Therapie,
- `on-hold` bei Therapieunterbrechung für noch nicht gestartete Therapie
- `stopped` bei Therapieunterbrechung für bereits gestarteter Therapie
- `unknown` für unbekannt, soweit keine Informationen über den Status vorliegen. 

Bei den Statusangaben `on-hold` und `stopped` SOLL das Feld `statusReason` mit den Angaben aus dem oBDS-Feld 'Therapieabweichung auf Wunsch des Patienten'  befüllt werden.

Jede Tumorkonferenz mit Therapieempfehlung SOLL als einzelne Ressource gespeichert und über `CarePlan.addresses(Reference(Condition))` auf die Primärdiagnose referenzieren. 

### Zukünftige Entwicklungen
Im Rahmen des MII-Erweiterungsmoduls Molekulares Tumorboard wurden die Modellierung der Therapieempfehlungen nochmal überarbeitet. In der derzzeitigen Profilierung werden die Empfehlungen alle explizit unter CarePlan.activity kodiert. Für die spätere Verwendung ist das insofern unpraktikabel, als dass diese nicht von außen logisch referenziert werden können. Es ist daher geplant, Änderungen an der CarePlan-Ressource aus der FHIR-Version R5 zu übernehmen, so dass die Empfehlungen nicht mehr explizit gelistet sind, sondern über `CarePlan.plannedActivityReference`als konkrete `ServiceRequests` bzw. `MedicationRequest` referenziert werden können. Auf die gleiche Art und Weise können tatsächlich stattgefundene Prozeduren und Medikationen unter `CarePlan.performedActivity`.

Es wird hier in der nächsten Version zu einer Umprofilierung kommen, die keinen breaking change vorraussetzt, aber die Informationen anders strukturiert und die Erschließung von neuen FHIR-Ressourcen und Suchparametern erfordert.
- Erstellung von Extensions für die Verwendung der R5-Elemente in R4 
- Erstellung von Profile für Therapieempfehlungen (ServiceRequest / MedicationRequest)
- Erstellung eines RequestGroup-Profils zur Abbildung von Kombinationstherapien


@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz' 
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
    for differential.element where id.contains('Tumorkonferenz')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz'  
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

    ```GET [base]/CarePlan?_id=1234```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter ```_profile``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/CarePlan?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter ```identifier``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/CarePlan?identifier=Tumorkonferenz_1```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"].

4. Der Suchparameter ```category``` MUSS unterstützt werden:
    Beispiele:

    ```GET [base]/CarePlan?category=http://snomed.info/sct|734163000```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"].

5. Der Suchparameter ```subject``` MUSS unterstützt werden:
    Beispiele:
    
    ```GET [base]/CarePlan?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "identifier" oder Abschnitt "[type]"].

6. Der Suchparameter ```period``` MUSS unterstützt werden:
    Beispiele:
    
    ```GET [base]/CarePlan?date=eq2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"].

7. Der Suchparameter ```contributor``` MUSS unterstützt werden:
    Beispiele:
    
    ```GET [base]/CarePlan?contributor=Practitioner/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "identifier" oder Abschnitt "[type]"].

8. Der Suchparameter ```addresses``` MUSS unterstützt werden:
    Beispiele:
    
    ```GET [base]/CarePlan?addresses=Condition/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "identifier" oder Abschnitt "[type]"].

9. Der Suchparameter ```activity-code``` MUSS unterstützt werden:
    Beispiele:
    
    ```GET [base]/CarePlan?activity-code=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapieempfehlung-typ|OP```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"].

**Beispiele**

{{json:mii-exa-onko-tumorkonferenz-01}}

---
