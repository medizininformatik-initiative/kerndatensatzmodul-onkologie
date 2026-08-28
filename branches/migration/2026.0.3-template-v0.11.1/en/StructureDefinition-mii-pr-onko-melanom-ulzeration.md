# MII PR Onkologie Melanom Ulzeration - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Melanom Ulzeration**

## Resource Profile: MII PR Onkologie Melanom Ulzeration 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-ulzeration | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_PR_Onko_Melanom_Ulzeration |

 
Dieses Profil beschreibt die Ulzeration beim Malignen Melanom der Haut 

### Content

This profile describes ulceration in malignant melanoma of the skin according to oBDS MM4. Ulceration is an important histopathological criterion in melanoma and describes the presence of ulceration of the epidermis over the melanoma. The presence of ulceration is an independent prognostic factor and is required for TNM classification (in particular pT1b).

The profile is based on a FHIR Observation resource and uses LOINC for standardized coding of the ulceration. The assessment is made via a dedicated ValueSet with the oBDS-compliant options J (Yes), N (No) and U (Unknown).

-------

### Links to other resources

The ulceration assessment is an important histopathological observation in melanoma:

* refers via `Observation.focus` to the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor)
* refers via `Observation.subject` to the patient (Patient resource)
* can be linked via `Observation.encounter` to a specific treatment case

-------

### oBDS context

Ulceration corresponds to oBDS data field MM4 "Ulceration" and documents the presence of ulceration of the epidermis over the melanoma. This information is relevant to therapy and is an important feature of the tumor's biological behavior and prognosis.

### Terminology binding

The ValueSet for melanoma ulceration is bound as **required** and comprises the oBDS-compliant assessment options J (Yes), N (No) and U (Unknown). This corresponds to the strict terminology requirement for oBDS data fields.

#### ValueSet: MII VS Onko Melanom Ulzeration

> The codes it contains are listed in the artefact view: [MII VS Onkologie Melanom Ulzeration](ValueSet-mii-vs-onko-melanom-ulzeration.md).

> The codes it contains are listed in the artefact view: [MII VS Onkologie Melanom Ulzeration](ValueSet-mii-vs-onko-melanom-ulzeration.md).

-------

Mapping dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Melanom Ulzeration](StructureDefinition-mii-pr-onko-melanom-ulzeration.md).

**Examples**

[mii-exa-onko-melanom-ulzeration](Observation-mii-exa-onko-melanom-ulzeration.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-melanom-ulzeration](Observation-mii-exa-onko-melanom-ulzeration.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-melanom-ulzeration.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-melanom-ulzeration.csv), [Excel](../StructureDefinition-mii-pr-onko-melanom-ulzeration.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-melanom-ulzeration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-melanom-ulzeration",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-ulzeration",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Melanom_Ulzeration",
  "title" : "MII PR Onkologie Melanom Ulzeration",
  "status" : "active",
  "date" : "2026-08-28T08:03:44+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt die Ulzeration beim Malignen Melanom der Haut",
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
      "path" : "Observation",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "MM4",
        "comment" : "Ulzeration"
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
      "short" : "Ulzeration",
      "definition" : "Pathologisches Kriterium der Ulzeration beim Malignen Melanom der Haut",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "6270001000004106",
        "display" : "Presence of ulcer in primary malignant melanoma of skin (observable entity)"
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
      "definition" : "Datum der histopathologischen Untersuchung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der histopathologischen Untersuchung zur Bestimmung der Ulzeration"
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
        "map" : "MM4",
        "comment" : "Datum der histopathologischen Untersuchung"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Ulzeration",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ulzeration"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Vorliegen einer Ulzeration",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Pathologisches Kriterium der Ulzeration - wird bei pT1b benötigt - therapierelevant; Ulzeration ist ein Merkmal für das biologische Verhalten"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-melanom-ulzeration"
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "MM4",
        "comment" : "Ulzeration: J = Ja, N = Nein, U = Unbekannt"
      }]
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "short" : "Grund für fehlende Angabe",
      "definition" : "Grund warum die Ulzeration nicht bestimmbar war",
      "mustSupport" : true
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "mustSupport" : true
    },
    {
      "id" : "Observation.method.coding",
      "path" : "Observation.method.coding",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "117617002",
        "display" : "Immunohistochemistry procedure"
      },
      "mustSupport" : true
    }]
  }
}

```
