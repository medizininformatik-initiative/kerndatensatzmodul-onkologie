# MII VS Onkologie Melanom Ulzeration - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie Melanom Ulzeration 

 
Codes für die Ulzeration beim Malignen Melanom der Haut 

 **References** 

* [MII PR Onkologie Melanom Ulzeration](StructureDefinition-mii-pr-onko-melanom-ulzeration.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-melanom-ulzeration",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-melanom-ulzeration",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Melanom_Ulzeration",
  "title" : "MII VS Onkologie Melanom Ulzeration",
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
  "description" : "Codes für die Ulzeration beim Malignen Melanom der Haut",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-melanom-ulzeration",
      "concept" : [{
        "code" : "J",
        "display" : "Ja"
      },
      {
        "code" : "N",
        "display" : "Nein"
      },
      {
        "code" : "U",
        "display" : "Unbekannt"
      }]
    }]
  }
}

```
