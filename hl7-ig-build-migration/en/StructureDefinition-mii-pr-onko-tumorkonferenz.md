# MII PR Onkologie Tumorkonferenz - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Resource Profile: MII PR Onkologie Tumorkonferenz 

 
Dieses Profil beschreibt die Tumorkonferenz und die Therapieempfehlungen 

**Usages:**

* Refer to this Profile: [MII PR Onkologie Befund](StructureDefinition-mii-pr-onko-befund.md)
* Examples for this Profile: [CarePlan/PatientKimMusterperson-Tumorkonferenz-1](CarePlan-PatientKimMusterperson-Tumorkonferenz-1.md), [CarePlan/PatientKimMusterperson-Tumorkonferenz-2](CarePlan-PatientKimMusterperson-Tumorkonferenz-2.md), [CarePlan/PatientKimMusterperson-Tumorkonferenz-3](CarePlan-PatientKimMusterperson-Tumorkonferenz-3.md), [CarePlan/PatientKimMusterperson-Tumorkonferenz-4](CarePlan-PatientKimMusterperson-Tumorkonferenz-4.md)... Show 7 more, [CarePlan/mii-exa-onko-tumorkonferenz-01](CarePlan-mii-exa-onko-tumorkonferenz-01.md), [CarePlan/mii-exa-onko-tumorkonferenz-02](CarePlan-mii-exa-onko-tumorkonferenz-02.md), [CarePlan/mii-exa-onko-tumorkonferenz-folfox-modification](CarePlan-mii-exa-onko-tumorkonferenz-folfox-modification.md), [CarePlan/mii-exa-onko-tumorkonferenz-folfox](CarePlan-mii-exa-onko-tumorkonferenz-folfox.md), [CarePlan/mii-exa-onko-tumorkonferenz-mixed-approach](CarePlan-mii-exa-onko-tumorkonferenz-mixed-approach.md), [CarePlan/mii-exa-onko-tumorkonferenz-molekular](CarePlan-mii-exa-onko-tumorkonferenz-molekular.md) and [CarePlan/mii-exa-onko-tumorkonferenz-pure-molecular](CarePlan-mii-exa-onko-tumorkonferenz-pure-molecular.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-pr-onko-tumorkonferenz.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-tumorkonferenz.csv), [Excel](../StructureDefinition-mii-pr-onko-tumorkonferenz.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-tumorkonferenz.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-tumorkonferenz",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Tumorkonferenz",
  "title" : "MII PR Onkologie Tumorkonferenz",
  "status" : "active",
  "date" : "2026-07-02T12:18:38+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt die Tumorkonferenz und die Therapieempfehlungen",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
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
      "definition" : "Reference to detailed therapy recommendations: RequestGroup for complex multi-agent protocols, MedicationRequest for specific medication orders, or ServiceRequest for therapy referrals (surgery, radiation, etc.)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
        "http://hl7.org/fhir/StructureDefinition/ServiceRequest"]
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
