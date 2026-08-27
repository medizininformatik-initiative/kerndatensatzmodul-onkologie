# MII CM Onko Residualstatus UICC SNOMED - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko Residualstatus UICC SNOMED**

## ConceptMap: MII CM Onko Residualstatus UICC SNOMED 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-residualstatus-uicc-sct | *Version*:2026.0.3 |
| Active as of 2024-01-05 | *Computable Name*:MII CM Onko Residualstatus UICC SCT Mapping |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Residualstatus UICC Codes zu SNOMED-CT 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-residualstatus-uicc-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-residualstatus-uicc-sct",
  "version" : "2026.0.3",
  "name" : "MII CM Onko Residualstatus UICC SCT Mapping",
  "title" : "MII CM Onko Residualstatus UICC SNOMED",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-01-05",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping Residualstatus UICC Codes zu SNOMED-CT",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license.",
  "group" : [{
    "source" : "https://www.uicc.org/resources/r-classification",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "R0",
      "display" : "Kein Residualtumor",
      "target" : [{
        "code" : "1352526005",
        "display" : "Union for International Cancer Control R0 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "R1",
      "display" : "Mikroskopischer Residualtumor",
      "target" : [{
        "code" : "1352529003",
        "display" : "Union for International Cancer Control R1 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "R1(is)",
      "display" : "In-Situ-Rest",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "R1(cy+)",
      "display" : "Cytologischer Rest",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "R2",
      "display" : "Makroskopischer Residualtumor",
      "target" : [{
        "code" : "1352528006",
        "display" : "Union for International Cancer Control R2 (qualifier value)\tR2 (UICC)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "RX",
      "display" : "Vorhandensein von Residualtumor kann nicht beurteilt werden",
      "target" : [{
        "code" : "1352527001",
        "display" : "Union for International Cancer Control RX (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "U",
      "display" : "Residualtumorstatus ist nicht bekannt",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  }]
}

```
