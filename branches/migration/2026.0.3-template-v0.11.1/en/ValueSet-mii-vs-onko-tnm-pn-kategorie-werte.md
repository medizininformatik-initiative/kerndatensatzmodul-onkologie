# MII VS Onkologie TNM Pn Kategorie Werte - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie TNM Pn Kategorie Werte**

## ValueSet: MII VS Onkologie TNM Pn Kategorie Werte 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-pn-kategorie-werte | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_TNM_Pn_Kategorie_Werte |

 
Das ValueSet enthält die TNM Codes für den Grad der perineuralen Invasion aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. 

 **References** 

* [MII PR Onkologie TNM Pn-Kategorie](StructureDefinition-mii-pr-onko-tnm-pn-kategorie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-pn-kategorie-werte",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-pn-kategorie-werte",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_Pn_Kategorie_Werte",
  "title" : "MII VS Onkologie TNM Pn Kategorie Werte",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:12:02+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Das ValueSet enthält die TNM Codes für den Grad der perineuralen Invasion aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
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
        "code" : "Pn0",
        "display" : "Pn0"
      },
      {
        "code" : "Pn1",
        "display" : "Pn1"
      },
      {
        "code" : "PnX",
        "display" : "PnX"
      }]
    }]
  }
}

```
