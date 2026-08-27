# MII CM Onko Verlauf Primaertumor SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko Verlauf Primaertumor SNOMED Mapping**

## ConceptMap: MII CM Onko Verlauf Primaertumor SNOMED Mapping 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-verlauf-primaertumor-sct | *Version*:2026.0.3 |
| Active as of 2024-04-10 | *Computable Name*:MII CM Onko Verlauf Primaertumor SCT Mapping |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Verlauf-Primaertumor Codes zu SNOMED-CT 

The state of the primary tumour in the course of disease is described via this CodeSystem. Overall it can be represented well by SNOMED CT.

> The complete mapping table is generated from the ConceptMap below this introduction.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-verlauf-primaertumor-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-verlauf-primaertumor-sct",
  "version" : "2026.0.3",
  "name" : "MII CM Onko Verlauf Primaertumor SCT Mapping",
  "title" : "MII CM Onko Verlauf Primaertumor SNOMED Mapping",
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
  "description" : "Mapping Verlauf-Primaertumor Codes zu SNOMED-CT",
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
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "K",
      "display" : "kein Tumor nachweisbar",
      "target" : [{
        "code" : "58899004",
        "display" : "No evidence of neoplasm (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T",
      "display" : "Tumorreste (Residualtumor)",
      "target" : [{
        "code" : "65320000",
        "display" : "Residual (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "P",
      "display" : "Tumorreste (Residualtumor) Progress",
      "target" : [{
        "code" : "255314001",
        "display" : "Progressive (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N",
      "display" : "Tumorreste (Residualtumor) No Change",
      "target" : [{
        "code" : "260388006",
        "display" : "No status change (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "R",
      "display" : "Lokalrezidiv",
      "target" : [{
        "code" : "1259237005",
        "display" : "Recurrent malignant neoplasm (disorder)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "F",
      "display" : "fraglicher Befund",
      "target" : [{
        "code" : "64957009",
        "display" : "Uncertain (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "U",
      "display" : "unbekannt",
      "target" : [{
        "code" : "261665006",
        "display" : "Unknown (qualifier value)",
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
    }]
  }]
}

```
