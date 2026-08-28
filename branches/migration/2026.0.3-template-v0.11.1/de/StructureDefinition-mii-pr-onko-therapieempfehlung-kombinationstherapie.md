# MII PR Onkologie Therapieempfehlung Kombinationstherapie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Therapieempfehlung Kombinationstherapie**

## Ressourcenprofil: MII PR Onkologie Therapieempfehlung Kombinationstherapie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_PR_Onko_Therapieempfehlung_Kombinationstherapie |

 
Dieses Profil beschreibt eine Empfehlung für eine Kombinationstherapie im Rahmen der Tumorkonferenz 

Dieses Profil beschreibt strukturierte **Therapieempfehlungen für Kombinationstherapien** mittels RequestGroup. Es ermöglicht die detaillierte Abbildung von Multi-Agent-Protokollen und alternativen Therapieoptionen für molekulare Tumorboards.

### Inhalt

Das RequestGroup-Profil dient als "Protokoll-Koordinator" zwischen **CarePlan-Empfehlungen** und **spezifischen Therapieressourcen** (SystemischeTherapie, MedicationRequest, etc.).

Es ermöglicht die Abbildung komplexer Therapieempfehlungen für **molekulare Tumorboards** und andere Tumorkonferenzen, die über einfache Kategorisierungen hinausgehen und spezifische Medikamentenkombinationen oder Therapieoptionen erfordern.

### Abgrenzung zur oBDS-Standardempfehlung

| | | |
| :--- | :--- | :--- |
| **Verwendung** | Traditionelle Tumorboards | Molekulare Tumorboards, komplexe Protokolle |
| **Therapieempfehlung** | `activity.detail.code`(19.1 oBDS) | `activity.reference`→ RequestGroup |
| **Multi-Agent-Therapien** | Einzelne Kategorisierung | Detaillierte Protokolle mit spezifischen Agenten |
| **FHIR Invarianten** | `activity.detail`verwendet | `activity.detail`deaktiviert (0..0) |

**Grund**: Die FHIR-R4-Invariante `cpl-3` verhindert die gleichzeitige Verwendung von `activity.detail.code` und `activity.reference`. Beide Ansätze werden daher als getrennte Slices geführt.

> Beide Varianten sind inzwischen im Tumorkonferenz-Profil selbst als Slices `activity:obds` (mit `activity.detail.code`, `activity.reference` auf 0..0) und `activity:extended` (mit `activity.reference` 1..1, `activity.detail` auf 0..0) abgebildet; ein eigenes "Detailed Recommendations"-CarePlan-Profil existiert nicht mehr. Die Struktur ist in der Artefaktdarstellung beschrieben: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md).

### Anwendungsfälle

#### Multi-Agent-Therapieprotokolle

* **Anti-HER2-Kombination**: Trastuzumab + Pertuzumab
* **CDK4/6 + Hormontherapie**: Palbociclib + Letrozol
* **Triplet-Therapien**: Tucatinib + Trastuzumab + Capecitabine

#### Alternative Therapieoptionen

* **Linientherapie**: Erste-, zweite-, drittlinienoptionen basierend auf Resistenz
* **Biomarker-basiert**: Verschiedene Optionen je nach Mutationsstatus
* **Klassen-basiert**: "Beliebiger CDK4/6 Inhibitor" vs. spezifische Auswahl

### Technische Architektur

#### RequestGroup als Protokoll-Koordinator

```
CarePlan.activity.reference → RequestGroup
├── code: oBDS-Therapietyp (ZS, CZ, IM, etc.)
├── basedOn: Reference(CarePlan) [Rückverfolgbarkeit]
└── action[].resource: Reference(SystemischeTherapie)

```

#### Therapietyp-Klassifikation

Das **RequestGroup.code** Element enthält die **oBDS-Therapietyp-Klassifikation**:

* **ZS**: Zielgerichtete Substanzen
* **CZ**: Chemotherapie + zielgerichtete Substanzen
* **IM**: Immun-/Antikörpertherapie
* **CI**: Chemo- + Immun-/Antikörpertherapie
* **CIZ**: Chemo- + Immun-/Antikörpertherapie + zielgerichtete Substanzen

