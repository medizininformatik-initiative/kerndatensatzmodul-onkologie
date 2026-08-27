# mii-sp-onko-observation-tnm-y-praefix - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-sp-onko-observation-tnm-y-praefix**

## SearchParameter: mii-sp-onko-observation-tnm-y-praefix 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-observation-tnm-y-praefix | *Version*:2026.0.3 |
| Active Stand: 2026-08-25 | *Maschinenlesbarer Name*:MII_SP_Observation_TNM_y_Praefix |

 
SearchParameter for Observation.modifierExtension[y-praefix]. Kennzeichnet TNM-Kategorien, die während oder nach initialer multimodaler Therapie festgestellt wurden (UICC y-Präfix). Die Unterscheidung zwischen T-, N- und M-Kategorie erfolgt über den Kategorie-Code der Observation. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-onko-observation-tnm-y-praefix",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-observation-tnm-y-praefix",
  "version" : "2026.0.3",
  "name" : "MII_SP_Observation_TNM_y_Praefix",
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
  "description" : "SearchParameter for Observation.modifierExtension[y-praefix]. Kennzeichnet TNM-Kategorien, die während oder nach initialer multimodaler Therapie festgestellt wurden (UICC y-Präfix). Die Unterscheidung zwischen T-, N- und M-Kategorie erfolgt über den Kategorie-Code der Observation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "tnm-y-praefix",
  "base" : ["Observation"],
  "type" : "token",
  "expression" : "Observation.modifierExtension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-y-praefix').value"
}

```
