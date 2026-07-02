# MII CS Onkologie Mamma Rezeptorstatus - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie Mamma Rezeptorstatus 

 
oBDS-spezifisches Codesystem Mamma-Rezeptorstatus, basierend auf der S3-Leitlinie Mammakarzinom v5.02 Abschnitt 4.5.4 

This Code system is referenced in the definition of the following value sets:

* [MII_VS_Onko_Mamma_Rezeptorstatus_Leitlinie](ValueSet-mii-vs-onko-mamma-rezeptorstatus-leitlinie.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-mamma-rezeptorstatus-leitlinie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-rezeptorstatus-leitlinie",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Mamma_Rezeptorstatus_Leitlinie",
  "title" : "MII CS Onkologie Mamma Rezeptorstatus",
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
  "description" : "oBDS-spezifisches Codesystem Mamma-Rezeptorstatus, basierend auf der S3-Leitlinie Mammakarzinom v5.02 Abschnitt 4.5.4",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "positiv",
    "display" : "positiv",
    "definition" : "Positiv: > 10% positive Tumorzellen"
  },
  {
    "code" : "gering-positiv",
    "display" : "gering positiv",
    "definition" : "Gering positiv: 1-10% positive Tumorzellen"
  },
  {
    "code" : "negativ",
    "display" : "negativ",
    "definition" : "Negativ: < 1% positive Tumorzellen"
  }]
}

```
