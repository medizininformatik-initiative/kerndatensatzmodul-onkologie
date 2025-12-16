---
parent:
topic: TherapieempfehlungMedikationMedicationRequest
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation
---

## {{page-title}}

Dieses Profil beschreibt eine **Medikations-Therapieempfehlung** im Rahmen der Tumorkonferenz. Es basiert auf dem FHIR MedicationRequest und wird typischerweise als Teil einer Kombinationstherapie (RequestGroup) oder als eigenständige Empfehlung verwendet.

### Inhalt

Das MedicationRequest-Profil ermöglicht die strukturierte Erfassung von Medikationsempfehlungen mit:
- **Medikamentenkodierung**: PZN (Arzneimittel) und/oder ATC-DE (Wirkstoffe)
- **Tumorerkrankungsbezug**: Pflicht-Referenz auf die Primärtumor-Diagnose
- **Zusätzliche Begründungen**: Optionale Referenzen auf weitere Conditions oder Observations

### Anwendungsfälle

#### **Eigenständige Medikationsempfehlung**
Für Einzelsubstanz-Empfehlungen ohne Kombinationsprotokoll:
```
MedicationRequest
├── intent: #proposal
├── medicationCodeableConcept: ATC L01XE27 (Ibrutinib)
├── authoredOn: 2024-01-15
└── reasonReference: Reference(Primärtumor)
```

#### **Teil einer Kombinationstherapie**
Als Komponente einer RequestGroup-basierten Kombinationstherapie:
```
RequestGroup (FOLFOX-Protokoll)
├── action[0].resource: MedicationRequest (5-FU)
├── action[1].resource: MedicationRequest (Oxaliplatin)
└── action[2].resource: MedicationRequest (Leucovorin)
```

### Technische Implementierung

#### **Intent-Semantik**
- **`#proposal`**: Eigenständige Therapieempfehlung der Tumorkonferenz
- **`#option`**: Teil einer RequestGroup (Kombinationstherapie)

#### **Medikamentenkodierung**
Das `medicationCodeableConcept` Element unterstützt:
- **ATC-DE**: Für Wirkstoff-basierte Empfehlungen
- **PZN**: Für spezifische Arzneimittel-Empfehlungen
- **Freitext**: Für experimentelle oder nicht-kodierbare Substanzen

#### **reasonReference Erweiterung**
Das Profil erlaubt neben der Pflicht-Referenz auf den Primärtumor auch:
- **Condition**: Weitere relevante Erkrankungen als Begründung
- **Observation**: Unterstützende Befunde (z.B. Biomarker, Staging)

```
reasonReference (Slicing: open, profile-based)
├── Primaertumor (1..1 MS): Reference(MII_PR_Onko_Diagnose_Primaertumor)
└── [weitere]: Reference(Condition or Observation)
```

### oBDS-Kontext

Dieses Profil unterstützt die Erfassung von Therapieempfehlungen gemäß oBDS-Kapitel 19:
- **19.1 Therapieempfehlung Typ**: Über RequestGroup.code (bei Kombinationstherapien)
- **Medikamentendetails**: Strukturierte Erfassung über MedicationRequest

### Terminologie-Binding

**medicationCodeableConcept.coding**:
- Mindestens eine Kodierung erforderlich (1..*)
- ATC-DE oder PZN empfohlen
- Freitext über `.text` möglich

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation'
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

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation'
    for differential.element
    where mapping.identity='oBDS'
    select
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

---

**Suchparameter**

1. Der Suchparameter ```_id``` MUSS unterstützt werden:
    ```GET [base]/MedicationRequest?_id=1234```

2. Der Suchparameter "_profile" MUSS unterstützt werden:
    ```GET [base]/MedicationRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation```

3. Der Suchparameter "subject" MUSS unterstützt werden:
    ```GET [base]/MedicationRequest?subject=Patient/example```

4. Der Suchparameter "intent" SOLLTE unterstützt werden:
    ```GET [base]/MedicationRequest?intent=proposal```

5. Der Suchparameter "medication" SOLLTE unterstützt werden:
    ```GET [base]/MedicationRequest?medication=http://fhir.de/CodeSystem/bfarm/atc|L01XE27```

---
