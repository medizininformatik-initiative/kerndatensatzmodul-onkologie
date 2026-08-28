# MII CS Onkologie Prostata Postoperative Komplikationen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie Prostata Postoperative Komplikationen**

## CodeSystem: MII CS Onkologie Prostata Postoperative Komplikationen 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-prostata-postsurgical-complications | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_CS_Onko_Prostata_Postsurgical_Complications |

 
CodeSystem zur Darstellung des Vorhandenseins von postoperativen Komplikationen nach Prostatektomie in der Onkologie 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie Prostata Postsurgical Complications](ValueSet-mii-vs-onko-prostata-postsurgical-complications.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-prostata-postsurgical-complications",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-prostata-postsurgical-complications",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Prostata_Postsurgical_Complications",
  "title" : "MII CS Onkologie Prostata Postoperative Komplikationen",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T07:40:52+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "CodeSystem zur Darstellung des Vorhandenseins von postoperativen Komplikationen nach Prostatektomie in der Onkologie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "J",
    "display" : "Ja"
  },
  {
    "code" : "N",
    "display" : "keine oder höchstens Grad II"
  },
  {
    "code" : "U",
    "display" : "Unbekannt"
  }]
}

```
