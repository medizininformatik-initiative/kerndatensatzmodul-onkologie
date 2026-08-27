# MII PR Onkologie Allgemeiner Leistungszustand ECOG - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Allgemeiner Leistungszustand ECOG**

## Resource Profile: MII PR Onkologie Allgemeiner Leistungszustand ECOG 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG |

 
OBDS Beschreibung des allgemeines Leistungszustandes nach ECOG 

### Context

This profile describes the general performance status of a patient in oncology according to ECOG.

Recording the general performance status is mandated by the oBDS. The actual report is coded and transmitted as ECOG, whereby the answer options allow a mapping from the Karnofsky score.

In the oBDS so far, and in the present FHIR profiles, documentation both of the ECOG with the answer options 0-4 and of the Karnofsky score with 10%, 20% etc. is permitted. The current implementation guide, however, contains a note that in future only the ECOG is to be reported. https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532323/Allgemeiner+Leistungszustand+Typ

For the case that the findings only refer to the general condition without coding it in ECOG or Karnofsky, the documentation guide of the Plattform §65c recommends developing in-house guidelines for better reproducibility. https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/86310992/Allgemeiner+Leistungszustand

### ECOG-Karnofsky mapping: oBDS vs. clinical literature

**Important note**: different ECOG-Karnofsky conversion tables exist in the literature:

**oBDS 12.1 specification** (used in this profile):

* ECOG 0 = Karnofsky 90-100%
* ECOG 1 = Karnofsky 70-80%
* ECOG 2 = Karnofsky 50-60%
* ECOG 3 = Karnofsky 30-40%
* ECOG 4 = Karnofsky 10-20%

**Clinical literature** (Buccheri et al., 1996; Ma et al., 2010):

* ECOG 0 = Karnofsky 100%
* ECOG 1 = Karnofsky 80-90%
* ECOG 2 = Karnofsky 70%
* ECOG 3 = Karnofsky 50-60%
* ECOG 4 = Karnofsky 10-40%

Compared with the clinical literature, the oBDS mappings are shifted downwards by approximately 10-20%. Since these profiles implement the oBDS, all reference ranges and ObservationDefinitions use the oBDS specification.

Implementers should be aware of these differences, in particular when converting between ECOG and Karnofsky or when exchanging data with international systems that may use other conversion tables.

### LOINC support for international interoperability

The profile supports optional LOINC coding in addition to the mandatory oBDS coding:

* **`code.coding`**: besides the mandatory SNOMED CT code (423740007), the LOINC code 89262-0 may optionally be given
* **`valueCodeableConcept.coding`**: besides the mandatory oBDS coding, LOINC answer list codes may optionally be given

The following ConceptMap is available for translating between oBDS and LOINC codes:

* [mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc](ConceptMap-mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc.md)

-------

**Examples**

[mii-exa-onko-allgemeiner-leistungszustand-ecog](Observation-mii-exa-onko-allgemeiner-leistungszustand-ecog.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-allgemeiner-leistungszustand-ecog](Observation-mii-exa-onko-allgemeiner-leistungszustand-ecog.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog.csv), [Excel](../StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-allgemeiner-leistungszustand-ecog",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG",
  "title" : "MII PR Onkologie Allgemeiner Leistungszustand ECOG",
  "status" : "active",
  "date" : "2026-08-27T15:57:15+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "OBDS Beschreibung des allgemeines Leistungszustandes nach ECOG",
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
        "map" : "12",
        "comment" : "Allgemeiner Leistungszustand"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
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
      "id" : "Observation.code.coding:snomed",
      "path" : "Observation.code.coding",
      "sliceName" : "snomed",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "423740007"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding:snomed.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding:snomed.code",
      "path" : "Observation.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding:loinc",
      "path" : "Observation.code.coding",
      "sliceName" : "loinc",
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "89262-0"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding:loinc.system",
      "path" : "Observation.code.coding.system",
      "min" : 1
    },
    {
      "id" : "Observation.code.coding:loinc.code",
      "path" : "Observation.code.coding.code",
      "min" : 1
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
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding",
      "path" : "Observation.value[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Leistungszustand nach ECOG",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Leistungszustand nach ECOG"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Leistungszustand nach ECOG Stufen 0-4 gemäß 12.1 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Leistungszustand nach ECOG Stufen 0-4 gemäß 12.1 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding.code",
      "path" : "Observation.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "12.1",
        "comment" : "Allgemeiner Leistungszustand"
      }]
    },
    {
      "id" : "Observation.value[x].coding:obds",
      "path" : "Observation.value[x].coding",
      "sliceName" : "obds",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-ecog"
      }
    },
    {
      "id" : "Observation.value[x].coding:obds.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding:obds.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding:loinc",
      "path" : "Observation.value[x].coding",
      "sliceName" : "loinc",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-ecog-loinc"
      }
    },
    {
      "id" : "Observation.value[x].coding:loinc.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.value[x].coding:loinc.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1
    }]
  }
}

```
