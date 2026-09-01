# MII PR Onkologie Therapieempfehlung Medikation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Therapieempfehlung Medikation**

## Ressourcenprofil: MII PR Onkologie Therapieempfehlung Medikation 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation | *Version*:2026.0.3 |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_PR_Onko_Therapieempfehlung_Medikation |

 
Dieses Profil beschreibt eine Medikations-Tumorempfehlung 

Dieses Profil beschreibt eine **Medikations-Therapieempfehlung** im Rahmen der Tumorkonferenz. Es basiert auf dem FHIR MedicationRequest und wird typischerweise als Teil einer Kombinationstherapie (RequestGroup) oder als eigenständige Empfehlung verwendet.

### Inhalt

Das MedicationRequest-Profil ermöglicht die strukturierte Erfassung von Medikationsempfehlungen mit:

* **Medikamentenkodierung**: PZN (Arzneimittel) und/oder ATC-DE (Wirkstoffe)
* **Tumorerkrankungsbezug**: Pflicht-Referenz auf die Primärtumor-Diagnose
* **Zusätzliche Begründungen**: Optionale Referenzen auf weitere Conditions oder Observations

### Anwendungsfälle

#### Eigenständige Medikationsempfehlung

Für Einzelsubstanz-Empfehlungen ohne Kombinationsprotokoll:

```
MedicationRequest
├── intent: #proposal
├── medicationCodeableConcept: ATC L01XE27 (Ibrutinib)
├── authoredOn: 2024-01-15
└── reasonReference: Reference(Primärtumor)

```

#### Teil einer Kombinationstherapie

Als Komponente einer RequestGroup-basierten Kombinationstherapie:

```
RequestGroup (FOLFOX-Protokoll)
├── action[0].resource: MedicationRequest (5-FU)
├── action[1].resource: MedicationRequest (Oxaliplatin)
└── action[2].resource: MedicationRequest (Leucovorin)

```

### Technische Implementierung

#### Intent-Semantik

* **`#proposal`**: Eigenständige Therapieempfehlung der Tumorkonferenz
* **`#option`**: Teil einer RequestGroup (Kombinationstherapie)

#### Medikamentenkodierung

Das `medicationCodeableConcept` Element unterstützt:

* **ATC-DE**: Für Wirkstoff-basierte Empfehlungen
* **PZN**: Für spezifische Arzneimittel-Empfehlungen
* **Freitext**: Für experimentelle oder nicht-kodierbare Substanzen

#### reasonReference Erweiterung

Das Profil erlaubt neben der Pflicht-Referenz auf den Primärtumor auch:

* **Condition**: Weitere relevante Erkrankungen als Begründung
* **Observation**: Unterstützende Befunde (z.B. Biomarker, Staging)

```
reasonReference (Slicing: open, profile-based)
├── Primaertumor (1..1 MS): Reference(MII_PR_Onko_Diagnose_Primaertumor)
└── [weitere]: Reference(Condition or Observation)

```

### Verwendung mit Extended CarePlan

Dieses Profil ist primär für die Verwendung mit dem **[Tumorkonferenz: Detaillierte Therapieempfehlungen (CarePlan)](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md)** und der **[Therapieempfehlung Kombinationstherapie (RequestGroup)](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md)** konzipiert:

* **Standard-oBDS**: Krebsregister erfassen nur Therapietyp (z.B. "CH" für Chemotherapie) ohne Details zu spezifischen Medikamenten
* **Extended CarePlan**: Ermöglicht spezifische Medikationsempfehlungen mit ATC/PZN Kodierung

**Integration mit RequestGroup (Kombinationstherapie)**:

```
CarePlan (Detailed Recommendations)
└── activity.reference → RequestGroup
    ├── code: "CZ" (Chemo + zielgerichtete Substanzen)
    └── action.action.resource → MedicationRequest
        ├── medication: ATC L01XE (Trastuzumab)
        └── reasonReference: Reference(Primärtumor)

```

### oBDS-Kontext

