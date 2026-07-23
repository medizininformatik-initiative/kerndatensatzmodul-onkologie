# MII CS Onkologie Studienteilnahme - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Studienteilnahme**

## CodeSystem: MII CS Onkologie Studienteilnahme 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-studienteilnahme | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:Studienteilnahme |

 
oBDS-spezifisches Codesystem den Status der Studienteilnahme 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_Onko_Studienteilnahme](ValueSet-mii-vs-onko-studienteilnahme.md)



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
  "date" : "2026-07-23T12:42:42+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem den Status der Studienteilnahme",
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
