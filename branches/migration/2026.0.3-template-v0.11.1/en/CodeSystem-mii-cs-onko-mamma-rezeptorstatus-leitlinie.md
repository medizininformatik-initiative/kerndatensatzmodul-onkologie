# MII CS Onkologie Mamma Rezeptorstatus - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Mamma Rezeptorstatus**

## CodeSystem: MII CS Onkologie Mamma Rezeptorstatus 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-rezeptorstatus-leitlinie | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_CS_Onko_Mamma_Rezeptorstatus_Leitlinie |

 
oBDS-spezifisches Codesystem Mamma-Rezeptorstatus, basierend auf der S3-Leitlinie Mammakarzinom v5.02 Abschnitt 4.5.4 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Mamma Rezeptorstatus Leitlinie](ValueSet-mii-vs-onko-mamma-rezeptorstatus-leitlinie.md)

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
  "date" : "2026-08-27T10:41:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem Mamma-Rezeptorstatus, basierend auf der S3-Leitlinie Mammakarzinom v5.02 Abschnitt 4.5.4",
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
