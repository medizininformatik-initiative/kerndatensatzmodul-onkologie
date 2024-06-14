---
parent: 
topic: CarePlan
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante
---

## {{page-title}}




### Kontext

Die Informationen zu genetischen Varianten werden seit der Version 2021 als Teil des oBDS erfasst. Die Erfassung einer Variante erfolgt dabei über zwei Datenfelder: 
* 'Genetische Variante Name' als Freitext 
* 'Genetische Variante Ausprägung' als oBDS-spezifische Codes für die Interpretation. 

Die MII bietet mit dem Molekulargenetischen Befundbericht (MolGenBB) bereits eine Struktur für den Austausch genetischer Befunde. Der MolGenBB basiert auf dem GenomicReport (Version STU2) der internationalen HL7 Clinical Genomics Working Group und verwendet internationale Terminologien und Nomenklaturen wie: 
* **HGNC** für die eindeutige Beschreibung von Gennamen
* **HGVS** für die Beschreibung von Varianten im kodierenden und nicht-kodierenden DNA-Bereich sowie für Proteine
* **ISCN** für Beschreibung cytogenomischer Position und strukturellen Varianten 
* **Sequence Ontology** für die semantische Annotation der Varianten

Es ist davon auszugehen, dass die genetischen Labore und bioinformatischen Pipelines auf Basis dieser Klassifikationen arbeiten oder diese abbilden können. 

Die grobkörnige Erfassung der Variantendaten im oBDS macht jedoch ein direktes Mapping auf die oben genannten Terminologien und Nomenklaturen unmöglich. 


### Conformance Statements
Nach Möglichkeit **SOLLTE** eine genauere Variantenbeschreibung über die MII Variante erfolgen. 

Eine Einbindung dieser Varianten **SOLLTE** über die Einbettung in den MII Molekulargenetischen Befundbericht `DiagnosticReport`und die MII Molekulargenetische Anforderung `ServiceRequest` erfolgen. 

Für den Fall, dass diese Module an den DIZ-Standorten gar nicht, noch nicht oder nur teilweise implementierbar sind, **SOLL** ein direktes Mapping der oBDS-Felder auf folgende Felder erfolgen:  
* `Observation.note` für Variante Name
* `Observation.interpretation` für die Ausprägung der Variante. 

### Übersicht MII Variante
Das Variantenprofil des Molekularen Befundberichts ist hier zu finden: 
https://simplifier.net/medizininformatikinitiative-modulomics/sdmiimolgenvariante

Bei der Verwendung der MII Variante sind folgende Datenfelder zur Konformanz zwingend erforderlich: 
* `subject`: Referenz auf einen Patient
* `code` : fester LOINC-Code( 69548-6) zur Identifikation als Untersuchung einer genetischen Variante
* `status` :  HL7 Status
* `category`: fester HL7-Code zur Einordnung als Laborwert 

Optional können darüber hinaus folgende Angaben gemacht werden: 
* `specimen`:  Referenz auf die Bioprobe 
* `method`: Methodik der Untersuchung 
* `valueCodeableConcept` Varianten-Assessment (präsent, nicht präsent, nicht gecalled, unbestimmt)
* `component`: alle weiteren Details über die methodische Durchführung und Auswertung sowie Varianteninformationen   



@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante' 
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
    for differential.element where id.contains('GenetischeVariante')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante'  
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

2. Der Suchparameter ```_profile``` MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante```
    
    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?status=final

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".```

4. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

5. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

6. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

7. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

8. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

9. Der Suchparameter "interpretation" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?interpretation=http://snomed.info/sct|55446002```

    Anwendungshinweise: Weitere Informationen zur Suche nach "interpretation" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".

10. Der Suchparameter "method" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?method=http://loinc.org|LA26398-0

    Anwendungshinweise: Weitere Informationen zur Suche nach "method" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".```

11. Der Suchparameter "specimen" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?specimen=Specimen/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

12. Der Suchparameter "device" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?device-from=Device/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "device" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

13. Der Suchparameter "derived-from" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?derived-from=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "derived-from" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

**Beispiele**

{{json:mii-exa-onko-genetische-variante-braf}}

---
