# MII CM Onko ATC Code Changes 2025 to 2026 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko ATC Code Changes 2025 to 2026**

## ConceptMap: MII CM Onko ATC Code Changes 2025 to 2026 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2026 | *Version*:2026.0.3 |
| Active as of 2026-03-10 | *Computable Name*:MII_CM_Onko_ATC_Transitions_2026 |

 
Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2025 zu 2026. c-MET-Kinase-Inhibitoren wurden in die neue Untergruppe L01EP umklassifiziert. 

 
Migration von ATC-Codes für c-MET-Kinase-Inhibitoren, die 2026 von L01EX nach L01EP umkodiert wurden. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-atc-transitions-2026",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2026",
  "version" : "2026.0.3",
  "name" : "MII_CM_Onko_ATC_Transitions_2026",
  "title" : "MII CM Onko ATC Code Changes 2025 to 2026",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-10",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2025 zu 2026. c-MET-Kinase-Inhibitoren wurden in die neue Untergruppe L01EP umklassifiziert.",
  "purpose" : "Migration von ATC-Codes für c-MET-Kinase-Inhibitoren, die 2026 von L01EX nach L01EP umkodiert wurden.",
  "sourceCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2025",
  "targetCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2026",
  "group" : [{
    "source" : "http://fhir.de/CodeSystem/bfarm/atc",
    "target" : "http://fhir.de/CodeSystem/bfarm/atc",
    "element" : [{
      "code" : "L01EX17",
      "display" : "Capmatinib",
      "target" : [{
        "code" : "L01EP01",
        "display" : "Capmatinib",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu c-MET-Kinase-Inhibitoren (neue Untergruppe L01EP)"
      }]
    },
    {
      "code" : "L01EX21",
      "display" : "Tepotinib",
      "target" : [{
        "code" : "L01EP02",
        "display" : "Tepotinib",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu c-MET-Kinase-Inhibitoren (neue Untergruppe L01EP)"
      }]
    }]
  }]
}

```
