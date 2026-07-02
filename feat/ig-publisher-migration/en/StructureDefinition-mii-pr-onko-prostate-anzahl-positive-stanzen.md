# MII PR Onkologie Prostata Anzahl positiver Stanzen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Resource Profile: MII PR Onkologie Prostata Anzahl positiver Stanzen 

 
Dieses Profil beschreibt die Anzahl positiver Stanzen einer Prostata-Biopsie in der Onkologie 

### Inhalt

Dieses Profil beschreibt die Anzahl der tumorpositiven Stanzen bei der Prostatabiopsie. Diese Information ist entscheidend für die Risikoeinschätzung und Therapieplanung, da sie das Ausmaß der Tumorausbreitung in der Prostata widerspiegelt.

Das Profil basiert auf einer FHIR Observation-Ressource und verwendet LOINC zur Kodierung. Der Wert wird als Quantity mit der Einheit "Stück" angegeben.

-------

### Verknüpfungen zu anderen Ressourcen

Die Anzahl positiver Stanzen ist ein wichtiger Biopsie-Parameter:

* verweist über `Observation.focus` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
* verweist über `Observation.subject` auf den Patienten (Patient-Ressource)
* kann über `Observation.partOf` mit der entsprechenden Biopsie-Procedure verknüpft werden
* steht in Relation zur Gesamtanzahl der Stanzen (separate Observation)

-------

### oBDS-Kontext

Gemäß oBDS P4.2 wird die Anzahl der tumorpositiven Stanzen dokumentiert. Diese Information ist zusammen mit der Gesamtanzahl der Stanzen essentiell für die Beurteilung der Tumorlast.

### Terminologie-Binding

Der LOINC-Code für die Anzahl positiver Stanzen ist **required** gebunden.

-------

Mapping Datensatz zu FHIR

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

-------

**Suchparameter**

Folgende Suchparameter sind für das Prostata-Anzahl-Positive-Stanzen Profil relevant:

1. Der Suchparameter "_id" MUSS unterstützt werden:`GET [base]/Observation?_id=12345`
1. Der Suchparameter "_profile" MUSS unterstützt werden:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen`
1. Der Suchparameter "code" MUSS unterstützt werden:`GET [base]/Observation?code=http://loinc.org|33746-2`
1. Der Suchparameter "value-quantity" MUSS unterstützt werden:`GET [base]/Observation?value-quantity=gt3`

-------

**Beispiele**

[Beispiel: mii-exa-onko-prostata-anzahl-positiver-stanzen-1](Observation-mii-exa-onko-prostata-anzahl-positiver-stanzen-1.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-prostata-anzahl-positiver-stanzen-1](Observation-mii-exa-onko-prostata-anzahl-positiver-stanzen-1.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.csv), [Excel](../StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-prostate-anzahl-positive-stanzen",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Prostata_Anzahl_Positive_Stanzen",
  "title" : "MII PR Onkologie Prostata Anzahl positiver Stanzen",
  "status" : "active",
  "date" : "2026-07-02T11:24:18+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt die Anzahl positiver Stanzen einer Prostata-Biopsie in der Onkologie",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
      "path" : "Observation"
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Anzahl Stanzen",
      "definition" : "Anzahl Stanzen der Prostata-Biopsie",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "44651-8",
        "display" : "Tissue cores.positive.carcinoma in Tissue core"
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
      "short" : "Datum der Probenentnahme",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Probenentnahme"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum der Probenentnahme der Prostata-Biopise oder des Prostata-Exzisats",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Probenentnahme der Prostata-Biopise oder des Prostata-Exzisats"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Primäres Gleason-Pattern",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Primäres Gleason-Pattern"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Primäres Gleason-Pattern einer Prostata-Biopsie oder Operation",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Primäres Gleason-Pattern einer Prostata-Biopsie oder Operation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "mustSupport" : true
    }]
  }
}

```
