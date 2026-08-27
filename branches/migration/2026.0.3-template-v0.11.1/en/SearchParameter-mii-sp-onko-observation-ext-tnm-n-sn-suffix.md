# mii-sp-onko-observation-ext-tnm-n-sn-suffix - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-sp-onko-observation-ext-tnm-n-sn-suffix**

## SearchParameter: mii-sp-onko-observation-ext-tnm-n-sn-suffix (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-observation-ext-tnm-n-sn-suffix | *Version*:2026.0.3 |
| Active as of 2024-04-15 | *Computable Name*:MII_SP_Observation_Extension_TNM_N__SN_Suffix |

 
SearchParameter for Observation.extension[sn-suffix] 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-onko-observation-ext-tnm-n-sn-suffix",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-observation-ext-tnm-n-sn-suffix",
  "version" : "2026.0.3",
  "name" : "MII_SP_Observation_Extension_TNM_N__SN_Suffix",
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
  "description" : "SearchParameter for Observation.extension[sn-suffix]",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "tnm-n-sn-suffix",
  "base" : ["Observation"],
  "type" : "token",
  "expression" : "Observation.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-n-sn-suffix').value"
}

```
