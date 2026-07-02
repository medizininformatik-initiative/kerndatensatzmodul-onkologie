# mii-sp-onko-observation-ext-tnm-n-cppraefix - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## SearchParameter: mii-sp-onko-observation-ext-tnm-n-cppraefix (Experimental) 

 
SearchParameter for Observation.extension[cppraefix] 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-onko-observation-ext-tnm-n-cppraefix",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-observation-ext-tnm-n-cppraefix",
  "version" : "2026.0.3",
  "name" : "MII_SP_Observation_Extension_TNM_N_CpPraefix",
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
  "code" : "tnm-n-cppraefix",
  "base" : ["Observation"],
  "type" : "token",
  "expression" : "Observation.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-t-cppraefic').value"
}

```
