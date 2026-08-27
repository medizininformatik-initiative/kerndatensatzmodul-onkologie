# MII CM Onko Seitenlokalisation SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CM Onko Seitenlokalisation SNOMED Mapping**

## ConceptMap: MII CM Onko Seitenlokalisation SNOMED Mapping 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-seitenlokalisation-sct | *Version*:2026.0.3 |
| Active Stand: 2024-04-10 | *Maschinenlesbarer Name*:MII CM Onko Seitenlokalisation SNOMED Mapping |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Seitenlokalisation Codes zu SNOMED-CT 

Die Seitenlokalisation wird sowohl in der Kodierung des Primärtumors als auch in der Strahlentherapie eingesetzt.

> Die vollständige Mapping-Tabelle wird unterhalb dieser Einleitung aus der ConceptMap generiert.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-seitenlokalisation-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-seitenlokalisation-sct",
  "version" : "2026.0.3",
  "name" : "MII CM Onko Seitenlokalisation SNOMED Mapping",
  "title" : "MII CM Onko Seitenlokalisation SNOMED Mapping",
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
  "description" : "Mapping Seitenlokalisation Codes zu SNOMED-CT",
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
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "L",
      "display" : "links",
      "target" : [{
        "code" : "7771000",
        "display" : "Left (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "R",
      "display" : "rechts",
      "target" : [{
        "code" : "24028007",
        "display" : "Right (qualifier value) ",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "B",
      "display" : "beidseitig",
      "target" : [{
        "code" : "51440002",
        "display" : "Right and left (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "M",
      "display" : "Mittellinie/mittig",
      "target" : [{
        "code" : "260528009",
        "display" : "Median (qualifier value)",
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
      "code" : "T",
      "display" : "trifft nicht zu",
      "target" : [{
        "code" : "385432009",
        "display" : "Not applicable (qualifier value)",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
