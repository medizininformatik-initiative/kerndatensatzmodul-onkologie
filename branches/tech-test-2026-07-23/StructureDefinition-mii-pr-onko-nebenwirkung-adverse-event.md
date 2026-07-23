# MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie**

## Resource Profile: MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_PR_Onko_Nebenwirkung_Adverse_Event |

 
Dieses Profil beschreibt die Nebenwirkung von Strahlentherapie und systemische Therapie in der Onkologie. 

**Usages:**

* Examples for this Profile: [AdverseEvent/mii-pr-onko-nebenwirkung-0](AdverseEvent-mii-pr-onko-nebenwirkung-0.md) and [AdverseEvent/mii-pr-onko-nebenwirkung-text](AdverseEvent-mii-pr-onko-nebenwirkung-text.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.csv), [Excel](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.xlsx), [Schematron](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-nebenwirkung-adverse-event",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Nebenwirkung_Adverse_Event",
  "title" : "MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie",
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
  "description" : "Dieses Profil beschreibt die Nebenwirkung von Strahlentherapie und systemische Therapie in der Onkologie.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "oBDS",
    "name" : "Mapping FHIR zu oBDS"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AdverseEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AdverseEvent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AdverseEvent",
      "path" : "AdverseEvent"
    },
    {
      "id" : "AdverseEvent.meta.profile",
      "path" : "AdverseEvent.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event",
      "path" : "AdverseEvent.event",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.coding",
      "path" : "AdverseEvent.event.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-nebenwirkung-art"
      }
    },
    {
      "id" : "AdverseEvent.event.coding.system",
      "path" : "AdverseEvent.event.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.coding.version",
      "path" : "AdverseEvent.event.coding.version",
      "short" : "CTCAE-Version",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "CTCAE-Version"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Version der für Art der Nebenwirkung verwendeten CTCAE-Klassifikation gemäß 15.3 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Version der für Art der Nebenwirkung verwendeten CTCAE-Klassifikation gemäß 15.3 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "15.3",
        "comment" : "Nebenwirkungen nach CTCAE Version"
      }]
    },
    {
      "id" : "AdverseEvent.event.coding.code",
      "path" : "AdverseEvent.event.coding.code",
      "short" : "Art der Nebenwirkung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Art der Nebenwirkung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Art der Nebenwirkung nach CTCAE / MedDRA.  Abweichend von 15.2 oBDS 2021 kann dieses Feld leer sein falls eine Nebenwirkung des Schweregrads 1 oder 2 vorliegt und keine spezifische Art der Nebenwirkung dokumentiert wurde",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Art der Nebenwirkung nach CTCAE / MedDRA . Abweichend von 15.2 oBDS 2021 kann dieses Feld leer sein falls eine Nebenwirkung des Schweregrads 1 oder 2 vorliegt und keine spezifische Art der Nebenwirkung dokumentiert wurde"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "15.2",
        "comment" : "Nebenwirkungen nach CTCAE Art"
      }]
    },
    {
      "id" : "AdverseEvent.event.coding:meddra",
      "path" : "AdverseEvent.event.coding",
      "sliceName" : "meddra",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.coding:meddra.system",
      "path" : "AdverseEvent.event.coding.system",
      "min" : 1,
      "patternUri" : "https://www.meddra.org",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.coding:meddra.version",
      "path" : "AdverseEvent.event.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.coding:meddra.code",
      "path" : "AdverseEvent.event.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.text",
      "path" : "AdverseEvent.event.text",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.subject",
      "path" : "AdverseEvent.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.encounter",
      "path" : "AdverseEvent.encounter",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.seriousness",
      "path" : "AdverseEvent.seriousness",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-nebenwirkung-ctcae-grad"
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "15.1",
        "comment" : "Nebenwirkungen nach CTCAE-Grad"
      }]
    },
    {
      "id" : "AdverseEvent.seriousness.coding",
      "path" : "AdverseEvent.seriousness.coding",
      "short" : "Schweregrad der Nebenwirkung nach CTCAE",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Schweregrad der Nebenwirkung nach CTCAE"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Schweregrad der Nebenwirkung nach CTCAE gemäß 15.1 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Schweregrad der Nebenwirkung nach CTCAE gemäß 15.1 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.seriousness.coding.system",
      "path" : "AdverseEvent.seriousness.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.seriousness.coding.code",
      "path" : "AdverseEvent.seriousness.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.seriousness.text",
      "path" : "AdverseEvent.seriousness.text",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.suspectEntity",
      "path" : "AdverseEvent.suspectEntity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.suspectEntity.instance",
      "path" : "AdverseEvent.suspectEntity.instance",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Procedure",
        "http://hl7.org/fhir/StructureDefinition/MedicationStatement"]
      }],
      "mustSupport" : true
    }]
  }
}

```