**Wichtig**: Diese Klassifikation war ursprünglich in `CarePlan.activity.detail.code` (oBDS 19.1), wird aber aufgrund von FHIR-Invarianten in das RequestGroup verlagert.

### Implementierungsoptionen

#### Option 1: Pharmazeutische Klassen

Für **Klassen-basierte Empfehlungen** (z.B. "beliebiger CDK4/6 Inhibitor"):

```
RequestGroup
├── code: "CZ" (Chemotherapie + zielgerichtete Substanzen)
└── action[0].resource: Reference(SystemischeTherapie)
    └── code.text: "CDK4/6 Inhibitor (Klasse L01XE) - Palbociclib, Ribociclib oder Abemaciclib"

```

**Anwendung**: Wenn molekulares Tumorboard eine **Medikamentenklasse** empfiehlt und die finale Auswahl dem behandelnden Arzt überlässt.

#### Option 2: Spezifische Medikamentenauswahl

Für **spezifische Optionen** mit Auswahllogik:

```
RequestGroup
├── code: "ZS" (Zielgerichtete Substanzen)
├── action[0].selectionBehavior: #any
├── action[0].requiredBehavior: #must
├── action[0].action[0]: Reference(Trastuzumab) [priority: routine]
├── action[0].action[1]: Reference(T-DM1) [priority: asap]
└── action[0].action[2]: Reference(Tucatinib) [priority: stat]

```

**Anwendung**: Wenn molekulares Tumorboard **spezifische Alternativen** mit klaren Präferenzen basierend auf Resistenzmustern oder klinischer Situation empfiehlt.

### FHIR-Invarianten-Konformität

**Problem**: FHIR R4 Invariant verhindert gleichzeitige Nutzung von `code` und `action.resource` **Lösung**: Dieses Profil **akzeptiert beide Ansätze** je nach Anwendungsfall:

* **Option 1**: Verwendet `code` für Therapietyp, `action.resource` für Klassen-Level-Therapie
* **Option 2**: Verwendet `code` für Therapietyp, verschachtelte `action.action.resource` für spezifische Optionen mit `selectionBehavior`

### oBDS-Kontext

#### Mapping zu oBDS 19.1

```
RequestGroup.code → "19.1" "Tumorkonferenz Therapieempfehlung Typ"

```

**Datenfelder**:

* **CH**: Chemotherapie
* **HO**: Hormontherapie
* **IM**: Immun-/Antikörpertherapie
* **ZS**: Zielgerichtete Substanzen
* **SZ**: Stammzelltransplantation
* **Kombinationen**: CI, CZ, CIZ, IZ
* **Andere**: OP, ST, WW, AS, SO

#### Erweiterte Strukturierung

Während oBDS nur den **Therapietyp** erfasst, ermöglicht RequestGroup zusätzlich:

* **Spezifische Medikamente** pro Empfehlung
* **Alternative Optionen** mit Prioritäten
* **Kombinationslogik** für Multi-Agent-Protokolle

### Terminologie-Binding

**RequestGroup.code**:

* **ValueSet**: `mii-vs-onko-therapieempfehlung-typ`
* **Binding**: Preferred
* **Quelle**: oBDS-Therapietypen aus `mii-cs-onko-therapie-typ`

> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Therapieempfehlung Typ](ValueSet-mii-vs-onko-therapieempfehlung-typ.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md).

**Beispiele**

