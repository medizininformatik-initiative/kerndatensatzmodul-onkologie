# MII PR Onkologie Tumorkonferenz - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Tumorkonferenz**

## Ressourcenprofil: MII PR Onkologie Tumorkonferenz 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz | *Version*:2026.0.3 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:MII_PR_Onko_Tumorkonferenz |

 
Dieses Profil beschreibt die Tumorkonferenz und die Therapieempfehlungen 

Dieses Profil beschreibt die Tumorkonferenz und die Therapieempfehlungen für sowohl traditionelle als auch molekulare Tumorboard-Workflows. Die Datenfelder sind seit der Version 2021 Teil des oBDS und werden in zwei verschiedenen Modulen erfasst. Da alle beteiligten Felder sehr gut über die FHIR CarePlan-Ressource abbildbar sind, wurden alle die Tumorkonferenz- und Therapieemfpehlungsfelder im Tumorkonferenz-Profil zusammengefasst.

### Unified Activity Slicing Architecture

Das Profil unterstützt **zwei verschiedene Implementierungsansätze** über Activity-Slicing:

#### obds Slice: Standard oBDS-Therapiekategorisierung

Für traditionelle Tumorboards mit oBDS 19.1 Kategorisierung:

* **Verwendung**: `activity[obds].detail.code` für Therapietyp (CH, HO, IM, ZS, etc.)
* **Status-Tracking**: `activity[obds].detail.status` und `activity[obds].detail.statusReason` für Therapieabweichungen
* **oBDS-Konformität**: Vollständige Abbildung der oBDS-Felder 19.1 und 19.2

#### extended Slice: Molekulare Tumorboard-Protokolle

Für detaillierte molekulare Tumorboards mit strukturierten Therapieprotokollen:

* **Verwendung**: `activity[extended].reference` → RequestGroup/MedicationRequest/ServiceRequest
* **Anwendungsfälle**: Multi-Agent-Protokolle, pharmazeutische Klassen, spezifische Medikamentenauswahl
* **Erweiterte Funktionalität**: Über oBDS-Kategorisierung hinausgehende Detaillierung

### Gemeinsame Profilstruktur

Beide Slices teilen die gemeinsamen CarePlan-Elemente:

* **Patient-Referenz**: `subject`
* **Primärdiagnose-Referenz**: `addresses`
* **Tumorboard-Kategorie**: `category` nach oBDS 18.2
* **Datum**: `created` gemäß oBDS 18.1
* **Zusätzliche Informationen**: `supportingInfo` für relevante Verlaufs-Stagings

### Status-Management

#### Für obds Slice (traditionelle Tumorboards):

Die CarePlan-Ressource sieht eine verpflichtende Angabe des `status`-Elements einer `activity` vor. Die tatsächlich erfolgten Therapien werden in den Krebsregisterdaten erfasst und SOLLEN über `Procedure.basedOn(Reference(CarePlan))` auf die Tumorkonferenz-Ressource verweisen.

**Empfohlene Status-Codes** nach FHIR CarePlanActivityStatus:

* `completed`: Abgeschlossene Therapie
* `on-hold`: Therapieunterbrechung für noch nicht gestartete Therapie
* `stopped`: Therapieunterbrechung für bereits gestartete Therapie
* `unknown`: Unbekannt, keine Statusinformationen verfügbar

**Therapieabweichungen**: Bei `on-hold` und `stopped` SOLL `statusReason` mit oBDS-Feld 'Therapieabweichung auf Wunsch des Patienten' befüllt werden.

#### Für extended Slice (molekulare Tumorboards):

Status-Tracking erfolgt in den referenzierten Ressourcen (RequestGroup, MedicationRequest, ServiceRequest). `activity.progress` kann für narrative Fortschrittsnotizen verwendet werden.

Jede Tumorkonferenz mit Therapieempfehlung SOLL als einzelne Ressource gespeichert und über `CarePlan.addresses(Reference(Condition))` auf die Primärdiagnose referenzieren.

### FHIR Invariant Management

**Problem**: FHIR R4 Invariant cpl-3 verhindert gleichzeitige Nutzung von `activity.detail.code` und `activity.reference`

**Lösung**: Slice-spezifische Element-Deaktivierung:

