# MII VS Onkologie TNM M Kategorie Werte - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie TNM M Kategorie Werte**

## ValueSet: MII VS Onkologie TNM M Kategorie Werte 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-m-kategorie-werte | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_TNM_M_Kategorie_Werte |

 
Das ValueSet enthält die TNM M-Kategorie Codes aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. 

 **References** 

* [MII PR Onkologie TNM M-Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-m-kategorie-werte",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-m-kategorie-werte",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_M_Kategorie_Werte",
  "title" : "MII VS Onkologie TNM M Kategorie Werte",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T07:24:31+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Das ValueSet enthält die TNM M-Kategorie Codes aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "concept" : [{
        "code" : "M0",
        "display" : "M0"
      },
      {
        "code" : "M1",
        "display" : "M1"
      },
      {
        "code" : "M1a",
        "display" : "M1a"
      },
      {
        "code" : "M1b",
        "display" : "M1b"
      },
      {
        "code" : "M1c",
        "display" : "M1c"
      },
      {
        "code" : "M1d",
        "display" : "M1d"
      },
      {
        "code" : "MX",
        "display" : "MX"
      }]
    }]
  }
}

```
