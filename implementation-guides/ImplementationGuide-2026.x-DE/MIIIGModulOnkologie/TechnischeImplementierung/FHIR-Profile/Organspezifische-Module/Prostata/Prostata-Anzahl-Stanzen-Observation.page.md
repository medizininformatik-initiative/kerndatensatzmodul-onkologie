---
parent: 
topic: ProstataAnzahlStanzen
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-stanzen
---

## {{page-title}}

---

### Inhalt
Dieses Profil beschreibt die Gesamtanzahl der entnommenen Biopsie-Stanzen bei der Prostatabiopsie. Diese Information ist wichtig für die Bewertung der Repräsentativität der Biopsie und die Interpretation der Befunde.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet LOINC zur Kodierung. Der Wert wird als Quantity mit der Einheit "Stück" angegeben.

---

### Verknüpfungen zu anderen Ressourcen
Die Anzahl der Stanzen ist eine wichtige Biopsie-Parameter:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.partOf` mit der entsprechenden Biopsie-Procedure verknüpft werden

---

### oBDS-Kontext
Gemäß oBDS P4.1 wird die Gesamtanzahl der entnommenen Biopsie-Stanzen dokumentiert. Diese Information ist essentiell für die Beurteilung der Adequatheit der Probeentnahme.

### Terminologie-Binding
Der LOINC-Code für die Anzahl der Stanzen ist **required** gebunden.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-stanzen' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-stanzen'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-stanzen' 
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
    for differential.element where id.contains('Prostata.BiopsieErgebnisse.AnzahlStanzen')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-stanzen'  
    for differential.element
    where mapping.identity='oBDS'
    select 
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

---

**Suchparameter**

Folgende Suchparameter sind für das Prostata-Anzahl-Stanzen Profil relevant:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    ```GET [base]/Observation?_id=12345```

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-stanzen```

1. Der Suchparameter "code" MUSS unterstützt werden:

    ```GET [base]/Observation?code=http://loinc.org|33747-0```

1. Der Suchparameter "value-quantity" MUSS unterstützt werden:

    ```GET [base]/Observation?value-quantity=gt10```

---
**Beispiele**

{{json:mii-exa-onko-prostata-anzahl-stanzen-1}}

---