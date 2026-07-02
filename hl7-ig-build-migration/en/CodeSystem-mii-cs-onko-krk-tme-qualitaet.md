# MII CS Onkologie TME Qualität - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie TME Qualität 

 
oBDS-spezifisches Codesystem TME-Präparat, basierend auf der S3-Leitlinie Mammakarzinom v 

This Code system is referenced in the definition of the following value sets:

* [MII_VS_Onko_KRK_TME_Qualitaet](ValueSet-mii-vs-onko-krk-tme-qualitaet.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-krk-tme-qualitaet",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-tme-qualitaet",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_KRK_TME_Qualitaet",
  "title" : "MII CS Onkologie TME Qualität",
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
  "description" : "oBDS-spezifisches Codesystem TME-Präparat, basierend auf der S3-Leitlinie Mammakarzinom v",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "1",
    "display" : "Grad 1 (gut)"
  },
  {
    "code" : "2",
    "display" : "Grad 2 (moderat)"
  },
  {
    "code" : "3",
    "display" : "Grad 3 (schlecht)"
  }]
}

```
