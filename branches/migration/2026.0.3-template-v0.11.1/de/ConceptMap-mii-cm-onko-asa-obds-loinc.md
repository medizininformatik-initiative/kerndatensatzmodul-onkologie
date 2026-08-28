# MII CM Onkologie ASA oBDS zu LOINC - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CM Onkologie ASA oBDS zu LOINC**

## ConceptMap: MII CM Onkologie ASA oBDS zu LOINC 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-asa-obds-loinc | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_CM_Onko_ASA_oBDS_LOINC |

 
Mapping von oBDS ASA-Klassifikation (ursprünglich KR9, generalisiert für alle onkologischen Indikationen) zu LOINC ASA Physical Status 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-asa-obds-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-asa-obds-loinc",
  "version" : "2026.0.3",
  "name" : "MII_CM_Onko_ASA_oBDS_LOINC",
  "title" : "MII CM Onkologie ASA oBDS zu LOINC",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T14:33:40+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping von oBDS ASA-Klassifikation (ursprünglich KR9, generalisiert für alle onkologischen Indikationen) zu LOINC ASA Physical Status",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "sourceCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-asa-obds",
  "targetCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-asa-loinc",
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-asa-obds",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "1",
      "display" : "ASA I",
      "target" : [{
        "code" : "LA28813-6",
        "display" : "ASA I",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "2",
      "display" : "ASA II",
      "target" : [{
        "code" : "LA28814-4",
        "display" : "ASA II",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "3",
      "display" : "ASA III",
      "target" : [{
        "code" : "LA28815-1",
        "display" : "ASA III",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "4",
      "display" : "ASA IV",
      "target" : [{
        "code" : "LA28816-9",
        "display" : "ASA IV",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "5",
      "display" : "ASA V",
      "target" : [{
        "code" : "LA28817-7",
        "display" : "ASA V",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "6",
      "display" : "ASA VI",
      "target" : [{
        "code" : "LA28818-5",
        "display" : "ASA VI",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "U",
      "display" : "Unbekannt",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Kein entsprechender LOINC-Code für 'Unbekannt' verfügbar"
      }]
    }]
  }]
}

```
