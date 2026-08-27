# MII CM Onko ATC Code Changes 2024 to 2025 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko ATC Code Changes 2024 to 2025**

## ConceptMap: MII CM Onko ATC Code Changes 2024 to 2025 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2025 | *Version*:2026.0.3 |
| Active as of 2024-12-12 | *Computable Name*:MII_CM_Onko_ATC_Transitions_2025 |

 
Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2024 zu 2025. IDH-Inhibitoren wurden in eine neue spezifische Kategorie umklassifiziert. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-atc-transitions-2025",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2025",
  "version" : "2026.0.3",
  "name" : "MII_CM_Onko_ATC_Transitions_2025",
  "title" : "MII CM Onko ATC Code Changes 2024 to 2025",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-12-12",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2024 zu 2025. IDH-Inhibitoren wurden in eine neue spezifische Kategorie umklassifiziert.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Migration von ATC-Codes für IDH-Inhibitoren, die 2025 umkodiert wurden.",
  "sourceCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2024",
  "targetCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2025",
  "group" : [{
    "source" : "http://fhir.de/CodeSystem/bfarm/atc",
    "target" : "http://fhir.de/CodeSystem/bfarm/atc",
    "element" : [{
      "code" : "L01XX59",
      "display" : "Enasidenib",
      "target" : [{
        "code" : "L01XM01",
        "display" : "Enasidenib",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu IDH-Inhibitoren"
      }]
    },
    {
      "code" : "L01XX62",
      "display" : "Ivosidenib",
      "target" : [{
        "code" : "L01XM02",
        "display" : "Ivosidenib",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu IDH-Inhibitoren"
      }]
    }]
  }]
}

```
