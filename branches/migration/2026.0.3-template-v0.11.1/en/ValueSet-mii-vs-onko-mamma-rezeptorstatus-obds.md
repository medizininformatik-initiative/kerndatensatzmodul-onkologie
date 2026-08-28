# MII VS Onkologie Mamma Rezeptorstatus oBDS - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Mamma Rezeptorstatus oBDS**

## ValueSet: MII VS Onkologie Mamma Rezeptorstatus oBDS (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-rezeptorstatus-obds | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_Mamma_Rezeptorstatus_oBDS |

 
Value Set für oBDS-Rezeptorstatus Mamma 

 **References** 

* [MII PR Onkologie Rezeptorstatus Estrogen](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.md)
* [MII PR Onkologie Rezeptorstatus Progesteron](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-mamma-rezeptorstatus-obds",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-rezeptorstatus-obds",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Mamma_Rezeptorstatus_oBDS",
  "title" : "MII VS Onkologie Mamma Rezeptorstatus oBDS",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-28T08:03:44+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für oBDS-Rezeptorstatus Mamma",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA6576-8",
        "display" : "Positive"
      },
      {
        "code" : "LA6577-6",
        "display" : "Negative"
      },
      {
        "code" : "LA4489-6",
        "display" : "Unknown"
      }]
    }]
  }
}

```