* Klassen-basierte Empfehlung (CDK4/6-Inhibitor): [mii-exa-onko-molecular-cdk46-protocol](RequestGroup-mii-exa-onko-molecular-cdk46-protocol.md), eingebunden über [mii-exa-onko-tumorkonferenz-mixed-approach](CarePlan-mii-exa-onko-tumorkonferenz-mixed-approach.md)
* Spezifische Medikamentenauswahl (HER2-Alternativen): [mii-exa-onko-molecular-her2-alternatives](RequestGroup-mii-exa-onko-molecular-her2-alternatives.md), eingebunden über [mii-exa-onko-tumorkonferenz-pure-molecular](CarePlan-mii-exa-onko-tumorkonferenz-pure-molecular.md)
* Protokollbasierte Empfehlung (FOLFOX): [mii-exa-onko-folfox-requestgroup](RequestGroup-mii-exa-onko-folfox-requestgroup.md) und [mii-exa-onko-folfox-requestgroup-modification](RequestGroup-mii-exa-onko-folfox-requestgroup-modification.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md)
* Examples for this Profile: [RequestGroup/mii-exa-onko-folfox-requestgroup-modification](RequestGroup-mii-exa-onko-folfox-requestgroup-modification.md), [RequestGroup/mii-exa-onko-folfox-requestgroup](RequestGroup-mii-exa-onko-folfox-requestgroup.md), [RequestGroup/mii-exa-onko-molecular-cdk46-protocol](RequestGroup-mii-exa-onko-molecular-cdk46-protocol.md) and [RequestGroup/mii-exa-onko-molecular-her2-alternatives](RequestGroup-mii-exa-onko-molecular-her2-alternatives.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [RequestGroup](http://hl7.org/fhir/R4/requestgroup.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [RequestGroup](http://hl7.org/fhir/R4/requestgroup.html) 

** Summary **

Mandatory: 2 elements
 Must-Support: 13 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* [MII PR Onkologie Therapieempfehlung Medikation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [RequestGroup](http://hl7.org/fhir/R4/requestgroup.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [RequestGroup](http://hl7.org/fhir/R4/requestgroup.html) 

** Summary **

Mandatory: 2 elements
 Must-Support: 13 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* [MII PR Onkologie Therapieempfehlung Medikation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.csv), [Excel](../StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-therapieempfehlung-kombinationstherapie",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Therapieempfehlung_Kombinationstherapie",
  "title" : "MII PR Onkologie Therapieempfehlung Kombinationstherapie",
  "status" : "active",
  "date" : "2026-08-28T12:10:16+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt eine Empfehlung für eine Kombinationstherapie im Rahmen der Tumorkonferenz",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RequestGroup",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RequestGroup",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RequestGroup",
      "path" : "RequestGroup"
    },
    {
      "id" : "RequestGroup.meta.profile",
      "path" : "RequestGroup.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.identifier",
      "path" : "RequestGroup.identifier",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.status",
      "path" : "RequestGroup.status",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.intent",
      "path" : "RequestGroup.intent",
      "patternCode" : "proposal",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.code",
      "path" : "RequestGroup.code",
      "short" : "Type of therapy recommendation",
      "definition" : "Classification of the therapy recommendation using oBDS therapy types (CH, HO, IM, ZS, etc.) to specify the kind of therapy being recommended.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-therapieempfehlung-typ"
      }
    },
    {
      "id" : "RequestGroup.subject",
      "path" : "RequestGroup.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.encounter",
      "path" : "RequestGroup.encounter",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.authoredOn",
      "path" : "RequestGroup.authoredOn",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.reasonReference",
      "path" : "RequestGroup.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.action",
      "path" : "RequestGroup.action",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.action.code",
      "path" : "RequestGroup.action.code",
      "short" : "Empfohlenes Therapieprotokoll",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Empfohlenes Therapieprotokoll"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Empfohlenes Therapieprotokoll gemäß Tumorkonferenz",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Spezifisches Therapieprotokoll empfohlen durch Tumorkonferenz. Bei Kombinationstherapien repräsentiert dies das Gesamtprotokoll mit einzelnen Medikamenten als Sub-Actions."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-protokolle"
      }
    },
    {
      "id" : "RequestGroup.action.action",
      "path" : "RequestGroup.action.action",
      "short" : "Individual medications in protocol",
      "definition" : "For combination therapy protocols, each sub-action references an individual MedicationRequest with ATC/UNII coding",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.action.action.resource",
      "path" : "RequestGroup.action.action.resource",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"]
      }],
      "mustSupport" : true
    }]
  }
}

```
