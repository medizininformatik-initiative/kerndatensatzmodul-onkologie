---
parent: 
topic: KRKSpecimen
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen
---

## {{page-title}}

---

### Inhalt
Dieses Profil beschreibt Gewebeproben (Specimens) beim Kolorektalen Karzinom, die im Rahmen operativer Eingriffe entnommen werden. Es umfasst sowohl die Charakterisierung des Gewebes als auch spezifische pathologische Aspekte wie die TME-Qualität (Totale mesorektale Exzision) bei Rektumkarzinomen.

Das Profil basiert auf einer FHIR Specimen-Ressource und stellt die Verbindung zwischen der chirurgischen Entnahme und der pathologischen Aufarbeitung her.

---

### Verknüpfungen zu anderen Ressourcen
Das KRK-Specimen ist ein wichtiges Bindeglied in der Diagnostikkette:
- verweist über `Specimen.subject` auf den Patienten (Patient-Ressource)
- steht in Bezug zur Entnahme-Procedure über `Specimen.collection.procedure`
- kann mit pathologischen Observations verknüpft werden (z.B. Histologie, Grading)
- dient als Basis für die Bestimmung von Resektionsrändern und TNM-Klassifikation

---

### oBDS-Kontext
Das KRK-Specimen bildet die Grundlage für verschiedene oBDS-Bewertungen:
- Pathologische Beurteilung des Resektats
- TME-Qualität bei Rektumkarzinomen (KR4)
- Histopathologische Charakteristika des Tumors
- Resektionsrandbeurteilung

### Terminologie-Binding
Das Profil verwendet spezialisierte ValueSets für kolorektale Specimens, insbesondere für die Bewertung der TME-Qualität und anderer pathologischer Parameter.

#### ValueSet: MII VS Onko KRK TME Qualität

@```
from ValueSet 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-tme-qualitaet'
select
    Name: name, Status: status, Version: version, Canonical: url
```

@```
from ValueSet 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-tme-qualitaet'
    for expansion.contains
    select
        Code: code, Display: display, System: system
```

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen' 
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
    for differential.element where id.contains('KolorektalesKarzinom.PathologischeBewertung.TMEQualitaet')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen'  
    for differential.element
    where mapping.identity='oBDS'
    select 
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

---

**Suchparameter**

Folgende Suchparameter sind für das KRK-Specimen Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Specimen.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "type" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?type=http://snomed.info/sct|119376003```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Specimen.type" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Specimen?status=available```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Specimen.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

---
**Beispiele**

{{json:mii-exa-onko-krk-specimen}}

---