# MII CM Onko ATC Code Changes 2021 to 2022 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko ATC Code Changes 2021 to 2022**

## ConceptMap: MII CM Onko ATC Code Changes 2021 to 2022 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2022 | *Version*:2026.0.3 |
| Active as of 2026-08-25 | *Computable Name*:MII_CM_Onko_ATC_Transitions_2022 |

 
Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2021 zu 2022. In diesem Jahr erfolgte die größte Reklassifikation der onkologischen ATC-Systematik: die monoklonalen Antikörper wurden aus der Sammelgruppe L01XC in die neue, nach Zielstruktur gegliederte Gruppe L01F überführt. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-atc-transitions-2022",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2022",
  "version" : "2026.0.3",
  "name" : "MII_CM_Onko_ATC_Transitions_2022",
  "title" : "MII CM Onko ATC Code Changes 2021 to 2022",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-25",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2021 zu 2022. In diesem Jahr erfolgte die größte Reklassifikation der onkologischen ATC-Systematik: die monoklonalen Antikörper wurden aus der Sammelgruppe L01XC in die neue, nach Zielstruktur gegliederte Gruppe L01F überführt.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Migration von ATC-Codes für monoklonale Antikörper, die 2022 von L01XC nach L01F umkodiert wurden.",
  "sourceCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2021",
  "targetCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2022",
  "group" : [{
    "source" : "http://fhir.de/CodeSystem/bfarm/atc",
    "target" : "http://fhir.de/CodeSystem/bfarm/atc",
    "element" : [{
      "code" : "L01XC02",
      "display" : "Rituximab",
      "target" : [{
        "code" : "L01FA01",
        "display" : "Rituximab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu CD20-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC15",
      "display" : "Obinutuzumab",
      "target" : [{
        "code" : "L01FA03",
        "display" : "Obinutuzumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu CD20-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC26",
      "display" : "Inotuzumab ozogamicin",
      "target" : [{
        "code" : "L01FB01",
        "display" : "Inotuzumab ozogamicin",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu CD22-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC24",
      "display" : "Daratumumab",
      "target" : [{
        "code" : "L01FC01",
        "display" : "Daratumumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu CD38-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC03",
      "display" : "Trastuzumab",
      "target" : [{
        "code" : "L01FD01",
        "display" : "Trastuzumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu HER2-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC13",
      "display" : "Pertuzumab",
      "target" : [{
        "code" : "L01FD02",
        "display" : "Pertuzumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu HER2-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC14",
      "display" : "Trastuzumab emtansin",
      "target" : [{
        "code" : "L01FD03",
        "display" : "Trastuzumab emtansin",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu HER2-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC06",
      "display" : "Cetuximab",
      "target" : [{
        "code" : "L01FE01",
        "display" : "Cetuximab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu EGFR-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC08",
      "display" : "Panitumumab",
      "target" : [{
        "code" : "L01FE02",
        "display" : "Panitumumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu EGFR-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC17",
      "display" : "Nivolumab",
      "target" : [{
        "code" : "L01FF01",
        "display" : "Nivolumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu PD-1-/PD-L1-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC18",
      "display" : "Pembrolizumab",
      "target" : [{
        "code" : "L01FF02",
        "display" : "Pembrolizumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu PD-1-/PD-L1-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC28",
      "display" : "Durvalumab",
      "target" : [{
        "code" : "L01FF03",
        "display" : "Durvalumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu PD-1-/PD-L1-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC31",
      "display" : "Avelumab",
      "target" : [{
        "code" : "L01FF04",
        "display" : "Avelumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu PD-1-/PD-L1-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC32",
      "display" : "Atezolizumab",
      "target" : [{
        "code" : "L01FF05",
        "display" : "Atezolizumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu PD-1-/PD-L1-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC07",
      "display" : "Bevacizumab",
      "target" : [{
        "code" : "L01FG01",
        "display" : "Bevacizumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu VEGF-/VEGFR-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC21",
      "display" : "Ramucirumab",
      "target" : [{
        "code" : "L01FG02",
        "display" : "Ramucirumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu VEGF-/VEGFR-Inhibitoren"
      }]
    },
    {
      "code" : "L01XC11",
      "display" : "Ipilimumab",
      "target" : [{
        "code" : "L01FX04",
        "display" : "Ipilimumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu andere monoklonale Antikörper"
      }]
    },
    {
      "code" : "L01XC12",
      "display" : "Brentuximab vedotin",
      "target" : [{
        "code" : "L01FX05",
        "display" : "Brentuximab vedotin",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu andere monoklonale Antikörper"
      }]
    },
    {
      "code" : "L01XC19",
      "display" : "Blinatumomab",
      "target" : [{
        "code" : "L01FX07",
        "display" : "Blinatumomab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu andere monoklonale Antikörper"
      }]
    },
    {
      "code" : "L01XC27",
      "display" : "Olaratumab",
      "target" : [{
        "code" : "L01FX10",
        "display" : "Olaratumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu andere monoklonale Antikörper"
      }]
    }]
  }]
}

```
