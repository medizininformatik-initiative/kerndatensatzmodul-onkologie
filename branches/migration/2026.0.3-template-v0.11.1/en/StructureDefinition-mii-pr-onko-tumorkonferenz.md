# MII PR Onkologie Tumorkonferenz - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Tumorkonferenz**

## Resource Profile: MII PR Onkologie Tumorkonferenz 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz | *Version*:2026.0.3 |
| Active as of 2026-09-01 | *Computable Name*:MII_PR_Onko_Tumorkonferenz |

 
Dieses Profil beschreibt die Tumorkonferenz und die Therapieempfehlungen 

This profile describes the tumor board and the therapy recommendations for both traditional and molecular tumor board workflows. The data fields have been part of the oBDS since version 2021 and are captured in two different modules. Since all the fields involved can be represented very well via the FHIR CarePlan resource, all the tumor board and therapy recommendation fields were combined in the tumor board profile.

### Unified Activity Slicing Architecture

The profile supports **two different implementation approaches** via activity slicing:

#### obds slice: Standard oBDS therapy categorization

For traditional tumor boards with oBDS 19.1 categorization:

* **Usage**: `activity[obds].detail.code` for therapy type (CH, HO, IM, ZS, etc.)
* **Status tracking**: `activity[obds].detail.status` and `activity[obds].detail.statusReason` for therapy deviations
* **oBDS conformance**: Complete representation of oBDS fields 19.1 and 19.2

#### extended slice: Molecular tumor board protocols

For detailed molecular tumor boards with structured therapy protocols:

* **Usage**: `activity[extended].reference` → RequestGroup/MedicationRequest/ServiceRequest
* **Use cases**: multi-agent protocols, pharmaceutical classes, specific medication selection
* **Extended functionality**: level of detail going beyond oBDS categorization

### Shared profile structure

Both slices share the common CarePlan elements:

* **Patient reference**: `subject`
* **Primary diagnosis reference**: `addresses`
* **Tumor board category**: `category` according to oBDS 18.2
* **Date**: `created` according to oBDS 18.1
* **Additional information**: `supportingInfo` for relevant follow-up stagings

### Status management

#### For the obds slice (traditional tumor boards):

The CarePlan resource requires a mandatory specification of the `status` element of an `activity`. The therapies actually carried out are captured in the cancer registry data and SHOULD reference the tumor board resource via `Procedure.basedOn(Reference(CarePlan))`.

**Recommended status codes** according to FHIR CarePlanActivityStatus:

* `completed`: completed therapy
* `on-hold`: therapy interruption for a therapy not yet started
* `stopped`: therapy interruption for a therapy already started
* `unknown`: unknown, no status information available

**Therapy deviations**: For `on-hold` and `stopped`, `statusReason` SHOULD be populated with the oBDS field "therapy deviation at the patient's request".

#### For the extended slice (molecular tumor boards):

Status tracking takes place in the referenced resources (RequestGroup, MedicationRequest, ServiceRequest). `activity.progress` can be used for narrative progress notes.

Every tumor board with a therapy recommendation SHOULD be stored as a separate resource and reference the primary diagnosis via `CarePlan.addresses(Reference(Condition))`.

### FHIR invariant management

**Problem**: FHIR R4 invariant cpl-3 prevents simultaneous use of `activity.detail.code` and `activity.reference`

**Solution**: slice-specific element deactivation:

* **obds slice**: `activity.detail` activated, `activity.reference` deactivated (0..0)
* **extended slice**: `activity.reference` activated, `activity.detail` deactivated (0..0)

### Implementation flexibility

* **Backward compatibility**: existing oBDS implementations work unchanged
* **Hybrid approaches**: individual CarePlans can use both slice types
* **Gradual adoption**: start with the obds slice, extend to the extended slice as needed

### Application examples

#### Traditional tumor board (obds slice):

```
* activity[obds].detail.code.coding = #OP "Operation"
* activity[obds].detail.status = #completed

```

#### Molecular tumor board (extended slice):

```
* activity[extended].reference = Reference(RequestGroup/molecular-protocol)
* activity[extended].progress.text = "HR+/HER2- mit PI3K-Aktivierung - CDK4/6 Inhibitor empfohlen"

```

#### Mixed approach:

```
* activity[obds].detail.code.coding = #OP "Operation"
* activity[extended].reference = Reference(RequestGroup/precision-medicine-protocol)

```

-------

Mapping dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md).

**Examples**

### Traditional oBDS tumor board (obds slice):

[mii-exa-onko-tumorkonferenz-01](CarePlan-mii-exa-onko-tumorkonferenz-01.md)

### Molecular tumor board (extended slice):

[mii-exa-onko-tumorkonferenz-pure-molecular](CarePlan-mii-exa-onko-tumorkonferenz-pure-molecular.md)

### Mixed approach (both slices):

[mii-exa-onko-tumorkonferenz-mixed-approach](CarePlan-mii-exa-onko-tumorkonferenz-mixed-approach.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie Befund](StructureDefinition-mii-pr-onko-befund.md), [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md), [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie.md), [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md) and [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md)
* Examples for this Profile: [CarePlan/PatientKimMusterperson-Tumorkonferenz-1](CarePlan-PatientKimMusterperson-Tumorkonferenz-1.md), [CarePlan/PatientKimMusterperson-Tumorkonferenz-2](CarePlan-PatientKimMusterperson-Tumorkonferenz-2.md), [CarePlan/PatientKimMusterperson-Tumorkonferenz-3](CarePlan-PatientKimMusterperson-Tumorkonferenz-3.md), [CarePlan/PatientKimMusterperson-Tumorkonferenz-4](CarePlan-PatientKimMusterperson-Tumorkonferenz-4.md)... Show 12 more, [CarePlan/mii-exa-onko-kim-tk1](CarePlan-mii-exa-onko-kim-tk1.md), [CarePlan/mii-exa-onko-kim-tk2](CarePlan-mii-exa-onko-kim-tk2.md), [CarePlan/mii-exa-onko-kim-tk3](CarePlan-mii-exa-onko-kim-tk3.md), [CarePlan/mii-exa-onko-kim-tk4](CarePlan-mii-exa-onko-kim-tk4.md), [CarePlan/mii-exa-onko-tnm-synth-tumorkonferenz](CarePlan-mii-exa-onko-tnm-synth-tumorkonferenz.md), [CarePlan/mii-exa-onko-tumorkonferenz-01](CarePlan-mii-exa-onko-tumorkonferenz-01.md), [CarePlan/mii-exa-onko-tumorkonferenz-02](CarePlan-mii-exa-onko-tumorkonferenz-02.md), [CarePlan/mii-exa-onko-tumorkonferenz-folfox-modification](CarePlan-mii-exa-onko-tumorkonferenz-folfox-modification.md), [CarePlan/mii-exa-onko-tumorkonferenz-folfox](CarePlan-mii-exa-onko-tumorkonferenz-folfox.md), [CarePlan/mii-exa-onko-tumorkonferenz-mixed-approach](CarePlan-mii-exa-onko-tumorkonferenz-mixed-approach.md), [CarePlan/mii-exa-onko-tumorkonferenz-molekular](CarePlan-mii-exa-onko-tumorkonferenz-molekular.md) and [CarePlan/mii-exa-onko-tumorkonferenz-pure-molecular](CarePlan-mii-exa-onko-tumorkonferenz-pure-molecular.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-tumorkonferenz.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-tumorkonferenz.csv), [Excel](../StructureDefinition-mii-pr-onko-tumorkonferenz.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-tumorkonferenz.sch) 



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
  "date" : "2026-09-01T11:08:21+00:00",
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
