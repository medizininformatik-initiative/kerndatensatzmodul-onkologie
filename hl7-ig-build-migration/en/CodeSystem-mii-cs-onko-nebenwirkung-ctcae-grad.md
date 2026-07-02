# MII CS Onko Nebenwirkung nach CTCAE-Grad - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onko Nebenwirkung nach CTCAE-Grad 

 
Gibt an, zu welchem Schweregrad von Nebenwirkungen es bei der Bestrahlung oder der systemischen Therapie gekommen ist. 

This Code system is referenced in the definition of the following value sets:

* [MII_VS_Onko_Nebenwirkung_CTCAE_Grad](ValueSet-mii-vs-onko-nebenwirkung-ctcae-grad.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-nebenwirkung-ctcae-grad",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Nebenwirkung_CTCAE_Grad",
  "title" : "MII CS Onko Nebenwirkung nach CTCAE-Grad",
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
  "description" : "Gibt an, zu welchem Schweregrad von Nebenwirkungen es bei der Bestrahlung oder der systemischen Therapie gekommen ist.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "1",
    "display" : "mild",
    "definition" : "Mild"
  },
  {
    "code" : "2",
    "display" : "moderat",
    "definition" : "Moderat"
  },
  {
    "code" : "3",
    "display" : "schwerwiegend",
    "definition" : "Schwerwiegend"
  },
  {
    "code" : "4",
    "display" : "lebensbedrohlich",
    "definition" : "Lebensbedrohlich"
  },
  {
    "code" : "5",
    "display" : "tödlich",
    "definition" : "Tödlich"
  },
  {
    "code" : "U",
    "display" : "unbekannt",
    "definition" : "Unbekannt"
  },
  {
    "code" : "K",
    "display" : "keine",
    "definition" : "Keine"
  }]
}

```
