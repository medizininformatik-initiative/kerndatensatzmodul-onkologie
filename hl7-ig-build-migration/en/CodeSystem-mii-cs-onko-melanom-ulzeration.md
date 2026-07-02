# MII CS Onkologie Melanom Ulzeration - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie Melanom Ulzeration 

 
Codes für die Ulzeration beim Malignen Melanom der Haut nach oBDS 

This Code system is referenced in the definition of the following value sets:

* [MII_VS_Onko_Melanom_Ulzeration](ValueSet-mii-vs-onko-melanom-ulzeration.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-07-02T12:18:38+00:00",
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
