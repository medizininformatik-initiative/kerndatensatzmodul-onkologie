# MII CM Onko Studienteilnahme SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko Studienteilnahme SNOMED Mapping**

## ConceptMap: MII CM Onko Studienteilnahme SNOMED Mapping 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-studienteilnahme-sct | *Version*:2026.0.3 |
| Active as of 2024-08-01 | *Computable Name*:MII CM Onko Studienteilnahme SCT Mapping |

 
Mapping Studienteilnahme Status Codes zu SNOMED-CT 

 
Technical mapping to transform oBDS-Data into SNOMED 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-studienteilnahme-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-studienteilnahme-sct",
  "version" : "2026.0.3",
  "name" : "MII CM Onko Studienteilnahme SCT Mapping",
  "title" : "MII CM Onko Studienteilnahme SNOMED Mapping",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-08-01",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping Studienteilnahme Status Codes zu SNOMED-CT",
  "purpose" : "Technical mapping to transform oBDS-Data into SNOMED",
  "sourceUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/",
  "targetUri" : "http://snomed.info/sct/900000000000207008/version/20240401",
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-studienteilnahme",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "J",
      "display" : "Ja",
      "target" : [{
        "code" : "373066001",
        "display" : "Yes (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N",
      "display" : "Nein",
      "target" : [{
        "code" : "373067005",
        "display" : "No (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "U",
      "display" : "Unbekannt",
      "target" : [{
        "code" : "261665006",
        "display" : "Unknown (qualifier value)",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
