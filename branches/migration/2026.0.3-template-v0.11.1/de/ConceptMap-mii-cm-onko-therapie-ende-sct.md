# MII CM Onko Therapie Ende SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CM Onko Therapie Ende SNOMED Mapping**

## ConceptMap: MII CM Onko Therapie Ende SNOMED Mapping 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapie-ende-sct | *Version*:2026.0.3 |
| Active Stand: 2024-04-11 | *Maschinenlesbarer Name*:MII CM Onko Therapie Ende SNOMED Mapping |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Therapie Ende Codes zu SNOMED-CT 

Das Feld Therapie Ende Grund wird sowohl von Strahlentherapie als auch von Systemischer Therapie angegeben.

Problematisch beim Mappen war hier vor allem das Zusammenspiel aus Outcome und Grund/Modifikator, so dass fast immer zwei Konzepte in einer Antwortmöglichkeit gemeinsam auftreten.

> Die vollständige Mapping-Tabelle wird unterhalb dieser Einleitung aus der ConceptMap generiert.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-therapie-ende-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapie-ende-sct",
  "version" : "2026.0.3",
  "name" : "MII CM Onko Therapie Ende SNOMED Mapping",
  "title" : "MII CM Onko Therapie Ende SNOMED Mapping",
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
  "description" : "Mapping Therapie Ende Codes zu SNOMED-CT",
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
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "E",
      "display" : "reguläres Ende",
      "target" : [{
        "code" : "385656004",
        "display" : "Ended (qualifier value)",
        "equivalence" : "equivalent",
        "comment" : "keine Postkoordination zu andernen End-Konzepten möglich"
      }]
    },
    {
      "code" : "R",
      "display" : "reguläres Ende mit Dosisreduktion",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "ggfs. Postkoordination von Dosisreduktion, aber keine Postkoordination mit 'qualifier value' möglich."
      }]
    },
    {
      "code" : "W",
      "display" : "reguläres Ende mit Substanzwechsel",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "ggfs. Postkoordination von Substanzwechsel, aber keine Postkoordination mit 'qualifier value' möglich."
      }]
    },
    {
      "code" : "A",
      "display" : "Abbruch wegen Nebenwirkungen",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "ggfs. Postkoordination von Nebnwirkungen, aber keine Postkoordination mit 'qualifier value' möglich."
      }]
    },
    {
      "code" : "P",
      "display" : "Abbruch wegen Progress",
      "target" : [{
        "code" : "419835002",
        "display" : "Tumor progression (finding)",
        "equivalence" : "wider",
        "comment" : "ggfs. Postkoordination von Abbruch"
      }]
    },
    {
      "code" : "S",
      "display" : "Abbruch aus sonstigen Gründen",
      "target" : [{
        "code" : "74964007",
        "display" : "Other (qualifier value)",
        "equivalence" : "wider",
        "comment" : "ggfs. Postkoordination"
      }]
    },
    {
      "code" : "V",
      "display" : "Patient verweigert weitere Therapie",
      "target" : [{
        "code" : "183948000",
        "display" : " Procedure declined by parent (situation)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T",
      "display" : "Patient verstorben",
      "target" : [{
        "code" : "419099009",
        "display" : "Dead (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "F",
      "display" : "Zieldosis erreicht mit Unterbrechung > 3 Kalendertage",
      "target" : [{
        "equivalence" : "unmatched"
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
    }]
  }]
}

```
