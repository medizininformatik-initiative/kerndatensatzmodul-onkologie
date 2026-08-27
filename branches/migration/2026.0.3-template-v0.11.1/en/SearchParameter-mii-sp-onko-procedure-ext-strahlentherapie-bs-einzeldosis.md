# mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis**

## SearchParameter: mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis | *Version*:2026.0.3 |
| Active as of 2024-04-15 | *Computable Name*:MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Einzeldosis |

 
SearchParameter for Procedure.extension:einzeldosis 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-strahlentherapie-bs-einzeldosis",
  "version" : "2026.0.3",
  "name" : "MII_SP_Procedure_Extension_Strahlentherapie_Bestrahlung_Einzeldosis",
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
  "description" : "SearchParameter for Procedure.extension:einzeldosis",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "bestrahlung-einzeldosis",
  "base" : ["Procedure"],
  "type" : "quantity",
  "expression" : "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis').value"
}

```
