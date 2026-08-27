# MII CM Onko Therapieplanung SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko Therapieplanung SNOMED Mapping**

## ConceptMap: MII CM Onko Therapieplanung SNOMED Mapping 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapieplanung-sct | *Version*:2026.0.3 |
| Active as of 2024-04-11 | *Computable Name*:MII CM Onko Therapieplanung SCT Mapping |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Therapieplanung Codes zu SNOMED-CT 

The type of therapy planning indicates at which point in the treatment the tumour board/therapy planning takes place.

> The complete mapping table is generated from the ConceptMap below this introduction.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-therapieplanung-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapieplanung-sct",
  "version" : "2026.0.3",
  "name" : "MII CM Onko Therapieplanung SCT Mapping",
  "title" : "MII CM Onko Therapieplanung SNOMED Mapping",
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
  "description" : "Mapping Therapieplanung Codes zu SNOMED-CT",
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
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "praeth",
      "display" : "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)",
      "target" : [{
        "code" : "307153007",
        "display" : "Before procedure (qualifier value)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "postop",
      "display" : "postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)",
      "target" : [{
        "code" : "262061000",
        "display" : "Postoperative period (qualifier value)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "postth",
      "display" : "posttherapeutische Tumorkonferenz (manche Tumore werden nicht operiert)",
      "target" : [{
        "code" : "303110006",
        "display" : "Postprocedural period (qualifier value)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "ther",
      "display" : "Therapieplanung ohne Tumorkonferenz",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  }]
}

```
