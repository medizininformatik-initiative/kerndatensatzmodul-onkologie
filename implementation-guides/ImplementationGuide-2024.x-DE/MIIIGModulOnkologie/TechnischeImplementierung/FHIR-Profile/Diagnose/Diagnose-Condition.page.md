---
parent: 
topic: DiagnoseCondition
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose
---

## {{page-title}}

---

### Inhalt
Dieses Profil beschreibt eine Diagnose in der Onkologie. Es basiert auf dem MII-Diagnosemodul. 

Der oBDS erwartet die Kodierung der Diagnose via ICD-10 sowie die Kodierung der Topographie des Primärtumors und der histologischen Morphologie über ICD-O-3. In FHIR kann diese Kombination bereits vollständig über die MII-Diagnose abgebildet werden: 
* ICD-10-GM über `Condition.code[icd10-gm]`, (abgeleitet von MII-Diagnose)
* ICD-O-3-Morphologie über `Condition.extension[morphology-behavior-icdo3]` (vergleichbar mCODE-Erweiterung)
* ICD-O-3-Topgraphie über `Condition.bodySite`. 

Weitere histologische Untersuchungen mit abweichenden Morphologien im Therapieverlauf SOLLEN über das Histologie-Profil erfasst werden. 

---

### Verknüpfungen zu anderen Ressourcen
Die onkologische Diagnose ist das zentrale Kernelement des Basisdatensatzes. Alle fallbezogenen Beobachtungen sind direkt oder indirekt damit verknüpft: 
- alle Beobachtungen verweisen über `Observation.focus` auf die Primärdiagnose
- die Tumorkonferenz-Ressource verweist über `CarePlan.addresses` auf die Primärdiagnose
- alle Prozeduren (OP, Strahlentherapie, Systemische Therapie) verweisen über `reasonReference` auf die Primärdiagnose

---

### Zeitliche Zuordnung im Verlauf
Im oBDS ist eine Zuordung der Beobachtungen als wichtig für die Erstdiagnosestellung dadurch gegeben, dass diese Teil der Diagnosemeldung sind. Spätere Meldungen können dann bsw. als Verlaufs-, Pathologie- oder Todesmeldung gemacht werden. 

Beobachtungen, die nach Stellung der Erstdiagnose  gemacht werden, verweisen in der vorliegenden Profilierung auf eine "Verlauf"-Observation-Ressource mit einem eigenen Datum. 
Die Beobachtungen, die zum Zeitpunkt der Erstdiagnosestellung bekannt sind, sind von besonderem Interesse für prognostische Forschungsfragen. Um diese Datenpunkte leichter zu identifizieren, **SOLLEN** alle Beobachtungen aus der oBDS-Diagnosemeldung in einer FHIR-Liste mit dem Profil "Evidenz Erstdiagnose" über `evidence.detail` referenziert werden. 

---

### Konformität 
Die vorliegende Profilierung ist kompatibel mit dem Diagnoseprofil der ISiK-Basismodule Stufe 4. https://simplifier.net/isik-basis-v4/isikdiagnose

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose' 
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
    for differential.element where id.contains('Diagnose')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose'  
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

    ```GET [base]/Condition?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?code=http://fhir.de/CodeSystem/bfarm/icd-10-gm|A15.0```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?patient=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "icd10gm-diagnosesicherheit" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?icd10gm-diagnosesicherheit=https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT|G```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code.coding.extension.where(url='http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit').value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "icd10gm-mehrfachcodierung" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?icd10gm-mehrfachcodierung=http://fhir.de/CodeSystem/icd-10-gm-mehrfachcodierungs-kennzeichen|†```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code.coding.extension.where(url='http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen').value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "icd10gm-seitenlokalisation" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?icd10gm-seitenlokalisation=https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION|B```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code.coding.extension.where(url = 'http://fhir.de/StructureDefinition/seitenlokalisation').value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

---
**Beispiele**

{{json:mii-exa-onko-diagnose}}

---
