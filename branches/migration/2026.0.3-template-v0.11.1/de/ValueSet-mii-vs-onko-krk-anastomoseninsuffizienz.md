# MII VS Onkologie KRK Anastomoseninsuffizienz - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie KRK Anastomoseninsuffizienz**

## ValueSet: MII VS Onkologie KRK Anastomoseninsuffizienz (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-anastomoseninsuffizienz | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_KRK_Anastomoseninsuffizienz |

 
Value Set für die Bewertung der Anastomoseninsuffizienz beim Kolorektalen Karzinom 

 **References** 

* [MII PR Onkologie KRK Anastomoseninsuffizienz](StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-krk-anastomoseninsuffizienz",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-anastomoseninsuffizienz",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_KRK_Anastomoseninsuffizienz",
  "title" : "MII VS Onkologie KRK Anastomoseninsuffizienz",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-28T06:12:02+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für die Bewertung der Anastomoseninsuffizienz beim Kolorektalen Karzinom",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-anastomoseninsuffizienz"
    }]
  }
}

```
