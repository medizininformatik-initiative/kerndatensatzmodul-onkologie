---
parent:
topic: TherapieempfehlungOperationServiceRequest
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation
---

## {{page-title}}

Dieses Profil beschreibt eine **Operations-Therapieempfehlung** im Rahmen der Tumorkonferenz. Es basiert auf dem FHIR ServiceRequest und ermöglicht die strukturierte Erfassung von chirurgischen Therapieempfehlungen.

### Inhalt

Das ServiceRequest-Profil ermöglicht die Erfassung von Operationsempfehlungen der Tumorkonferenz mit:
- **Kategorisierung**: Art der empfohlenen Operation
- **Tumorerkrankungsbezug**: Referenz auf die Primärtumor-Diagnose
- **Unterstützende Informationen**: Relevante Befunde und Staging-Ergebnisse

### Anwendungsfälle

#### **Primäre Tumorchirurgie**
Empfehlung zur operativen Entfernung des Primärtumors:
```
ServiceRequest
├── intent: #proposal
├── category: Surgical procedure
├── authoredOn: 2024-01-15
├── reasonReference: Reference(Primärtumor)
└── supportingInfo: Reference(TNM-Staging)
```

#### **Metastasen-Chirurgie**
Empfehlung zur Resektion von Metastasen:
```
ServiceRequest
├── intent: #proposal
├── category: Surgical procedure
├── authoredOn: 2024-01-15
├── reasonReference: Reference(Primärtumor)
└── supportingInfo: Reference(Fernmetastasen-Observation)
```

### Technische Implementierung

#### **Intent**
Das `intent` Element ist auf `#proposal` fixiert, da es sich um eine Therapieempfehlung handelt.

#### **Category**
Die `category` ermöglicht die Klassifikation der empfohlenen Operation (z.B. kurative vs. palliative Intention).

#### **reasonReference**
Referenz auf die zugrundeliegende Tumorerkrankung:
```
reasonReference: Reference(MII_PR_Onko_Diagnose_Primaertumor)
```

#### **supportingInfo**
Optionale Referenzen auf unterstützende klinische Informationen:
- **Staging-Ergebnisse**: TNM-Klassifikation
- **Bildgebung**: Relevante diagnostische Befunde
- **Laborwerte**: Tumormarker oder andere relevante Parameter

### oBDS-Kontext

Dieses Profil unterstützt die Erfassung von Therapieempfehlungen gemäß oBDS-Kapitel 19:
- **19.1 Therapieempfehlung Typ**: "OP" (Operation)

Die detaillierte Planung und Durchführung der Operation wird im separaten {{pagelink:OperationProcedure}} erfasst.

### Abgrenzung

| Profil | Ressource | Verwendung |
|--------|-----------|------------|
| **Therapieempfehlung Operation** | ServiceRequest | Empfehlung der Tumorkonferenz |
| **Operation** | Procedure | Durchgeführte Operation |

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation'
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
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation'
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
    ```GET [base]/ServiceRequest?_id=1234```

2. Der Suchparameter "_profile" MUSS unterstützt werden:
    ```GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation```

3. Der Suchparameter "subject" MUSS unterstützt werden:
    ```GET [base]/ServiceRequest?subject=Patient/example```

4. Der Suchparameter "intent" SOLLTE unterstützt werden:
    ```GET [base]/ServiceRequest?intent=proposal```

5. Der Suchparameter "category" SOLLTE unterstützt werden:
    ```GET [base]/ServiceRequest?category=surgical-procedure```

---
