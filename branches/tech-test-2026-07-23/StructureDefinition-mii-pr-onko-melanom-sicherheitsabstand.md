# MII PR Onkologie Melanom Sicherheitsabstand - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Melanom Sicherheitsabstand**

## Resource Profile: MII PR Onkologie Melanom Sicherheitsabstand 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-sicherheitsabstand | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_PR_Onko_Melanom_Sicherheitsabstand |

 
Dieses Profil beschreibt den minimalen Sicherheitsabstand zum Primärtumor beim Malignen Melanom basierend auf oBDS Feld MM1. Bei nicht beurteilbaren Fällen (oBDS Wert -1) wird dataAbsentReason verwendet statt valueQuantity. 

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-melanom-sicherheitsabstand](Observation-mii-exa-onko-melanom-sicherheitsabstand.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand.csv), [Excel](StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand.xlsx), [Schematron](StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-melanom-sicherheitsabstand",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-sicherheitsabstand",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Melanom_Sicherheitsabstand",
  "title" : "MII PR Onkologie Melanom Sicherheitsabstand",
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
  "description" : "Dieses Profil beschreibt den minimalen Sicherheitsabstand zum Primärtumor beim Malignen Melanom basierend auf oBDS Feld MM1. Bei nicht beurteilbaren Fällen (oBDS Wert -1) wird dataAbsentReason verwendet statt valueQuantity.",
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
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "constraint" : [{
        "key" : "mii-onko-melanom-sicherheitsabstand-1",
        "severity" : "error",
        "human" : "Entweder muss valueQuantity oder dataAbsentReason vorhanden sein",
        "expression" : "valueQuantity.exists() or dataAbsentReason.exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-sicherheitsabstand"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "MM1",
        "comment" : "Sicherheitsabstand Primärtumor"
      }]
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Sicherheitsabstand Primärtumor",
      "definition" : "Minimaler Sicherheitsabstand zum Primärtumor beim Malignen Melanom gemäß oBDS MM1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "396511007",
        "display" : "Distance of in situ melanoma from closest lateral surgical margin in excised specimen of skin (observable entity)"
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
      "short" : "Datum der Messung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Messung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum der Messung des Sicherheitsabstands",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Messung des Sicherheitsabstands"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "MM1",
        "comment" : "Datum der Messung des Sicherheitsabstands"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Sicherheitsabstand in mm",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Sicherheitsabstand in mm"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Minimaler Sicherheitsabstand zum Primärtumor in mm gemäß oBDS MM1",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Minimaler Sicherheitsabstand zum Primärtumor in mm nach definitivem operativem Eingriff gemäß oBDS MM1. Wert 0 entspricht lokal R1 oder R2 bzw. marginal"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].value",
      "path" : "Observation.value[x].value",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "MM1",
        "comment" : "Minimaler Sicherheitsabstand in mm"
      }]
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "min" : 1,
      "patternString" : "mm",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "min" : 1,
      "fixedUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "min" : 1,
      "patternCode" : "mm",
      "mustSupport" : true
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "short" : "Grund für fehlende Messung",
      "definition" : "Grund warum der Sicherheitsabstand nicht bestimmt werden konnte (z.B. nicht beurteilbar). Wird verwendet wenn oBDS Wert -1 (nicht beurteilbar) vorliegt.",
      "mustSupport" : true
    }]
  }
}

```
