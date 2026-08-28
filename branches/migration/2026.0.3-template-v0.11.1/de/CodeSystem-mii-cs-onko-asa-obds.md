# MII CS Onkologie ASA-Klassifikation oBDS - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie ASA-Klassifikation oBDS**

## CodeSystem: MII CS Onkologie ASA-Klassifikation oBDS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-asa-obds | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_CS_Onko_ASA_oBDS |

 
oBDS-basiertes CodeSystem für ASA-Klassifikation (ursprünglich KR9 aus Kolorektales Karzinom Modul, generalisiert für alle onkologischen Indikationen) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie ASA oBDS](ValueSet-mii-vs-onko-asa-obds.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-asa-obds",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-asa-obds",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_ASA_oBDS",
  "title" : "MII CS Onkologie ASA-Klassifikation oBDS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T08:03:44+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-basiertes CodeSystem für ASA-Klassifikation (ursprünglich KR9 aus Kolorektales Karzinom Modul, generalisiert für alle onkologischen Indikationen)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "1",
    "display" : "ASA I",
    "definition" : "Gesunder Patient ohne organische, physiologische, biochemische oder psychiatrische Störung"
  },
  {
    "code" : "2",
    "display" : "ASA II",
    "definition" : "Patient mit leichter Allgemeinerkrankung"
  },
  {
    "code" : "3",
    "display" : "ASA III",
    "definition" : "Patient mit schwerer Allgemeinerkrankung und Leistungsminderung"
  },
  {
    "code" : "4",
    "display" : "ASA IV",
    "definition" : "Patient mit schwerer Allgemeinerkrankung, die eine ständige Lebensbedrohung darstellt"
  },
  {
    "code" : "5",
    "display" : "ASA V",
    "definition" : "Moribunder Patient, der ohne Operation voraussichtlich nicht die nächsten 24 Stunden überleben wird"
  },
  {
    "code" : "6",
    "display" : "ASA VI",
    "definition" : "Hirntoter Patient zur Organspende"
  },
  {
    "code" : "U",
    "display" : "Unbekannt",
    "definition" : "ASA-Klassifikation unbekannt"
  }]
}

```
