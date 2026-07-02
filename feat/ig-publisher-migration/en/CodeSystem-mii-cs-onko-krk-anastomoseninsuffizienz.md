# MII CS Onkologie KRK Anastomoseninsuffizienz - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie KRK Anastomoseninsuffizienz 

 
oBDS-spezifisches Codesystem für Anastomoseninsuffizienz beim Kolorektalen Karzinom 

This Code system is referenced in the definition of the following value sets:

* [MII_VS_Onko_KRK_Anastomoseninsuffizienz](ValueSet-mii-vs-onko-krk-anastomoseninsuffizienz.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-07-02T11:24:18+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für Anastomoseninsuffizienz beim Kolorektalen Karzinom",
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
