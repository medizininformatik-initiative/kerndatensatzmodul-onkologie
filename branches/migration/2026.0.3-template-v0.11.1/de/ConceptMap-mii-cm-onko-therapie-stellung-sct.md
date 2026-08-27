# MII CM Onko Therapie Stellung SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CM Onko Therapie Stellung SNOMED Mapping**

## ConceptMap: MII CM Onko Therapie Stellung SNOMED Mapping 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapie-stellung-sct | *Version*:2026.0.3 |
| Active Stand: 2024-04-11 | *Maschinenlesbarer Name*:MII CM Onko Therapie Stellung SNOMED Mapping |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Therapie Stellung Codes zu SNOMED-CT 

Die Stellung zu einer operativen Therapie wird sowohl bei Strahlentherapie als auch bei der Systemischen Therapie angegeben.

> Die vollständige Mapping-Tabelle wird unterhalb dieser Einleitung aus der ConceptMap generiert.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-therapie-stellung-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapie-stellung-sct",
  "version" : "2026.0.3",
  "name" : "MII CM Onko Therapie Stellung SNOMED Mapping",
  "title" : "MII CM Onko Therapie Stellung SNOMED Mapping",
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
  "description" : "Mapping Therapie Stellung Codes zu SNOMED-CT",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Technical mapping to transform oBDS-Data into SNOMED",
  "copyright" : "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license.",
  "sourceUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/",
  "targetUri" : "http://snomed.info/sct/900000000000207008/version/20240401",
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "O",
      "display" : "ohne Bezug zur operativen Therapie",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "A",
      "display" : "adjuvant",
      "target" : [{
        "code" : "373846009",
        "display" : "Adjuvant - intent (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N",
      "display" : "neoadjuvant",
      "target" : [{
        "code" : "373847000",
        "display" : "Neo-adjuvant - intent (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "I",
      "display" : "intraoperativ",
      "target" : [{
        "code" : "277671009",
        "display" : "Intraoperative (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Z",
      "display" : "additiv",
      "target" : [{
        "code" : "260364009",
        "display" : "Additive (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "S",
      "display" : "Sonstiges",
      "target" : [{
        "code" : "74964007",
        "display" : "Other (qualifier value)",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
