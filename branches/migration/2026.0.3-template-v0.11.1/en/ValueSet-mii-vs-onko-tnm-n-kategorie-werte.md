# MII VS Onkologie TNM N Kategorie Werte - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie TNM N Kategorie Werte**

## ValueSet: MII VS Onkologie TNM N Kategorie Werte 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-n-kategorie-werte | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_TNM_N_Kategorie_Werte |

 
Das ValueSet enthält die TNM N-Kategorie Codes aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. 

 **References** 

* [MII PR Onkologie TNM N-Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-n-kategorie-werte",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-n-kategorie-werte",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_N_Kategorie_Werte",
  "title" : "MII VS Onkologie TNM N Kategorie Werte",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T09:05:47+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Das ValueSet enthält die TNM N-Kategorie Codes aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
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
        "code" : "NX",
        "display" : "Nx"
      },
      {
        "code" : "N0",
        "display" : "N0"
      },
      {
        "code" : "N1",
        "display" : "N1"
      },
      {
        "code" : "N1mi",
        "display" : "N1(mi)"
      },
      {
        "code" : "N1a",
        "display" : "N1a"
      },
      {
        "code" : "N1b",
        "display" : "N1b"
      },
      {
        "code" : "N1c",
        "display" : "N1c"
      },
      {
        "code" : "N2",
        "display" : "N2"
      },
      {
        "code" : "N2a",
        "display" : "N2a"
      },
      {
        "code" : "N2b",
        "display" : "N2b"
      },
      {
        "code" : "N2c",
        "display" : "N2c"
      },
      {
        "code" : "N3",
        "display" : "N3"
      },
      {
        "code" : "N3a",
        "display" : "N3a"
      },
      {
        "code" : "N3b",
        "display" : "N3b"
      },
      {
        "code" : "N3c",
        "display" : "N3c"
      }]
    }]
  }
}

```
