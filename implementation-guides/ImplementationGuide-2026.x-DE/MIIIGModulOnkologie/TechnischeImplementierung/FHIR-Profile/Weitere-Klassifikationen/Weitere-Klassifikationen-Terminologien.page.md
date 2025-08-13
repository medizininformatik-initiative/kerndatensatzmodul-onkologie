---
parent: 
topic: WeitereKlassifikationenTerminologien
---

## {{page-title}}

Diese Seite dokumentiert die Terminologien für weitere Klassifikationen in der Onkologie, einschließlich hämatologischer und organspezifischer Staging-Systeme.

### Hierarchisches CodeSystem für Klassifikationssysteme

Das **Weitere Klassifikationen CodeSystem** nutzt eine hierarchische Struktur zur Organisation verschiedener Staging- und Klassifikationssysteme:

#### CodeSystem: mii-cs-onko-weitere-klassifikationen

@```
from
    CodeSystem
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen'
select
    "CodeSystem"
```

### Struktur des hierarchischen Ansatzes

#### Alle Klassifikationssysteme (Elternkonzepte)

@```
from
    CodeSystem
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen'
for concept
select
    Code: code,
    Display: display,
    "Hat Unterkonzepte": concept.exists()
```

#### BINET System mit allen Werten

@```
from
    CodeSystem  
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen'
for concept
where code = 'binet'
for concept
select
    Code: code,
    Display: display
```

#### Ann Arbor System mit allen Werten

@```
from
    CodeSystem
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen'
for concept  
where code = 'ann-arbor-stadium'
for concept
select
    Code: code,
    Display: display
```

### ValueSets mit descendant-of Filter

Die ValueSets nutzen **descendant-of Filter** für wartbare Terminologie-Verwaltung.

#### Haupt-ValueSet für alle Klassifikationswerte

@```
from
    ValueSet
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-weitere-klassifikationen'
select
    "ValueSet"
```

#### Inhalt des Haupt-ValueSets

@```
from
    ValueSet
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-weitere-klassifikationen'
for compose.include.concept
select
    Code: code,
    Display: display
order by code
```

### mCODE STU4 Pattern Integration

Die Implementierung folgt dem **mCODE STU4 code+method+value Pattern**:

#### Profil-Elemente für code+method+value Pattern

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen'
for differential.element
where id in ('Observation.code' | 'Observation.method' | 'Observation.value[x]:valueCodeableConcept')
select
    Element: id,
    Min: min,
    Max: max,
    Kurzbeschreibung: short,
    "Binding Stärke": binding.strength
```

#### Beispiel-Implementierung

```
Instance: mii-exa-onko-weitere-klassifikationen-binet
InstanceOf: MII_PR_Onko_Weitere_Klassifikationen

// Allgemeiner Code für Staging
* code = $sct#385388004 "Tumorstadium-Befund"

// Spezifische Methode
* method = $mii-cs-onko-weitere-klassifikationen#binet "BINET Staging System"

// Tatsächlicher Wert
* valueCodeableConcept = $mii-cs-onko-weitere-klassifikationen#binet-a "BINET A"
```

### Verfügbare ValueSets

#### Alle ValueSets für Weitere Klassifikationen (bereits in SNOMED + MII-definiert)

@```
from
    ValueSet
where
    url contains 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet' and
    url contains 'weitere-klassifikationen'
select
    Name: name,
    Beschreibung: description,
    Status: status
```

### Gesamtes CodeSystem - Übersicht aller MII-definierten Codes

#### Hauptkonzepte
@```
from
    CodeSystem
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen'
for concept
select
    "Klassifikationssystem": code,
    Bezeichnung: display
```

#### Alle Unterkonzepte (Klassifikationswerte)
@```
from
    CodeSystem
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen'
for concept.concept
select
    Wert: code,
    Bezeichnung: display
```

### Mapping zu oBDS

Die Weitere Klassifikationen entsprechen dem **oBDS Feld 9 "Weitere Klassifikationen"**:

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

### SNOMED CT Mappings

Für einige Klassifikationssysteme existieren SNOMED CT Äquivalente:

- BINET → SNOMED CT: 1149214008 (Binet chronic lymphocytic leukemia staging)
- Ann Arbor → SNOMED CT: 254373007 (Ann Arbor lymphoma staging)
- WHO Grade → SNOMED CT: 277612008 (WHO tumor grade)

### Beispiele

#### FIGO Stadium IVB (Ovariale Tumore)
{{json:mii-exa-onko-weitere-klassifikationen-1}}

#### Ann Arbor Stadium IIIX
{{json:mii-exa-onko-weitere-klassifikationen-2}}

#### FIGO Grad 2
{{json:mii-exa-onko-weitere-klassifikationen-3}}

---