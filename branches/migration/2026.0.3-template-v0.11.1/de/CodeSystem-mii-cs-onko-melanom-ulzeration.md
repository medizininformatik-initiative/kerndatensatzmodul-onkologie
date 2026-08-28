# MII CS Onkologie Melanom Ulzeration - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie Melanom Ulzeration**

## CodeSystem: MII CS Onkologie Melanom Ulzeration 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-melanom-ulzeration | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_CS_Onko_Melanom_Ulzeration |

 
Codes für die Ulzeration beim Malignen Melanom der Haut nach oBDS 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie Melanom Ulzeration](ValueSet-mii-vs-onko-melanom-ulzeration.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-melanom-ulzeration",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-melanom-ulzeration",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Melanom_Ulzeration",
  "title" : "MII CS Onkologie Melanom Ulzeration",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:12:02+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Codes für die Ulzeration beim Malignen Melanom der Haut nach oBDS",
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
    "display" : "Ja",
    "definition" : "Ulzeration ist vorhanden"
  },
  {
    "code" : "N",
    "display" : "Nein",
    "definition" : "Keine Ulzeration"
  },
  {
    "code" : "U",
    "display" : "Unbekannt",
    "definition" : "Ulzeration unbekannt oder nicht bestimmbar"
  }]
}

```
