# MII CS Onkologie Melanom Ulzeration - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie Melanom Ulzeration 

 
Codes für die Ulzeration beim Malignen Melanom der Haut nach oBDS 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII_VS_Onko_Melanom_Ulzeration](ValueSet-mii-vs-onko-melanom-ulzeration.md)

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
  "date" : "2026-07-02T11:24:18+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Codes für die Ulzeration beim Malignen Melanom der Haut nach oBDS",
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
