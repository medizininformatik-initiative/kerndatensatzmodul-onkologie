# mii-sp-onko-procedure-strahlentherapie-strahlenart - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-sp-onko-procedure-strahlentherapie-strahlenart**

## SearchParameter: mii-sp-onko-procedure-strahlentherapie-strahlenart (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-strahlentherapie-strahlenart | *Version*:2026.0.3 |
| Active Stand: 2024-04-15 | *Maschinenlesbarer Name*:MII_SP_Procedure_Strahlentherapie_Strahlenart |

 
SearchParameter for Procedure.usedCode:Strahlenart 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-onko-procedure-strahlentherapie-strahlenart",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-strahlentherapie-strahlenart",
  "version" : "2026.0.3",
  "name" : "MII_SP_Procedure_Strahlentherapie_Strahlenart",
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
  "description" : "SearchParameter for Procedure.usedCode:Strahlenart",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "bestrahlung-strahlenart",
  "base" : ["Procedure"],
  "type" : "token",
  "expression" : "Procedure.usedCode.coding.where(system='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart')"
}

```
