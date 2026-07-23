# MII CM Onko Tod SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko Tod SNOMED Mapping**

## ConceptMap: MII CM Onko Tod SNOMED Mapping 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-tod-sct | *Version*:2026.0.3 |
| Active as of 2024-04-11 | *Computable Name*:MII CM Onko Tod SCT Mapping |

 
Mapping Tod Codes zu SNOMED-CT 

 
Technical mapping to transform oBDS-Data into SNOMED 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-tod-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-tod-sct",
  "version" : "2026.0.3",
  "name" : "MII CM Onko Tod SCT Mapping",
  "title" : "MII CM Onko Tod SNOMED Mapping",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-04-11",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping Tod Codes zu SNOMED-CT",
  "purpose" : "Technical mapping to transform oBDS-Data into SNOMED",
  "sourceUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/",
  "targetUri" : "http://snomed.info/sct/900000000000207008/version/20240401",
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tod",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "J",
      "display" : "Ja, die Person ist an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben.",
      "target" : [{
        "code" : "373066001",
        "display" : "Yes (qualifier value)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "N",
      "display" : "Nein, die Person ist nicht an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben.",
      "target" : [{
        "code" : "373067005",
        "display" : "No (qualifier value)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "U",
      "display" : "unbekannt",
      "target" : [{
        "code" : "261665006",
        "display" : "Unknown (qualifier value)",
        "equivalence" : "wider"
      }]
    }]
  }]
}

```
