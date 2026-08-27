# MII CM Onko Verlauf Fernmetastasen SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CM Onko Verlauf Fernmetastasen SNOMED Mapping**

## ConceptMap: MII CM Onko Verlauf Fernmetastasen SNOMED Mapping 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-verlauf-fernmetastasen-sct | *Version*:2026.0.3 |
| Active Stand: 2024-04-10 | *Maschinenlesbarer Name*:MII CM Onko Verlauf Fernmetastasen SCT Mapping |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Verlauf Fernmetastasen Codes zu SNOMED-CT 

Fernmetastasen im Verlauf. Zu beachten ist, dass bei Auftreten von neuen Fernmetastasen die Lokalisation mittels Lokalisation Fernmetastasen zu kodieren ist ([ConceptMap Lokalisation Fernmetastasen](ConceptMap-mii-cm-onko-fernmetastasen-sct.md)).

> Die vollständige Mapping-Tabelle wird unterhalb dieser Einleitung aus der ConceptMap generiert.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-verlauf-fernmetastasen-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-verlauf-fernmetastasen-sct",
  "version" : "2026.0.3",
  "name" : "MII CM Onko Verlauf Fernmetastasen SCT Mapping",
  "title" : "MII CM Onko Verlauf Fernmetastasen SNOMED Mapping",
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
  "description" : "Mapping Verlauf Fernmetastasen Codes zu SNOMED-CT",
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
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "K",
      "display" : "kein Fernmetastasen nachweisbar",
      "target" : [{
        "code" : "261985008",
        "display" : "No metastases (tumor staging)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "R",
      "display" : "neu aufgetretene Fernmetastase(n) bzw. Metastasenrezidiv",
      "target" : [{
        "code" : "7147002",
        "display" : "New (qualifier value)",
        "equivalence" : "narrower",
        "comment" : "Kodierung für neu aufgetretene Fernmetastasen"
      }]
    },
    {
      "target" : [{
        "code" : "263855007",
        "display" : "Relapse phase (qualifier value)",
        "equivalence" : "narrower",
        "comment" : "Kodierung für Metastasenrezidiv"
      }]
    },
    {
      "code" : "T",
      "display" : "Fernmetastasen Residuen",
      "target" : [{
        "code" : "65320000",
        "display" : "Residual (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "P",
      "display" : "Fernmetastasen Progress",
      "target" : [{
        "code" : "255314001",
        "display" : "Progressive (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N",
      "display" : "Fernmetastasen No Change",
      "target" : [{
        "code" : "260388006",
        "display" : "No status change (qualifier value)",
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
