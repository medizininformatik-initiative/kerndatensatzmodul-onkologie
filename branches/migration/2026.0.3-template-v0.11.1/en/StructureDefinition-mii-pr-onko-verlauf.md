# MII PR Onkologie Verlauf - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Verlauf**

## Resource Profile: MII PR Onkologie Verlauf 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_PR_Onko_Verlauf |

 
Dieses Profil beschreibt die Verlaufskontrolle und verweist ggfs. auf andere verlaufsrelevante diagnostische Maßnahmen 

### Context

This profile describes a follow-up observation in the context of oncological therapy.

In the oBDS, the follow-up report ("Verlaufsmeldung") is one of several report types. The follow-up report can contain several other report contents. In the present FHIR profiling, follow-up observations are, alongside tumor boards, one of the two decisive resource types used for the temporal modeling of the treatment course.

The correct coding and interpretation of cancer registry follow-up data is not trivial - details can be found in the documentation guide of the Plattform §65c.

https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/75628552/Verlaufsmeldung

-------

### Conformance Statements

* A follow-up observation **SHOULD** have a reference to the primary diagnosis via `focus`
* A follow-up observation **SHOULD** additionally contain in `value` an assessment of the disease progression (PD, PR, MR, etc.), provided this assessment has been made and is present in the data
* A follow-up observation **SHOULD** furthermore contain in `component` assessments of the staging of the tumor, the lymph nodes and the distant metastases, provided these have been made and are relevant for the staging
* Since the FHIR profiling does not represent a complete follow-up report, other observations that are relevant for staging in addition to or differing from the TNM criteria mentioned above **SHOULD** be referenced from the follow-up observation via `hasMember`. Examples include newly diagnosed distant metastases, additionally performed histologies, or genetic tests carried out later in the course. These observations **MAY** be taken directly from the oBDS report contents of the respective follow-up report.

-------

Mapping dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.md).

-------

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter `_id` MUST be supported:Examples:`GET [base]/Observation?_id=1234`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand`Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "identfier" MUST be supported:Examples:`GET [base]/Observation?identfier=http://charite.de/labor/labortests|1234`Usage notes: Further information on searching by "identfier" can be found in the FHIR base specification - section "token".
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005`Usage notes: Further information on searching by "code" can be found in the FHIR base specification - section "token".
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Observation?subject=Patient/example`Usage notes: Further information on searching by "subject" can be found in the FHIR base specification - section "reference".
1. The search parameter "focus" MUST be supported:Examples:`GET [base]/Observation?focus=Condition/example`Usage notes: Further information on searching by "focus" can be found in the FHIR base specification - section "reference".
1. The search parameter "encounter" MUST be supported:Examples:`GET [base]/Observation?encounter=Encounter/example`Usage notes: Further information on searching by "encounter" can be found in the FHIR base specification - section "reference".
1. The search parameter "component-code-value-concept" MUST be supported:Examples:`GET [base]/Observation?component-code-value-concept=http://loinc.org|12345-6$http://fhir.de/CodeSystem/sct|12345678`Usage notes: Further information on searching by "components" can be found in the FHIR base specification - section "compodsite".

**Examples**

[mii-exa-onko-verlauf-tumor](Observation-mii-exa-onko-verlauf-tumor.md)

**Usages:**