Dieses Profil unterstützt die Erfassung von Therapieempfehlungen gemäß oBDS-Kapitel 19:

* **19.1 Therapieempfehlung Typ**: Über RequestGroup.code (bei Kombinationstherapien)
* **Medikamentendetails**: Strukturierte Erfassung über MedicationRequest

**Hinweis**: Die Standard-oBDS-Erfassung erfolgt über `CarePlan.activity.detail.code` (nur Therapietyp). Dieses MedicationRequest-Profil bietet erweiterte Strukturierung für molekulare Tumorboards, Kombinationstherapie-Protokolle und spezialisierte Anwendungsfälle.

### Terminologie-Binding

**medicationCodeableConcept.coding**:

* Mindestens eine Kodierung erforderlich (1..*)
* ATC-DE oder PZN empfohlen
* Freitext über `.text` möglich

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Therapieempfehlung Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md).

**Usages:**

* Refer to this Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md), [MII PR Onkologie Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md) and [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md)
* Examples for this Profile: [MedicationRequest/mii-exa-onko-cdk46-class-medication](MedicationRequest-mii-exa-onko-cdk46-class-medication.md), [MedicationRequest/mii-exa-onko-folfox-5fu-request](MedicationRequest-mii-exa-onko-folfox-5fu-request.md), [MedicationRequest/mii-exa-onko-folfox-leucovorin-request](MedicationRequest-mii-exa-onko-folfox-leucovorin-request.md), [MedicationRequest/mii-exa-onko-folfox-oxaliplatin-request](MedicationRequest-mii-exa-onko-folfox-oxaliplatin-request.md)... Show 5 more, [MedicationRequest/mii-exa-onko-modification-5fu-request](MedicationRequest-mii-exa-onko-modification-5fu-request.md), [MedicationRequest/mii-exa-onko-modification-leucovorin-request](MedicationRequest-mii-exa-onko-modification-leucovorin-request.md), [MedicationRequest/mii-exa-onko-modification-oxaliplatin-request](MedicationRequest-mii-exa-onko-modification-oxaliplatin-request.md), [MedicationRequest/mii-exa-onko-tdm1-option](MedicationRequest-mii-exa-onko-tdm1-option.md) and [MedicationRequest/mii-exa-onko-tucatinib-option](MedicationRequest-mii-exa-onko-tucatinib-option.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Medikation_MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Medikation_MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest) 

** Summary **

Mandatory: 5 elements
 Must-Support: 2 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationRequest.reasonReference

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Medikation_MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Medikation_MedicationRequest](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest) 

** Summary **

Mandatory: 5 elements
 Must-Support: 2 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationRequest.reasonReference

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.csv), [Excel](../StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-therapieempfehlung-medikation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-01-03"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C3262"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Therapieempfehlung_Medikation",
  "title" : "MII PR Onkologie Therapieempfehlung Medikation",
  "status" : "active",
  "date" : "2026-09-01T14:29:01+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt eine Medikations-Tumorempfehlung",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest"
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "short" : "proposal | option",
      "definition" : "Verwenden Sie 'proposal' für eigenständige Therapieempfehlungen. Verwenden Sie 'option' wenn die MedicationRequest Teil einer RequestGroup ist (z.B. Kombinationstherapie)."
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept",
      "path" : "MedicationRequest.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding",
      "path" : "MedicationRequest.medication[x].coding",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "MedicationRequest.supportingInformation",
      "path" : "MedicationRequest.supportingInformation",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this.resolve()"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
        "http://hl7.org/fhir/StructureDefinition/Condition",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    },
    {
      "id" : "MedicationRequest.reasonReference:Primaertumor",
      "path" : "MedicationRequest.reasonReference",
      "sliceName" : "Primaertumor",
      "short" : "Tumorerkrankung (Pflicht)",
      "definition" : "Referenz auf die Primärtumor-Diagnose, auf die sich diese Therapieempfehlung bezieht.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    }]
  }
}

```
