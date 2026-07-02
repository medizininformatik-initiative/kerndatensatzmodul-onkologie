# MII CS Onkologie Studienteilnahme - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie Studienteilnahme 

 
oBDS-spezifisches Codesystem den Status der Studienteilnahme 

This Code system is referenced in the definition of the following value sets:

* [MII_VS_Onko_Studienteilnahme](ValueSet-mii-vs-onko-studienteilnahme.md)

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
  "date" : "2026-07-02T11:24:18+00:00",
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
