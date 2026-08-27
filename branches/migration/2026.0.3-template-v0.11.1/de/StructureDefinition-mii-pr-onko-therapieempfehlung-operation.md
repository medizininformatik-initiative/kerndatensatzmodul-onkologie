# MII PR Onkologie Therapieempfehlung Operation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Therapieempfehlung Operation**

## Ressourcenprofil: MII PR Onkologie Therapieempfehlung Operation 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_PR_Onko_Therapieempfehlung_Operation |

 
Dieses Profil beschreibt eine Empfehlung für eine Operation im Rahmen der Tumorkonferenz 

Dieses Profil beschreibt eine **Operations-Therapieempfehlung** im Rahmen der Tumorkonferenz. Es basiert auf dem FHIR ServiceRequest und ermöglicht die strukturierte Erfassung von chirurgischen Therapieempfehlungen.

### Inhalt

Das ServiceRequest-Profil ermöglicht die Erfassung von Operationsempfehlungen der Tumorkonferenz mit:

* **Kategorisierung**: Art der empfohlenen Operation
* **Tumorerkrankungsbezug**: Referenz auf die Primärtumor-Diagnose
* **Unterstützende Informationen**: Relevante Befunde und Staging-Ergebnisse

### Anwendungsfälle

#### Primäre Tumorchirurgie

Empfehlung zur operativen Entfernung des Primärtumors:

```
ServiceRequest
├── intent: #proposal
├── category: Surgical procedure
├── authoredOn: 2024-01-15
├── reasonReference: Reference(Primärtumor)
└── supportingInfo: Reference(TNM-Staging)

```

#### Metastasen-Chirurgie

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

#### Intent

Das `intent` Element ist auf `#proposal` fixiert, da es sich um eine Therapieempfehlung handelt.

#### Category

Die `category` ermöglicht die Klassifikation der empfohlenen Operation (z.B. kurative vs. palliative Intention).

#### reasonReference

Referenz auf die zugrundeliegende Tumorerkrankung:

```
reasonReference: Reference(MII_PR_Onko_Diagnose_Primaertumor)

```

#### supportingInfo

Optionale Referenzen auf unterstützende klinische Informationen:

* **Staging-Ergebnisse**: TNM-Klassifikation
* **Bildgebung**: Relevante diagnostische Befunde
* **Laborwerte**: Tumormarker oder andere relevante Parameter

### Verwendung mit Extended CarePlan

Dieses Profil ist primär für die Verwendung mit dem **[Tumorkonferenz: Detaillierte Therapieempfehlungen (CarePlan)](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md)** konzipiert:

* **Standard-oBDS**: Krebsregister erfassen nur "Operation geplant" (Therapieempfehlung Typ "OP") ohne Details zur Art der Operation
* **Extended CarePlan**: Ermöglicht spezifische Operationsempfehlungen mit SNOMED CT Kodierung

**Integration**:

```
CarePlan (Detailed Recommendations)
└── activity.reference → ServiceRequest
    ├── code: SNOMED CT (spezifische OP)
    └── reasonReference: Reference(Primärtumor)

```

### oBDS-Kontext

Dieses Profil unterstützt die Erfassung von Therapieempfehlungen gemäß oBDS-Kapitel 19:

* **19.1 Therapieempfehlung Typ**: "OP" (Operation)

**Hinweis**: Die Standard-oBDS-Erfassung erfolgt über `CarePlan.activity.detail.code`. Dieses ServiceRequest-Profil bietet erweiterte Strukturierung für molekulare Tumorboards und spezialisierte Anwendungsfälle.

Die detaillierte Planung und Durchführung der Operation wird im separaten [Operation: Procedure](StructureDefinition-mii-pr-onko-operation.md) erfasst.

### Abgrenzung

| | | |
| :--- | :--- | :--- |
| **Therapieempfehlung Operation** | ServiceRequest | Empfehlung der Tumorkonferenz |
| **Operation** | Procedure | Durchgeführte Operation |

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Therapieempfehlung Operation](StructureDefinition-mii-pr-onko-therapieempfehlung-operation.md).

-------

**Suchparameter**

1. Der Suchparameter `_id` MUSS unterstützt werden: `GET [base]/ServiceRequest?_id=1234`
1. Der Suchparameter "_profile" MUSS unterstützt werden: `GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation`
1. Der Suchparameter "subject" MUSS unterstützt werden: `GET [base]/ServiceRequest?subject=Patient/example`
1. Der Suchparameter "intent" SOLLTE unterstützt werden: `GET [base]/ServiceRequest?intent=proposal`
1. Der Suchparameter "category" SOLLTE unterstützt werden: `GET [base]/ServiceRequest?category=surgical-procedure`

**Usages:**

* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)
* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-therapieempfehlung-operation.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 10 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 10 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-therapieempfehlung-operation.csv), [Excel](../StructureDefinition-mii-pr-onko-therapieempfehlung-operation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-therapieempfehlung-operation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-therapieempfehlung-operation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Therapieempfehlung_Operation",
  "title" : "MII PR Onkologie Therapieempfehlung Operation",
  "status" : "active",
  "date" : "2026-08-27T15:31:43+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt eine Empfehlung für eine Operation im Rahmen der Tumorkonferenz",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "oBDS",
    "name" : "Mapping FHIR zu oBDS"
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.meta.profile",
      "path" : "ServiceRequest.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "patternCode" : "proposal",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.authoredOn",
      "path" : "ServiceRequest.authoredOn",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "mustSupport" : true
    }]
  }
}

```
