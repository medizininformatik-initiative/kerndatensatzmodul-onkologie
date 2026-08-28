# MII CS Onkologie Studienteilnahme - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Studienteilnahme**

## CodeSystem: MII CS Onkologie Studienteilnahme 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-studienteilnahme | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:Studienteilnahme |

 
oBDS-spezifisches Codesystem den Status der Studienteilnahme 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Studienteilnahme](ValueSet-mii-vs-onko-studienteilnahme.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-studienteilnahme",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-studienteilnahme",
  "version" : "2026.0.3",
  "name" : "Studienteilnahme",
  "title" : "MII CS Onkologie Studienteilnahme",
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
  "description" : "oBDS-spezifisches Codesystem den Status der Studienteilnahme",
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
    "display" : "Nein"
  },
  {
    "code" : "U",
    "display" : "Unbekannt"
  }]
}

```
