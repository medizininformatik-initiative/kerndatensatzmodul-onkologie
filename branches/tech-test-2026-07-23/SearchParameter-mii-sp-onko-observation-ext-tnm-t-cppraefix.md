# mii-sp-onko-observation-ext-tnm-t-cppraefix - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-sp-onko-observation-ext-tnm-t-cppraefix**

## SearchParameter: mii-sp-onko-observation-ext-tnm-t-cppraefix (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-observation-ext-tnm-t-cppraefix | *Version*:2026.0.3 |
| Active as of 2024-04-15 | *Computable Name*:MII_SP_Observation_Extension_TNM_T_CpPraefix |

 
SearchParameter for Observation.extension[cppraefix] 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-onko-observation-ext-tnm-t-cppraefix",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-observation-ext-tnm-t-cppraefix",
  "version" : "2026.0.3",
  "name" : "MII_SP_Observation_Extension_TNM_T_CpPraefix",
  "status" : "active",
  "experimental" : true,
  "date" : "2024-04-15",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "SearchParameter for Observation.extension[cppraefix]",
  "code" : "tnm-t-cppraefix",
  "base" : ["Observation"],
  "type" : "token",
  "expression" : "Observation.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-t-cppraefic').value"
}

```
