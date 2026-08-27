# MII CM Onko ATC Code Changes 2022 to 2023 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko ATC Code Changes 2022 to 2023**

## ConceptMap: MII CM Onko ATC Code Changes 2022 to 2023 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2023 | *Version*:2026.0.3 |
| Active as of 2024-12-12 | *Computable Name*:MII_CM_Onko_ATC_Transitions_2023 |

 
Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2022 zu 2023. In diesem Jahr wurden CAR-T-Zelltherapien und onkolytische Viren in neue spezifische ATC-Kategorien umklassifiziert. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-atc-transitions-2023",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2023",
  "version" : "2026.0.3",
  "name" : "MII_CM_Onko_ATC_Transitions_2023",
  "title" : "MII CM Onko ATC Code Changes 2022 to 2023",
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
  "description" : "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2022 zu 2023. In diesem Jahr wurden CAR-T-Zelltherapien und onkolytische Viren in neue spezifische ATC-Kategorien umklassifiziert.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Migration von ATC-Codes für CAR-T-Zelltherapien und onkolytische Viren, die 2023 umkodiert wurden.",
  "sourceCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2022",
  "targetCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2023",
  "group" : [{
    "source" : "http://fhir.de/CodeSystem/bfarm/atc",
    "target" : "http://fhir.de/CodeSystem/bfarm/atc",
    "element" : [{
      "code" : "L01XX70",
      "display" : "Axicabtagen Ciloleucel",
      "target" : [{
        "code" : "L01XL03",
        "display" : "Axicabtagen Ciloleucel",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu CAR-T-Zelltherapien"
      }]
    },
    {
      "code" : "L01XX51",
      "display" : "Talimogen laherparepvec",
      "target" : [{
        "code" : "L01XL02",
        "display" : "Talimogen laherparepvec",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu onkolytische Viren"
      }]
    },
    {
      "code" : "L01XX71",
      "display" : "Tisagenlecleucel",
      "target" : [{
        "code" : "L01XL04",
        "display" : "Tisagenlecleucel",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu CAR-T-Zelltherapien"
      }]
    }]
  }]
}

```
