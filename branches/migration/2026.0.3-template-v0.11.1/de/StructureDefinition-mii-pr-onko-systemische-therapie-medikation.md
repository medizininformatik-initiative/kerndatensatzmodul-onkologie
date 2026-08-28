# MII PR Onkologie Systemische Therapie Medikation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Systemische Therapie Medikation**

## Ressourcenprofil: MII PR Onkologie Systemische Therapie Medikation 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_PR_Onko_Systemische_Therapie_Medikation |

 
Medikation der Systemische Therapie. Dieses Profil beschreibt die konkreten Medikationen, die im Rahmen der systemische Therapie für den oBDS dokumentiert werden. Da im oBDS systemische und abwartende Therapie in einem Feld gruppiert sind, werden die Daten für die Systemische und abwartende Therapie sowohl über eine FHIR-Prozedur (systemisch und abwartend) als auch als FHIR-Medikation abgedeckt. 

Dieses Profil beschreibt die konkreten Medikationen, die im Rahmen der systemischen Therapie für den oBDS dokumentiert werden.

Da im oBDS systemische und abwartende Therapie in einem Feld gruppiert sind, werden die Daten für die systemische und abwartende Therapie sowohl über eine FHIR-Prozedur (systemisch und abwartend) als auch als FHIR-Medikation abgedeckt.

Die Angaben zur systemischen onkologischen Medikation im oBDS werden mit den folgenden Datenpunkten abgebildet. Im Medikationsprofil der Systemischen Therapie sind das im Einzelnen:

* Start und Ende der Medikation
* Name des Behandlungsschemas
* Wirkstoffe (ATC-kodiert)

-------

### Konformität

Die vorliegende Profilierung ist kompatibel mit dem Prozedurenprofil der ISiK-Basismodule Stufe 4. https://simplifier.net/isik-medikation-v4/isikmedikationsinformation

Die vorliegende Profilierung ist derzeit **nicht** kompatibel mit dem EPA MedicationStatement, da dort unter MedicationStatement.medication explizit eine Referenz zu einer Medication-Ressource verlangt, während im vorliegenden Onkologie-MedicationStatement eine Kodierung über ATC präferiert wird. https://simplifier.net/epa-medication/epamedicationstatement

-------

Mapping Datensatz zu FHIR

> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md).

**Beispiele**

[mii-exa-onko-systemische-therapie-medikation1](MedicationStatement-mii-exa-onko-systemische-therapie-medikation1.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md) and [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md)
* Examples for this Profile: [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-1a](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-1a.md), [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-1b](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-1b.md), [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-2a](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-2a.md), [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-2b](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-2b.md)... Show 13 more, [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-3](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-3.md), [MedicationStatement/mii-exa-onko-folfox-5fu-statement](MedicationStatement-mii-exa-onko-folfox-5fu-statement.md), [MedicationStatement/mii-exa-onko-folfox-leucovorin-statement](MedicationStatement-mii-exa-onko-folfox-leucovorin-statement.md), [MedicationStatement/mii-exa-onko-folfox-oxaliplatin-statement](MedicationStatement-mii-exa-onko-folfox-oxaliplatin-statement.md), [MedicationStatement/mii-exa-onko-medikation-iberdomide-unii](MedicationStatement-mii-exa-onko-medikation-iberdomide-unii.md), [MedicationStatement/mii-exa-onko-medikation-imatinib-atc-version-transition](MedicationStatement-mii-exa-onko-medikation-imatinib-atc-version-transition.md), [MedicationStatement/mii-exa-onko-modification-5fu-phase1](MedicationStatement-mii-exa-onko-modification-5fu-phase1.md), [MedicationStatement/mii-exa-onko-modification-5fu-phase2](MedicationStatement-mii-exa-onko-modification-5fu-phase2.md), [MedicationStatement/mii-exa-onko-modification-leucovorin-phase1](MedicationStatement-mii-exa-onko-modification-leucovorin-phase1.md), [MedicationStatement/mii-exa-onko-modification-leucovorin-phase2](MedicationStatement-mii-exa-onko-modification-leucovorin-phase2.md), [MedicationStatement/mii-exa-onko-modification-oxaliplatin-phase1](MedicationStatement-mii-exa-onko-modification-oxaliplatin-phase1.md), [MedicationStatement/mii-exa-onko-systemische-therapie-medikation1](MedicationStatement-mii-exa-onko-systemische-therapie-medikation1.md) and [MedicationStatement/mii-exa-onko-systemische-therapie-medikation2](MedicationStatement-mii-exa-onko-systemische-therapie-medikation2.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-systemische-therapie-medikation.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Medikation_MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Medikation_MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement) 

** Summary **

Mandatory: 1 element(1 nested mandatory element)
 Must-Support: 5 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Tumorkonferenz (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)](StructureDefinition-mii-pr-onko-tumorkonferenz.md)
* [MII PR Onkologie Therapieempfehlung Medikation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md)
* [MII PR Onkologie Systemische Therapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie)](StructureDefinition-mii-pr-onko-systemische-therapie.md)
* [MII PR Medikation Medication (https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationStatement.basedOn
* The element 1 is sliced based on the value of MedicationStatement.partOf

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Medikation_MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Medikation_MedicationStatement](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement) 

** Summary **

Mandatory: 1 element(1 nested mandatory element)
 Must-Support: 5 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Tumorkonferenz (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)](StructureDefinition-mii-pr-onko-tumorkonferenz.md)