* **obds slice**: `activity.detail` aktiviert, `activity.reference` deaktiviert (0..0)
* **extended slice**: `activity.reference` aktiviert, `activity.detail` deaktiviert (0..0)

### Implementierungsflexibilität

* **Rückwärtskompatibilität**: Bestehende oBDS-Implementierungen funktionieren unverändert
* **Hybride Ansätze**: Einzelne CarePlans können beide Slice-Typen verwenden
* **Schrittweise Adoption**: Start mit obds slice, Erweiterung zu extended slice bei Bedarf

### Anwendungsbeispiele

#### Traditionelles Tumorboard (obds slice):

```
* activity[obds].detail.code.coding = #OP "Operation"
* activity[obds].detail.status = #completed

```

#### Molekulares Tumorboard (extended slice):

```
* activity[extended].reference = Reference(RequestGroup/molecular-protocol)
* activity[extended].progress.text = "HR+/HER2- mit PI3K-Aktivierung - CDK4/6 Inhibitor empfohlen"

```

#### Gemischter Ansatz:

```
* activity[obds].detail.code.coding = #OP "Operation"
* activity[extended].reference = Reference(RequestGroup/precision-medicine-protocol)

```

-------

Mapping Datensatz zu FHIR

> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md).

**Beispiele**

### Traditionelle oBDS-Tumorkonferenz (obds slice):

[mii-exa-onko-tumorkonferenz-01](CarePlan-mii-exa-onko-tumorkonferenz-01.md)

### Molekulares Tumorboard (extended slice):

[mii-exa-onko-tumorkonferenz-pure-molecular](CarePlan-mii-exa-onko-tumorkonferenz-pure-molecular.md)

### Gemischter Ansatz (beide slices):

