# MII PR Onkologie Frühere Tumorerkrankung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Frühere Tumorerkrankung**

## Resource Profile: MII PR Onkologie Frühere Tumorerkrankung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_PR_Onko_Fruehere_Tumorerkrankung |

 
Dieses Profil beschreibt frühere Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert/behandelt wurden. Basiert auf FHIR Condition, da historische Daten oft nur als Freitext vorliegen. 

**Usages:**

* Refer to this Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* Examples for this Profile: [Condition/mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-freetext](Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.md) and [Condition/mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.csv), [Excel](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.xlsx), [Schematron](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-fruehere-tumorerkrankung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Fruehere_Tumorerkrankung",
  "title" : "MII PR Onkologie Frühere Tumorerkrankung",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Frühere Tumorerkrankung"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-07-23T12:42:42+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt frühere Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert/behandelt wurden. Basiert auf FHIR Condition, da historische Daten oft nur als Freitext vorliegen.",
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankungen"
      }]
    },
    {
      "id" : "Condition.meta.profile",
      "path" : "Condition.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension",
      "path" : "Condition.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:assertedDate",
      "path" : "Condition.extension",
      "sliceName" : "assertedDate",
      "short" : "Diagnosedatum der früheren Tumorerkrankung",
      "definition" : "Datum der früheren Tumorerkrankung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/condition-assertedDate"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:assertedDate.value[x]",
      "path" : "Condition.extension.value[x]",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung Diagnosedatum"
      }]
    },
    {
      "id" : "Condition.extension:morphology-behavior-icdo3",
      "path" : "Condition.extension",
      "sliceName" : "morphology-behavior-icdo3",
      "short" : "ICD-O-Morphologie",
      "definition" : "Morphologie der früheren Tumorerkrankung nach ICD-O-3",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-clinical"
      }
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-ver-status"
      }
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.category:oncology",
      "path" : "Condition.category",
      "sliceName" : "oncology",
      "short" : "Kategorisierung als onkologische Diagnose",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kategorisierung als onkologische Diagnose"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "394593009",
          "display" : "Medical oncology (qualifier value)"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.code.coding:icd10-gm",
      "path" : "Condition.code.coding",
      "sliceName" : "icd10-gm",
      "short" : "ICD-10-GM Kodierung (optional)",
      "definition" : "ICD-10-GM Kodierung der früheren Tumorerkrankung, falls verfügbar",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:icd10-gm.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "patternUri" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:icd10-gm.version",
      "path" : "Condition.code.coding.version",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung ICD-10-GM Version"
      }]
    },
    {
      "id" : "Condition.code.coding:icd10-gm.code",
      "path" : "Condition.code.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung ICD-10-GM Code"
      }]
    },
    {
      "id" : "Condition.code.text",
      "path" : "Condition.code.text",
      "short" : "Textuelle Beschreibung der früheren Tumorerkrankung (Pflichtfeld)",
      "definition" : "Freitextbeschreibung der früheren Tumorerkrankung",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung Beschreibung"
      }]
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite.coding",
      "path" : "Condition.bodySite.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.bodySite.coding:icd-o-3",
      "path" : "Condition.bodySite.coding",
      "sliceName" : "icd-o-3",
      "short" : "ICD-O-3 Topographie",
      "definition" : "Anatomische Lokalisation nach ICD-O-3",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite.coding:icd-o-3.system",
      "path" : "Condition.bodySite.coding.system",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite.coding:icd-o-3.code",
      "path" : "Condition.bodySite.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-topographie"
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung ICD-O-3 Topographie"
      }]
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "mustSupport" : true
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "mustSupport" : true
    }]
  }
}

```
