# MII CS Onko Nebenwirkung nach CTCAE-Grad - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onko Nebenwirkung nach CTCAE-Grad**

## CodeSystem: MII CS Onko Nebenwirkung nach CTCAE-Grad 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_CS_Onko_Nebenwirkung_CTCAE_Grad |

 
Gibt an, zu welchem Schweregrad von Nebenwirkungen es bei der Bestrahlung oder der systemischen Therapie gekommen ist. 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Nebenwirkung nach CTCAE Grad](ValueSet-mii-vs-onko-nebenwirkung-ctcae-grad.md)

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
  "date" : "2026-08-28T07:40:52+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Gibt an, zu welchem Schweregrad von Nebenwirkungen es bei der Bestrahlung oder der systemischen Therapie gekommen ist.",
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
