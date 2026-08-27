# MII CM Onko Strahlentherapie Strahleneinheit SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CM Onko Strahlentherapie Strahleneinheit SNOMED Mapping**

## ConceptMap: MII CM Onko Strahlentherapie Strahleneinheit SNOMED Mapping 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-strahleneinheit-sct | *Version*:2026.0.3 |
| Active Stand: 2024-04-11 | *Maschinenlesbarer Name*:MII CM Onko Strahlentherapie Strahleneinheit SCT Mapping |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Strahlentherapie Strahleneinheit Codes zu SNOMED-CT 

Jede Bestrahlungsdosis erfordert zwingend die Angabe der Bestrahlungseinheit.

> Die vollständige Mapping-Tabelle wird unterhalb dieser Einleitung aus der ConceptMap generiert.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-strahlentherapie-strahleneinheit-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-strahleneinheit-sct",
  "version" : "2026.0.3",
  "name" : "MII CM Onko Strahlentherapie Strahleneinheit SCT Mapping",
  "title" : "MII CM Onko Strahlentherapie Strahleneinheit SNOMED Mapping",
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
  "description" : "Mapping Strahlentherapie Strahleneinheit Codes zu SNOMED-CT",
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
    "source" : "http://unitsofmeasure.org",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "Gy",
      "display" : "Gy",
      "target" : [{
        "code" : "229029004",
        "display" : "Gray (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "GBq",
      "display" : "GBq",
      "target" : [{
        "code" : "418931004",
        "display" : "Gigabecquerel (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "MBq",
      "display" : "MBq",
      "target" : [{
        "code" : "229034000",
        "display" : "Megabecquerel (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "kBq",
      "display" : "kBq",
      "target" : [{
        "code" : "282143001",
        "display" : "Kilobecquerel (qualifier value)",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
