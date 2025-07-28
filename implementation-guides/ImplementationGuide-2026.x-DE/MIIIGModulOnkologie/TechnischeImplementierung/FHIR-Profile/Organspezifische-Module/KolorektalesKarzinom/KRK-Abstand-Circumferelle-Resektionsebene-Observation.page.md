---
parent: 
topic: KRKAbstandCircumferelleResektionsebene
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-circumferelle-resektionsebene
---

## {{page-title}}

---

### Inhalt
Dieses Profil beschreibt den minimalen Abstand des Tumorrandes zur circumferellen Resektionsebene beim Kolorektalen Karzinom gemäß oBDS KR3. Diese Messung ist ein wichtiger prognostischer Faktor und wird sowohl makroskopisch als auch mikroskopisch bestimmt. Ein geringer circumfereller Resektionsrand ist mit einem erhöhten Lokalrezidivrisiko assoziiert.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet ein dediziertes ValueSet zur Unterscheidung zwischen makroskopischer und mikroskopischer Bewertung. Der Abstand wird als Quantity-Wert in Millimetern angegeben.

---

### Verknüpfungen zu anderen Ressourcen
Die circumferelle Resektionsrandmessung ist eine wichtige pathologische Beobachtung:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

---

### oBDS-Kontext
Die Abstandsmessung entspricht dem oBDS-Datenfeld KR3 "Minimaler Abstand des Tumorrandes zur circumferellen Resektionsebene" und wird in Millimetern dokumentiert. Die Unterscheidung zwischen makroskopischer und mikroskopischer Bewertung ist durch das entsprechende ValueSet abgebildet.

### Terminologie-Binding
Das ValueSet für die circumferelle Resektionsebene ist **extensible** gebunden und unterscheidet zwischen makroskopischer und mikroskopischer Bewertung der Resektionsränder.

#### ValueSet: MII VS Onko KRK Abstand Circumferelle Resektionsrand

@```
from ValueSet 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-abstand-circumferelle-resektionsebene'
select
    Name: name, Status: status, Version: version, Canonical: url
```

@```
from ValueSet 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-abstand-circumferelle-resektionsebene'
    for expansion.contains
    select
        Code: code, Display: display, System: system
```

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-circumferelle-resektionsebene' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-circumferelle-resektionsebene'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-circumferelle-resektionsebene' 
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
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/OrganspezifischeZusatzmodule'
    for differential.element where id.contains('KolorektalesKarzinom.PathologischeBewertung.AbstandCircumferelle')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-circumferelle-resektionsebene'  
    for differential.element
    where mapping.identity='oBDS'
    select 
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

---

**Suchparameter**

Folgende Suchparameter sind für das KRK-Circumferelle-Resektionsebene Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-circumferelle-resektionsebene```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-abstand-circumferelle-resektionsebene|makroskopisch```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/primaertumor```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.focus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "value-quantity" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?value-quantity=2|http://unitsofmeasure.org|mm```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.value[x]" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

---
**Beispiele**

{{json:mii-exa-onko-krk-abstand-circumferelle-resektionsebene}}

---