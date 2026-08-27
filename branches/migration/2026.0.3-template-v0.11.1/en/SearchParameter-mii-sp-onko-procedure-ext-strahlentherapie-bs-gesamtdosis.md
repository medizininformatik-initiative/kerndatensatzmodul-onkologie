# mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis**

## SearchParameter: mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis | *Version*:2026.0.3 |
| Active as of 2024-04-15 | *Computable Name*:MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Gesamtdosis |

 
SearchParameter for Procedure.extension:gesamtdosis 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-bs-gesamtdosis",
  "version" : "2026.0.3",
  "name" : "MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Gesamtdosis",
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
  "description" : "SearchParameter for Procedure.extension:gesamtdosis",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "bestrahlung-gesamtdosis",
  "base" : ["Procedure"],
  "type" : "quantity",
  "expression" : "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis').value"
}

```