* [MII PR Onkologie Therapieempfehlung Medikation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md)
* [MII PR Onkologie Systemische Therapie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie)](StructureDefinition-mii-pr-onko-systemische-therapie.md)
* [MII PR Medikation Medication (https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationStatement.basedOn
* The element 1 is sliced based on the value of MedicationStatement.partOf

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-systemische-therapie-medikation.csv), [Excel](../StructureDefinition-mii-pr-onko-systemische-therapie-medikation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-systemische-therapie-medikation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-systemische-therapie-medikation",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Systemische_Therapie_Medikation",
  "title" : "MII PR Onkologie Systemische Therapie Medikation",
  "status" : "active",
  "date" : "2026-08-28T10:16:47+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Medikation der Systemische Therapie. Dieses Profil beschreibt die konkreten Medikationen, die im Rahmen der systemische Therapie für den oBDS dokumentiert werden.  Da im oBDS systemische und abwartende Therapie in einem Feld gruppiert sind, werden die Daten für die Systemische und abwartende Therapie sowohl über eine FHIR-Prozedur (systemisch und abwartend) als auch als FHIR-Medikation abgedeckt. ",
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
  "type" : "MedicationStatement",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationStatement",
      "path" : "MedicationStatement"
    },
    {
      "id" : "MedicationStatement.basedOn",
      "path" : "MedicationStatement.basedOn",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this.resolve()"
        }],
        "rules" : "open"
      },
      "short" : "Therapieplan oder Therapieempfehlung",
      "definition" : "Referenz auf den CarePlan (Therapieplan) oder MedicationRequest (Therapieempfehlung) auf dem diese Medikation basiert.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CarePlan",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest"]
      }]
    },
    {
      "id" : "MedicationStatement.basedOn:tumorkonferenz",
      "path" : "MedicationStatement.basedOn",
      "sliceName" : "tumorkonferenz",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.basedOn:therapieempfehlung",
      "path" : "MedicationStatement.basedOn",
      "sliceName" : "therapieempfehlung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.partOf",
      "path" : "MedicationStatement.partOf",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "MedicationStatement.partOf:systemischeTherapie",
      "path" : "MedicationStatement.partOf",
      "sliceName" : "systemischeTherapie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"]
      }]
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationReference",
      "path" : "MedicationStatement.medication[x]",
      "sliceName" : "medicationReference",
      "short" : "Referenz auf Medication (Alternative zur Inline-Codierung)",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Referenz auf Medication als Alternative zur Inline-Codierung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Medication Reference"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Alternative zur Inline-Codierung: Referenz auf eine Medication-Ressource gemäß MII-Modul Medikation. Die Substanz ist dort über Medication.code (ATC/UNII) bzw. Medication.ingredient codiert.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"]
      }]
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept",
      "path" : "MedicationStatement.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding",
      "path" : "MedicationStatement.medication[x].coding",
      "short" : "Wirkstoff der systemischen Medikation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Wirkstoff/ Substanz der systemischen Medikation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Wirkstoff der systemischen onkologischen Medikation. Nach Möglichkeit als ATC-kodiert anzugeben. Wirkstoffe sind einzeln zu kodieren. Kombinationstherapien können über MedicationStatement.partOf in übergeordneten MedicationStatements gruppiert werden - in diesem Fall ist bei jedem Wirkstoff unter `MedicationStatement.note.text` das Kürzel des (z.B. chemotherapeutischen) Protokolls zu hinterlegen.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Wirkstoff / Substanz der systemischen onkologischen Medikation gemäß 16.6 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding.code",
      "path" : "MedicationStatement.medication[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "16.6",
        "comment" : "Systemische Therapie Substanz"
      }]
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding:UNII",
      "path" : "MedicationStatement.medication[x].coding",
      "sliceName" : "UNII",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-unii"
      }
    },
    {
      "id" : "MedicationStatement.subject",
      "path" : "MedicationStatement.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "MedicationStatement.effective[x]:effectivePeriod",
      "path" : "MedicationStatement.effective[x]",
      "sliceName" : "effectivePeriod",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "MedicationStatement.effective[x]:effectivePeriod.start",
      "path" : "MedicationStatement.effective[x].start",
      "short" : "Startdatum der systemischen Medikation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Startdatum der systemischen Medikation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Startdatum der systemischen Medikation gemäß 16.5 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Startdatum der systemischen Medikation gemäß 16.5 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.effective[x]:effectivePeriod.end",
      "path" : "MedicationStatement.effective[x].end",
      "short" : "Enddatum der systemischen Medikation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Enddatum der systemischen Medikation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Enddatum der systemischen Medikation gemäß 16.8 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Enddatum der systemischen Medikation gemäß 16.8 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.note.text",
      "path" : "MedicationStatement.note.text",
      "short" : "Protokoll",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Protokoll der systemischen Medikation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Protokoll der systemischen Medikation. Bei Angabe eines Schemas sind alle Wirkstoffe in einzelnen Ressourcen unter MedicationStatement.medication[x] gesondert zu kodieren ",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Protokoll der systemischen Medikation gemäß 16.4 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "16.4",
        "comment" : "Systemische Therapie Protokoll"
      }]
    }]
  }
}

```
