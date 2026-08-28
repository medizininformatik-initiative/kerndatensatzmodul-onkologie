# MII PR Onkologie Ca-Befall Stanze - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Ca-Befall Stanze**

## Resource Profile: MII PR Onkologie Ca-Befall Stanze 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-ca-befall-stanze | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_PR_Onko_Prostata_CA_Befall_Stanze |

 
Dieses Profil beschreibt den prozentualen Befall der am stärksten befallenen Stanze einer Prostata-Biopsie oder eines Prostata-Exzisionspräparates in der Onkologie 

### Content

This profile describes the percentage involvement of the most affected core of a prostate biopsy or prostate excision specimen in oncology. This is an important histopathological parameter for assessing tumor extent and aggressiveness in prostate cancer.

The profile is based on a FHIR Observation resource and uses LOINC to code the observed parameter. The value is given as a percentage and refers to the most affected biopsy core.

### Relationships to other resources

The carcinoma involvement of the core is an important histopathological observation:

* refers via `Observation.focus` to the primary diagnosis ([MII_PR_Onko_Diagnose_Primaertumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md))
* refers via `Observation.subject` to the patient (Patient resource)
* can be linked via `Observation.encounter` to a specific encounter
* can be linked via `Observation.specimen` to the corresponding tissue sample

### oBDS context

According to oBDS P4.3, the percentage carcinoma involvement of the most affected core of a prostate biopsy is documented. This is an important parameter for the histopathological assessment of tumor extent.

### Terminology binding

The profile uses a **required** LOINC code for the unique identification of the observation:

* **LOINC**: `44654-2` "Tissue involved by tumor in Prostate tumor"

### Example

* [Example instance carcinoma involvement of core](Observation-mii-exa-onko-prostata-ca-befall-stanze-1.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-prostata-ca-befall-stanze-1](Observation-mii-exa-onko-prostata-ca-befall-stanze-1.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.csv), [Excel](../StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-prostate-ca-befall-stanze",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-ca-befall-stanze",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Prostata_CA_Befall_Stanze",
  "title" : "MII PR Onkologie Ca-Befall Stanze",
  "status" : "active",
  "date" : "2026-08-28T06:49:57+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt den prozentualen Befall der am stärksten befallenen Stanze einer Prostata-Biopsie oder eines Prostata-Exzisionspräparates in der Onkologie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
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
      "short" : "Prozentualer Karzinombefall",
      "definition" : "Prozentualer Karzinombefall der am stärksten befallenen Stanze einer Prostata-Biopsie oder eines Prostata-Exzisionspräparates. ",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "44654-2",
        "display" : "Tissue involved by tumor in Prostate tumor"
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
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Prozentualer Karzinombefall",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Prozentualer Karzinombefall"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Prozentualer Karzinombefall der am stärksten befallenen Stanze einer Prostata-Biopsie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Prozentualer Karzinombefall der am stärksten befallenen Stanze einer Prostata-Biopsie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].value",
      "path" : "Observation.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "patternString" : "%"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "patternCode" : "%"
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "mustSupport" : true
    }]
  }
}

```
