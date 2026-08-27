# MII PR Onkologie Abstand Anokutan - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Abstand Anokutan**

## Resource Profile: MII PR Onkologie Abstand Anokutan 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-anokutan | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_PR_Onko_KRK_Abstand_Anokutan |

 
Dieses Profil beschreibt den Abstand des Tumorunterrandes zur Anokutanlinie im Kolorektalen Karzinom 

### Content

This profile describes the distance from the lower tumour margin to the anal verge in colorectal cancer according to oBDS KR1. This measurement is of particular importance for therapy planning in rectal cancer, since it influences the surgical strategy and the sphincter-preserving operative approach.

The profile is based on a FHIR Observation resource and uses LOINC for the standardised coding of the distance measurement. The distance is given as a Quantity value in centimetres.

-------

### Links to other resources

The distance measurement to the anal verge is an important diagnostic observation:

* refers via `Observation.focus` to the primary diagnosis ([MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md))
* refers via `Observation.subject` to the patient (Patient resource)
* can be linked via `Observation.encounter` to a specific episode of care

-------

### oBDS context

The distance measurement corresponds to the oBDS data field KR1 "Abstand des Tumorunterrandes zur Anokutanlinie" and is documented in centimetres. This measurement is specific to rectal cancer and serves preoperative planning.

### Terminology binding

The profile uses LOINC code 33748-5 "Distance from anal verge" for the standardised coding of the distance measurement. The value is given as a UCUM-conformant Quantity in centimetres.

-------

Mapping dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Abstand Anokutan](StructureDefinition-mii-pr-onko-krk-abstand-anokutan.md).

-------

**Search parameters**

The following search parameters are relevant for the KRK-Abstand-Anokutanlinie profile, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Observation?_id=12345`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-anokutan`Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Observation?code=http://loinc.org|33748-5`Usage notes: Further information on searching by "Observation.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Observation?subject=Patient/test`Usage notes: Further information on searching by "Observation.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "focus" MUST be supported:Examples:`GET [base]/Observation?focus=Condition/primaertumor`Usage notes: Further information on searching by "Observation.focus" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "value-quantity" MUST be supported:Examples:`GET [base]/Observation?value-quantity=5|http://unitsofmeasure.org|cm`Usage notes: Further information on searching by "Observation.value[x]" can be found in the [FHIR base specification - section "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

-------

**Examples**

[mii-exa-onko-krk-abstand-tumor-anokutanlinie](Observation-mii-exa-onko-krk-abstand-tumor-anokutanlinie.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-krk-abstand-tumor-anokutanlinie](Observation-mii-exa-onko-krk-abstand-tumor-anokutanlinie.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-krk-abstand-anokutan.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-krk-abstand-anokutan.csv), [Excel](../StructureDefinition-mii-pr-onko-krk-abstand-anokutan.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-krk-abstand-anokutan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-krk-abstand-anokutan",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-anokutan",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_KRK_Abstand_Anokutan",
  "title" : "MII PR Onkologie Abstand Anokutan",
  "status" : "active",
  "date" : "2026-08-27T11:29:36+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt den Abstand des Tumorunterrandes zur Anokutanlinie im Kolorektalen Karzinom",
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
      "short" : "Rektum: Abstand des Tumorunterrandes zur Anokutanlinie",
      "definition" : "Höhe des Sitzes des Rektumkarzinoms ab Anokutanlinie in cm. Basierend auf dem oBDS-Modul Kolorektales Karzinom.",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "33748-5",
        "display" : "Distance from anal verge"
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
      "short" : "Datum der Untersuchung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Untersuchung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum der Untersuchung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Untersuchung"
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
      "short" : "Abstand des Tumorunterrandes zur Anokutanlinie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Abstand des Tumorunterrandes zur Anokutanlinie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Abstand des Tumorunterrandes zur Anokutanlinie in cm nach oBDS 2021 KR1",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Abstand des Tumorunterrandes zur Anokutanlinie in cm nach oBDS 2021 KR1"
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
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "min" : 1,
      "patternString" : "cm",
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
      "patternCode" : "cm",
      "mustSupport" : true
    }]
  }
}

```
