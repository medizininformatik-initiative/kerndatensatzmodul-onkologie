# MII CM Onko Tod SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko Tod SNOMED Mapping**

## ConceptMap: MII CM Onko Tod SNOMED Mapping 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-tod-sct | *Version*:2026.0.3 |
| Active as of 2024-04-11 | *Computable Name*:MII CM Onko Tod SCT Mapping |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Tod Codes zu SNOMED-CT 

For this complex concept there is no simple representation in SNOMED CT. The answer options were therefore coded as qualifier values.

> The complete mapping table is generated from the ConceptMap below this introduction.



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
