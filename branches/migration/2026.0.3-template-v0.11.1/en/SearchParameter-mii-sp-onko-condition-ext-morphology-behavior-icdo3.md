# mii-sp-onko-condition-ext-morphology-behavior-icdo3 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-sp-onko-condition-ext-morphology-behavior-icdo3**

## SearchParameter: mii-sp-onko-condition-ext-morphology-behavior-icdo3 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-condition-ext-morphology-behavior-icdo3 | *Version*:2026.0.3 |
| Active as of 2026-08-25 | *Computable Name*:MII_SP_Condition_Extension_Morphology_Behavior_ICD-O-3 |

 
SearchParameter for Condition.extension[morphology-behavior-icdo3] 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-onko-condition-ext-morphology-behavior-icdo3",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-pr-meta-searchparameter"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-condition-ext-morphology-behavior-icdo3",
  "version" : "2026.0.3",
  "name" : "MII_SP_Condition_Extension_Morphology_Behavior_ICD-O-3",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-25",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "SearchParameter for Condition.extension[morphology-behavior-icdo3]",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "morphology-behavior-icdo3",
  "base" : ["Condition"],
  "type" : "token",
  "expression" : "Condition.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3').value"
}

```