* Examples for this Profile: [Observation/PatientKimMusterperson-Verlauf-2022-01-22](Observation-PatientKimMusterperson-Verlauf-2022-01-22.md), [Observation/mii-exa-onko-folfox-verlauf-6months](Observation-mii-exa-onko-folfox-verlauf-6months.md), [Observation/mii-exa-onko-modification-verlauf-6months](Observation-mii-exa-onko-modification-verlauf-6months.md), [Observation/mii-exa-onko-verlauf-journey-post-chemo](Observation-mii-exa-onko-verlauf-journey-post-chemo.md)... Show 3 more, [Observation/mii-exa-onko-verlauf-journey-post-surgery](Observation-mii-exa-onko-verlauf-journey-post-surgery.md), [Observation/mii-exa-onko-verlauf-journey-recurrence](Observation-mii-exa-onko-verlauf-journey-recurrence.md) and [Observation/mii-exa-onko-verlauf-tumor](Observation-mii-exa-onko-verlauf-tumor.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-verlauf.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-verlauf.csv), [Excel](../StructureDefinition-mii-pr-onko-verlauf.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-verlauf.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-verlauf",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Verlauf",
  "title" : "MII PR Onkologie Verlauf",
  "status" : "active",
  "date" : "2026-08-27T11:11:54+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt die Verlaufskontrolle und verweist ggfs. auf andere verlaufsrelevante diagnostische Maßnahmen",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "396432002",
        "display" : "Status of regression of tumor (observable entity)"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]:effectiveDateTime",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
      "comment" : "In der vorliegenden ersten Version des Moduls Onkologie ist das letzte (= späteste) Datum der verlinkten Observations anzugeben, entsprechend Punkt 17.1 des oBDS 2021. Langfristig ist zu überlegen, hier über eine effectivePeriod eine Datumsrange abzubilden. ",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.1",
        "comment" : "Datum, an dem die letzte Untersuchung durchgeführt wurde, die zur Einschätzung des Tumorstatus geführt hat."
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-gesamtbeurteilung"
      }
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding",
      "path" : "Observation.value[x].coding",
      "short" : "Gesamtbeurteilung im Verlauf",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Untersuchung im Verlauf"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung im Verlauf"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Gesamtbeurteilung im Verlauf gemäß 17.2 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der letzten Untersuchung in dieser Verlaufsbeurteilung gemäß 17.1 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung im Verlauf gemäß 17.2 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding.system",
      "path" : "Observation.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding.code",
      "path" : "Observation.value[x].coding.code",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.2",
        "comment" : "Gesamtbeurteilung des Tumorstatus"
      }]
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code.coding"
        }],
        "description" : "Specific tumor status components (0..* to support cases with no changes, hematological cancers where TNM doesn't apply, or impossible assessments)",
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Tumor_Verlauf",
      "path" : "Observation.component",
      "sliceName" : "Tumor_Verlauf",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Tumor_Verlauf.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "445200009",
        "display" : "Status of residual neoplasm (observable entity)"
      }
    },
    {
      "id" : "Observation.component:Tumor_Verlauf.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.3",
        "comment" : "Tumorstatus Primärtumor"
      }]
    },
    {
      "id" : "Observation.component:Tumor_Verlauf.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-primaertumor"
      }
    },
    {
      "id" : "Observation.component:Tumor_Verlauf.value[x].coding",
      "path" : "Observation.component.value[x].coding",
      "short" : "Gesamtbeurteilung Primärtumor im Verlauf",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung Primärtumor im Verlauf"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Gesamtbeurteilung des Primärtumors im Verlauf gemäß 17.3 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung des Primärtumors im Verlauf gemäß 17.3 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.component:Tumor_Verlauf.value[x].coding.system",
      "path" : "Observation.component.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Tumor_Verlauf.value[x].coding.code",
      "path" : "Observation.component.value[x].coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Lymphknoten_Verlauf",
      "path" : "Observation.component",
      "sliceName" : "Lymphknoten_Verlauf",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Lymphknoten_Verlauf.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "399656008",
        "display" : "Presence of metastatic neoplasm in regional lymph node (observable entity)"
      }
    },
    {
      "id" : "Observation.component:Lymphknoten_Verlauf.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.4",
        "comment" : "Tumorstatus Lymphknoten"
      }]
    },
    {
      "id" : "Observation.component:Lymphknoten_Verlauf.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-lymphknoten"
      }
    },
    {
      "id" : "Observation.component:Lymphknoten_Verlauf.value[x].coding",
      "path" : "Observation.component.value[x].coding",
      "short" : "Gesamtbeurteilung Lymphknoten im Verlauf",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung Lymphknoten im Verlauf"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Gesamtbeurteilung der Lymphknoteninfiltration im Verlauf gemäß 17.4 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung der Lymphknoteninfiltration im Verlauf gemäß 17.4 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.component:Lymphknoten_Verlauf.value[x].coding.system",
      "path" : "Observation.component.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Lymphknoten_Verlauf.value[x].coding.code",
      "path" : "Observation.component.value[x].coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Fernmetastasen_Verlauf",
      "path" : "Observation.component",
      "sliceName" : "Fernmetastasen_Verlauf",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Fernmetastasen_Verlauf.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "399608002",
        "display" : "Status of distant metastasis (observable entity)"
      }
    },
    {
      "id" : "Observation.component:Fernmetastasen_Verlauf.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.5",
        "comment" : "Tumorstatus Fernmetastasen"
      }]
    },
    {
      "id" : "Observation.component:Fernmetastasen_Verlauf.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-fernmetastasen"
      }
    },
    {
      "id" : "Observation.component:Fernmetastasen_Verlauf.value[x].coding",
      "path" : "Observation.component.value[x].coding",
      "short" : "Gesamtbeurteilung Fernmetastasen im Verlauf",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung Fernmetastasen im Verlauf"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Gesamtbeurteilung von Fernmetastasen im Verlauf gemäß 17.5 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung von Fernmetastasen im Verlauf gemäß 17.5 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.component:Fernmetastasen_Verlauf.value[x].coding.system",
      "path" : "Observation.component.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Fernmetastasen_Verlauf.value[x].coding.code",
      "path" : "Observation.component.value[x].coding.code",
      "mustSupport" : true
    }]
  }
}

```