[mii-exa-onko-tumorkonferenz-mixed-approach](CarePlan-mii-exa-onko-tumorkonferenz-mixed-approach.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie Befund](StructureDefinition-mii-pr-onko-befund.md), [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md), [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie.md), [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md) and [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md)
* Examples for this Profile: [CarePlan/PatientKimMusterperson-Tumorkonferenz-1](CarePlan-PatientKimMusterperson-Tumorkonferenz-1.md), [CarePlan/PatientKimMusterperson-Tumorkonferenz-2](CarePlan-PatientKimMusterperson-Tumorkonferenz-2.md), [CarePlan/PatientKimMusterperson-Tumorkonferenz-3](CarePlan-PatientKimMusterperson-Tumorkonferenz-3.md), [CarePlan/PatientKimMusterperson-Tumorkonferenz-4](CarePlan-PatientKimMusterperson-Tumorkonferenz-4.md)... Show 12 more, [CarePlan/mii-exa-onko-kim-tk1](CarePlan-mii-exa-onko-kim-tk1.md), [CarePlan/mii-exa-onko-kim-tk2](CarePlan-mii-exa-onko-kim-tk2.md), [CarePlan/mii-exa-onko-kim-tk3](CarePlan-mii-exa-onko-kim-tk3.md), [CarePlan/mii-exa-onko-kim-tk4](CarePlan-mii-exa-onko-kim-tk4.md), [CarePlan/mii-exa-onko-tnm-synth-tumorkonferenz](CarePlan-mii-exa-onko-tnm-synth-tumorkonferenz.md), [CarePlan/mii-exa-onko-tumorkonferenz-01](CarePlan-mii-exa-onko-tumorkonferenz-01.md), [CarePlan/mii-exa-onko-tumorkonferenz-02](CarePlan-mii-exa-onko-tumorkonferenz-02.md), [CarePlan/mii-exa-onko-tumorkonferenz-folfox-modification](CarePlan-mii-exa-onko-tumorkonferenz-folfox-modification.md), [CarePlan/mii-exa-onko-tumorkonferenz-folfox](CarePlan-mii-exa-onko-tumorkonferenz-folfox.md), [CarePlan/mii-exa-onko-tumorkonferenz-mixed-approach](CarePlan-mii-exa-onko-tumorkonferenz-mixed-approach.md), [CarePlan/mii-exa-onko-tumorkonferenz-molekular](CarePlan-mii-exa-onko-tumorkonferenz-molekular.md) and [CarePlan/mii-exa-onko-tumorkonferenz-pure-molecular](CarePlan-mii-exa-onko-tumorkonferenz-pure-molecular.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-tumorkonferenz.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [CarePlan](http://hl7.org/fhir/R4/careplan.html) 

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [CarePlan](http://hl7.org/fhir/R4/careplan.html) 

** Summary **

Mandatory: 5 elements(5 nested mandatory elements)
 Must-Support: 23 elements
 Prohibited: 2 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* [MII PR Onkologie Therapieempfehlung Kombinationstherapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie)](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md)
* [MII PR Onkologie Therapieempfehlung Medikation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md)
* [MII PR Onkologie Therapieempfehlung Operation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation)](StructureDefinition-mii-pr-onko-therapieempfehlung-operation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 2 is sliced based on the values of CarePlan.activity

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [CarePlan](http://hl7.org/fhir/R4/careplan.html) 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [CarePlan](http://hl7.org/fhir/R4/careplan.html) 

** Summary **

Mandatory: 5 elements(5 nested mandatory elements)
 Must-Support: 23 elements
 Prohibited: 2 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* [MII PR Onkologie Therapieempfehlung Kombinationstherapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie)](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md)
* [MII PR Onkologie Therapieempfehlung Medikation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md)
* [MII PR Onkologie Therapieempfehlung Operation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation)](StructureDefinition-mii-pr-onko-therapieempfehlung-operation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 2 is sliced based on the values of CarePlan.activity

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-tumorkonferenz.csv), [Excel](../StructureDefinition-mii-pr-onko-tumorkonferenz.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-tumorkonferenz.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-tumorkonferenz",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Tumorkonferenz",
  "title" : "MII PR Onkologie Tumorkonferenz",
  "status" : "active",
  "date" : "2026-08-31T14:28:40+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt die Tumorkonferenz und die Therapieempfehlungen",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.meta.profile",
      "path" : "CarePlan.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.intent",
      "path" : "CarePlan.intent",
      "patternCode" : "plan",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.category",
      "path" : "CarePlan.category",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.category.coding",
      "path" : "CarePlan.category.coding",
      "short" : "Art der Tumorkonferenz / Therapieplanung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Art der Tumorkonferenz / Therapieplanung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Art der Tumorkonferenz / Therapieplanung gemäß 18.2 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Art der Tumorkonferenz / Therapieplanung gemäß 18.2 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-therapieplanung-typ"
      }
    },
    {
      "id" : "CarePlan.category.coding.system",
      "path" : "CarePlan.category.coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.category.coding.code",
      "path" : "CarePlan.category.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "18.2",
        "comment" : "Tumorkonferenz Therapieplanung Typ"
      }]
    },
    {
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.encounter",
      "path" : "CarePlan.encounter",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.created",
      "path" : "CarePlan.created",
      "short" : "Datum der Tumorkonferenz / Therapieplanung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Tumorkonferenz / Therapieplanung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum der Tumorkonferenz / Therapieplanung gemäß 18.1 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Tumorkonferenz / Therapieplanung gemäß 18.1 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "18.1",
        "comment" : "Tumorkonferenz Therapieplanung Datum"
      }]
    },
    {
      "id" : "CarePlan.addresses",
      "path" : "CarePlan.addresses",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.supportingInfo",
      "path" : "CarePlan.supportingInfo",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity",
      "path" : "CarePlan.activity",
      "slicing" : {
        "discriminator" : [{
          "type" : "exists",
          "path" : "detail"
        },
        {
          "type" : "profile",
          "path" : "reference.resolve()"
        }],
        "rules" : "open"
      },
      "short" : "Therapy recommendations - either oBDS standard categorization or extended molecular protocols",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:obds",
      "path" : "CarePlan.activity",
      "sliceName" : "obds",
      "short" : "Standard oBDS therapy recommendation with category only",
      "definition" : "Standard tumor board recommendation using oBDS 19.1 therapy type categorization",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "CarePlan.activity:obds.reference",
      "path" : "CarePlan.activity.reference",
      "max" : "0"
    },
    {
      "id" : "CarePlan.activity:obds.detail",
      "path" : "CarePlan.activity.detail",
      "min" : 1,
      "constraint" : [{
        "key" : "tumorkonferenz-empfehlung-entscheidung-patient",
        "severity" : "error",
        "human" : "Therapieabweichung aufgrund Patientenwunsch: Bei nichtangetretener oder abgebrochener Therapie ist anzugeben, ob dies dem Patientenwunsch entspricht oder ggfs. andere Gründe hat ",
        "expression" : "status = 'cancelled' or status = 'stopped' implies statusReason.exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:obds.detail.code",
      "path" : "CarePlan.activity.detail.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-therapieempfehlung-typ"
      }
    },
    {
      "id" : "CarePlan.activity:obds.detail.code.coding",
      "path" : "CarePlan.activity.detail.code.coding",
      "short" : "Typ der Therapieempfehlung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Typ der Therapieempfehlung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Typ der Therapieempfehlung der Tumorkonferenz gemäß 19.1 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Typ der Therapieempfehlung der Tumorkonferenz gemäß 19.1 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "CarePlan.activity:obds.detail.code.coding.system",
      "path" : "CarePlan.activity.detail.code.coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:obds.detail.code.coding.code",
      "path" : "CarePlan.activity.detail.code.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "19.1",
        "comment" : "Tumorkonferenz Therapieempfehlung Typ"
      }]
    },
    {
      "id" : "CarePlan.activity:obds.detail.status",
      "path" : "CarePlan.activity.detail.status",
      "short" : "Status der Therapieempfehlung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status der Therapieempfehlung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status der Therapieempfehlung nach HL7 FHIR CarePlanActivityStatus | not-started | scheduled | in-progress | on-hold | completed | cancelled | stopped | unknown | entered-in-error |",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status der Therapieempfehlung nach HL7 FHIR CarePlanActivityStatus | not-started | scheduled | in-progress | on-hold | completed | cancelled | stopped | unknown | entered-in-error |"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "19.2",
        "comment" : "Tumorkonferenz/Therapieempfehlung Therapieabweichung auf Wunsch des Patienten"
      }]
    },
    {
      "id" : "CarePlan.activity:obds.detail.statusReason",
      "path" : "CarePlan.activity.detail.statusReason",
      "short" : "Therapieabweichung aufgrund Patientenwunsch der Therapieempfehlung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Therapieabweichung aufgrund Patientenwunsch der Therapieempfehlung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "wenn Therapieabweichung - z.B. status = cancelled - Aussage ob dies durch Patientenwunsch erfolgt ist gemäß 19.2 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "wenn Therapieabweichung - z.B. status = cancelled - Aussage ob dies durch Patientenwunsch erfolgt ist gemäß 19.2 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-therapieabweichung"
      }
    },
    {
      "id" : "CarePlan.activity:obds.detail.statusReason.coding",
      "path" : "CarePlan.activity.detail.statusReason.coding",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "19.2",
        "comment" : "Tumorkonferenz/Therapieempfehlung Therapieabweichung auf Wunsch des Patienten"
      }]
    },
    {
      "id" : "CarePlan.activity:obds.detail.statusReason.coding.system",
      "path" : "CarePlan.activity.detail.statusReason.coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieabweichung"
    },
    {
      "id" : "CarePlan.activity:obds.detail.statusReason.coding.code",
      "path" : "CarePlan.activity.detail.statusReason.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended",
      "path" : "CarePlan.activity",
      "sliceName" : "extended",
      "short" : "Extended molecular tumor board recommendation with detailed protocols",
      "definition" : "Detailed molecular tumor board recommendation using RequestGroup for structured multi-agent protocols and specific medication choices",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "CarePlan.activity:extended.progress",
      "path" : "CarePlan.activity.progress",
      "short" : "Progress notes for recommendation implementation",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity:extended.reference",
      "path" : "CarePlan.activity.reference",
      "short" : "Detailed therapy recommendation - RequestGroup, MedicationRequest, or ServiceRequest",
      "definition" : "Reference to detailed therapy recommendations: Therapieempfehlung Kombinationstherapie (RequestGroup) for complex multi-agent protocols, Therapieempfehlung Medikation (MedicationRequest) for specific medication orders, or Therapieempfehlung Operation (ServiceRequest) for therapy referrals (surgery, radiation, etc.)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "RequestGroup with 19.1",
        "comment" : "Tumorkonferenz Therapieempfehlung Typ and specific agents"
      }]
    },
    {
      "id" : "CarePlan.activity:extended.detail",
      "path" : "CarePlan.activity.detail",
      "max" : "0"
    }]
  }
}

```
