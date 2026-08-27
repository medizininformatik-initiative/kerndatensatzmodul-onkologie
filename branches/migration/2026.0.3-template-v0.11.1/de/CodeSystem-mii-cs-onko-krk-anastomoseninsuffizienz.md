# MII CS Onkologie KRK Anastomoseninsuffizienz - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie KRK Anastomoseninsuffizienz**

## CodeSystem: MII CS Onkologie KRK Anastomoseninsuffizienz 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-anastomoseninsuffizienz | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_CS_Onko_KRK_Anastomoseninsuffizienz |

 
oBDS-spezifisches Codesystem für Anastomoseninsuffizienz beim Kolorektalen Karzinom 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie KRK Anastomoseninsuffizienz](ValueSet-mii-vs-onko-krk-anastomoseninsuffizienz.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-krk-anastomoseninsuffizienz",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-anastomoseninsuffizienz",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_KRK_Anastomoseninsuffizienz",
  "title" : "MII CS Onkologie KRK Anastomoseninsuffizienz",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T15:31:43+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für Anastomoseninsuffizienz beim Kolorektalen Karzinom",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "B",
    "display" : "Anastomoseninsuffizienz Grad B",
    "definition" : "Anastomoseninsuffizienz Grad B"
  },
  {
    "code" : "C",
    "display" : "Anastomoseninsuffizienz Grad C",
    "definition" : "Anastomoseninsuffizienz Grad C"
  },
  {
    "code" : "K",
    "display" : "Keine Insuffizienz oder höchstens Grad A",
    "definition" : "Keine Insuffizienz oder höchstens Grad A"
  },
  {
    "code" : "U",
    "display" : "Unbekannt",
    "definition" : "Unbekannt"
  }]
}

```
