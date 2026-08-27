# MII CM Onko ATC Code Changes 2023 to 2024 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CM Onko ATC Code Changes 2023 to 2024**

## ConceptMap: MII CM Onko ATC Code Changes 2023 to 2024 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2024 | *Version*:2026.0.3 |
| Active Stand: 2024-12-12 | *Maschinenlesbarer Name*:MII_CM_Onko_ATC_Transitions_2024 |

 
Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2023 zu 2024. Mehrere immunmodulatorische Substanzen wurden in neue Kategorien umklassifiziert, und Kombinationspräparate erhielten neue Codes. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-atc-transitions-2024",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-atc-transitions-2024",
  "version" : "2026.0.3",
  "name" : "MII_CM_Onko_ATC_Transitions_2024",
  "title" : "MII CM Onko ATC Code Changes 2023 to 2024",
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
  "description" : "Diese ConceptMap dokumentiert die ATC-Code-Änderungen von 2023 zu 2024. Mehrere immunmodulatorische Substanzen wurden in neue Kategorien umklassifiziert, und Kombinationspräparate erhielten neue Codes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Migration von ATC-Codes für immunmodulatorische Substanzen und Kombinationspräparate, die 2024 umkodiert wurden.",
  "sourceCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2023",
  "targetCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2024",
  "group" : [{
    "source" : "http://fhir.de/CodeSystem/bfarm/atc",
    "target" : "http://fhir.de/CodeSystem/bfarm/atc",
    "element" : [{
      "code" : "L04AA34",
      "display" : "Alemtuzumab",
      "target" : [{
        "code" : "L04AG06",
        "display" : "Alemtuzumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung innerhalb der Immunsuppressiva"
      }]
    },
    {
      "code" : "L04AA26",
      "display" : "Belimumab",
      "target" : [{
        "code" : "L04AG04",
        "display" : "Belimumab",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "L04AA25",
      "display" : "Eculizumab",
      "target" : [{
        "code" : "L04AJ01",
        "display" : "Eculizumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu Komplement-Inhibitoren"
      }]
    },
    {
      "code" : "L04AA21",
      "display" : "Efalizumab",
      "target" : [{
        "code" : "L04AG02",
        "display" : "Efalizumab",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "L01EG02",
      "display" : "Everolimus",
      "target" : [{
        "code" : "L04AH02",
        "display" : "Everolimus",
        "equivalence" : "equivalent",
        "comment" : "Zusätzliche Klassifizierung als Immunsuppressivum (behält auch L01EG02)"
      }]
    },
    {
      "code" : "L04AA27",
      "display" : "Fingolimod",
      "target" : [{
        "code" : "L04AE01",
        "display" : "Fingolimod",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu Sphingosin-1-Phosphat-Rezeptor-Modulatoren"
      }]
    },
    {
      "code" : "L04AA13",
      "display" : "Leflunomid",
      "target" : [{
        "code" : "L04AK01",
        "display" : "Leflunomid",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "L01FX24",
      "display" : "Mosunetuzumab",
      "target" : [{
        "code" : "L01FX25",
        "display" : "Mosunetuzumab",
        "equivalence" : "equivalent",
        "comment" : "Code-Anpassung innerhalb der bispezifischen Antikörper"
      }]
    },
    {
      "code" : "L04AA02",
      "display" : "Muromonab-CD3",
      "target" : [{
        "code" : "L04AG01",
        "display" : "Muromonab-CD3",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "L04AA23",
      "display" : "Natalizumab",
      "target" : [{
        "code" : "L04AG03",
        "display" : "Natalizumab",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "L01XY03",
      "display" : "Nivolumab und Relatlimab",
      "target" : [{
        "code" : "L01FY02",
        "display" : "Nivolumab und Relatlimab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu Kombinationen monoklonaler Antikörper"
      }]
    },
    {
      "code" : "L01FA02",
      "display" : "Ofatumumab",
      "target" : [{
        "code" : "L04AG12",
        "display" : "Ofatumumab",
        "equivalence" : "equivalent",
        "comment" : "Zusätzliche Klassifizierung als Immunsuppressivum (behält auch L01FA02)"
      }]
    },
    {
      "code" : "L01XY02",
      "display" : "Pertuzumab und Trastuzumab",
      "target" : [{
        "code" : "L01FY01",
        "display" : "Pertuzumab und Trastuzumab",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu Kombinationen monoklonaler Antikörper"
      }]
    },
    {
      "code" : "L04AA10",
      "display" : "Sirolimus",
      "target" : [{
        "code" : "L04AH01",
        "display" : "Sirolimus",
        "equivalence" : "equivalent",
        "comment" : "Reklassifizierung zu mTOR-Inhibitoren (Immunsuppressiva)"
      }]
    }]
  }]
}

```
