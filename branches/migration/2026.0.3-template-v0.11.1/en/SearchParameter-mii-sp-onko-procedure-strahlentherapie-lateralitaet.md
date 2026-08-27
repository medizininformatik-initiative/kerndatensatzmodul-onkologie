# mii-sp-onko-procedure-strahlentherapie-lateralitaet - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-sp-onko-procedure-strahlentherapie-lateralitaet**

## SearchParameter: mii-sp-onko-procedure-strahlentherapie-lateralitaet (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-strahlentherapie-lateralitaet | *Version*:2026.0.3 |
| Active as of 2025-05-17 | *Computable Name*:MII_SP_Procedure_Strahlentherapie_Lateralitaet |

 
SearchParameter for Procedure.bodySite.extension:Seitenlokalisation 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-onko-procedure-strahlentherapie-lateralitaet",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-strahlentherapie-lateralitaet",
  "version" : "2026.0.3",
  "name" : "MII_SP_Procedure_Strahlentherapie_Lateralitaet",
  "status" : "active",
  "experimental" : true,
  "date" : "2025-05-17",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "SearchParameter for Procedure.bodySite.extension:Seitenlokalisation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "bestrahlung-zielgebiet-lateralitaet",
  "base" : ["Procedure"],
  "type" : "token",
  "expression" : "Procedure.bodySite.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation').value"
}

```
