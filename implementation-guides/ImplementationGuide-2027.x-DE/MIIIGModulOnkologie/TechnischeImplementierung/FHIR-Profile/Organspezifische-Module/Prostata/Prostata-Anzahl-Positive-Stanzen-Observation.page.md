---
parent: 
topic: ProstataAnzahlPositiveStanzen
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen
---

## {{page-title}}

---

### Inhalt
Dieses Profil beschreibt die Anzahl der tumorpositiven Stanzen bei der Prostatabiopsie. Diese Information ist entscheidend für die Risikoeinschätzung und Therapieplanung, da sie das Ausmaß der Tumorausbreitung in der Prostata widerspiegelt.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet LOINC zur Kodierung. Der Wert wird als Quantity mit der Einheit "Stück" angegeben.

---

### Verknüpfungen zu anderen Ressourcen
Die Anzahl positiver Stanzen ist ein wichtiger Biopsie-Parameter:
- verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
- verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
- kann über `Observation.partOf` mit der entsprechenden Biopsie-Procedure verknüpft werden
- steht in Relation zur Gesamtanzahl der Stanzen (separate Observation)

---

### oBDS-Kontext
Gemäß oBDS P4.2 wird die Anzahl der tumorpositiven Stanzen dokumentiert. Diese Information ist zusammen mit der Gesamtanzahl der Stanzen essentiell für die Beurteilung der Tumorlast.

### Terminologie-Binding
Der LOINC-Code für die Anzahl positiver Stanzen ist **required** gebunden.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen' 
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
    for differential.element where id.contains('Prostata.BiopsieErgebnisse.AnzahlPositiverStanzen')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen'  
    for differential.element
    where mapping.identity='oBDS'
    select 
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

---

**Suchparameter**

Folgende Suchparameter sind für das Prostata-Anzahl-Positive-Stanzen Profil relevant:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    ```GET [base]/Observation?_id=12345```

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen```

1. Der Suchparameter "code" MUSS unterstützt werden:

    ```GET [base]/Observation?code=http://loinc.org|33746-2```

1. Der Suchparameter "value-quantity" MUSS unterstützt werden:

    ```GET [base]/Observation?value-quantity=gt3```

---
**Beispiele**

{{json:mii-exa-onko-prostata-anzahl-positiver-stanzen-1}}

---