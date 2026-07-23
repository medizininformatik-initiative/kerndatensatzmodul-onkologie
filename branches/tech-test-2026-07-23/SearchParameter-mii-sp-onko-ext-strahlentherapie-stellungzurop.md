# mii-sp-onko-ext-strahlentherapie-stellungzurop - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-sp-onko-ext-strahlentherapie-stellungzurop**

## SearchParameter: mii-sp-onko-ext-strahlentherapie-stellungzurop (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-ext-strahlentherapie-stellungzurop | *Version*:2026.0.3 |
| Active as of 2024-04-15 | *Computable Name*:MII_SP_Procedure_Extension_Strahlentherapie_StellungZurOp |

 
SearchParameter for Procedure.extension[StellungZurOp] 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-onko-ext-strahlentherapie-stellungzurop",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-ext-strahlentherapie-stellungzurop",
  "version" : "2026.0.3",
  "name" : "MII_SP_Procedure_Extension_Strahlentherapie_StellungZurOp",
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
  "description" : "SearchParameter for Procedure.extension[StellungZurOp]",
  "code" : "strahlentherapie-stellungzurop",
  "base" : ["Procedure"],
  "type" : "token",
  "expression" : "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-stellungzurop').value"
}

```
