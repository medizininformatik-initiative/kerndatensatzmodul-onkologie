---
parent: 
topic: WeitereKlassifikationenObservation
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen
---

## {{page-title}}

Dieses Profil beschreibt weitere Tumorklassifikationen neben TNM. 

### Abgrenzung: Staging, Grading und Risikobewertung

Die "Weiteren Klassifikationen" umfassen verschiedene Arten von Bewertungssystemen:

- **Staging-Systeme**: Bestimmen die anatomische Ausbreitung des Tumors (z.B. FIGO, Ann Arbor, AJCC)
- **Grading-Systeme**: Bewerten die histologische Differenzierung und biologische Aggressivität 
- **Risikobewertungssysteme**: Prognostische Scores basierend auf multiplen klinischen Parametern (z.B. IPI, FLIPI, IPSS)
- **Molekulare Klassifikationen**: Basieren auf genetischen/molekularen Markern (z.B. p16-Status, ELN-Klassifikation)

### Staging-Systeme (Anatomische Ausbreitung)
- **FIGO-Klassifikation** bei gynäkologischen Tumoren
- **AJCC-Klassifikationen** verschiedener Editionen (6., 7., 8. Edition)
- **Ann Arbor-Klassifikation** für Lymphome (Hodgkin und Non-Hodgkin)
- **Durie-Salmon Staging** für Multiples Myelom
- **Bismuth-Klassifikation** für Hiläres Cholangiokarzinom

### Grading- und Bewertungssysteme
- **Breslow/Clark-System** für Melanome (Tumordicke und Invasionstiefe)
- **GIST-Mitoserate** (Gastrointestinale Stromatumoren)
- **p16-Status** (Molekularer Marker, besonders bei HPV-assoziierten Karzinomen)

### Prognostische Risiko-Scores
- **Lymphome**: 
  - IPI (International Prognostic Index) für aggressive Non-Hodgkin-Lymphome
  - FLIPI für Follikuläre Lymphome
  - MIPI für Mantelzell-Lymphome
  - GHSG-Risikoklassifikation für Hodgkin-Lymphome
- **Leukämien**: 
  - European LeukemiaNet Classification (AML)
  - EUTOS Score (Chronische myeloische Leukämie)
  - Sanz Score (Akute Promyelozytenleukämie)
- **Myelodysplastisches Syndrom**: IPSS (International Prognostic Scoring System)
- **Multiple Myelom**: ISS/R-ISS (International Staging System)
- **Waldenström Makroglobulinämie**: ISSWM

Die Plattform §65c stellt einen Katalog bereit, wie die häufigsten Klassifikationen aus Harmonisierungsgründen **für die Krebsregistermeldung** zu kodieren sind:
https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532511/Weitere+Klassifikationen

### Implementierungshinweise

Aufgrund der Vielzahl der möglichen Skalen und Scores ist es nicht möglich, hier einen umfassenden und allgemeingültigen Katalog zu hinterlegen, so dass die konkrete Ausgestaltung den Herstellern und Systemen überlassen bleibt. HL7 Deutschland stellt dazu unter folgendem Link Hinweise bereit: https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Observation-Skalen-und-Scores.html

**Wichtiger Hinweis**: Für oBDS-spezifische Klassifikationen sollte zunächst geprüft werden, ob entsprechende SNOMED CT oder LOINC Codes verfügbar sind, bevor eigene oBDS-Codes verwendet werden.

### Abgrenzung zu organspezifischen Modulen

Folgende Klassifikationen werden in Zukunft über die organspezifischen Module abgedeckt und sollen nicht mehr über weitere Klassifikationen kodiert werden:
- **Gleason-Score** (Prostata-Modul)
- **Weitere organspezifische Scores** werden sukzessive in die entsprechenden Module überführt

### Terminologie-Binding

Das Profil verwendet **preferred binding** für das ValueSet `MII_VS_Onko_Weitere_Klassifikationen`, wodurch sowohl internationale Terminologien (SNOMED CT, NCI Thesaurus) als auch oBDS-spezifische Codes unterstützt werden.

#### Verfügbare Klassifikationssysteme

@```
from
    ValueSet
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-weitere-klassifikationen'
select
    "Expansion der verfügbaren Klassifikationssysteme"
```

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen' 
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
    for differential.element where id.contains('Weitere Klassifikationen')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen'  
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
    
    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen```
    
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

6. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?date=2024-02-08```

    Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".

**Beispiele**

{{json:mii-exa-onko-weitere-klassifikationen-1}}

{{json:mii-exa-onko-weitere-klassifikationen-2}}

---