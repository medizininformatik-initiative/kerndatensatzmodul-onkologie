# MII CM Onko Intention SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko Intention SNOMED Mapping**

## ConceptMap: MII CM Onko Intention SNOMED Mapping 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-intention-sct | *Version*:2026.0.3 |
| Active as of 2024-04-10 | *Computable Name*:MII CM Onko Intention SNOMED Mapping |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Intention Codes zu SNOMED-CT 

Intent is recorded for all procedures. Because the range of answers is almost identical for the various procedures, they are presented and mapped together here.

> The complete mapping table is generated from the ConceptMap below this introduction.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-intention-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-intention-sct",
  "version" : "2026.0.3",
  "name" : "MII CM Onko Intention SNOMED Mapping",
  "title" : "MII CM Onko Intention SNOMED Mapping",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-04-10",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping Intention Codes zu SNOMED-CT",
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
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "K",
      "display" : "kurativ",
      "target" : [{
        "code" : "373808002",
        "display" : "Curative - procedure intent (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "P",
      "display" : "palliativ",
      "target" : [{
        "code" : "363676003",
        "display" : "Palliative - procedure intent (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "D",
      "display" : "diagnostisch",
      "target" : [{
        "code" : "261004008",
        "display" : "Diagnostic intent (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "R",
      "display" : "Revision/Komplikation",
      "target" : [{
        "code" : "255231005",
        "display" : "Revision - value (qualifier value)",
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
    },
    {
      "code" : "X",
      "display" : "fehlende Angabe",
      "target" : [{
        "code" : "1287211007",
        "display" : "No information available (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "O",
      "display" : "lokal kurativ bei Oligometastasierung",
      "target" : [{
        "code" : "373808002",
        "display" : "Curative - procedure intent (qualifier value)",
        "equivalence" : "wider",
        "comment" : "ggfs. Postkoordination mit 1255358009 | Oligometastatic malignant neoplasm (disorder) |"
      }]
    }]
  }]
}

```
