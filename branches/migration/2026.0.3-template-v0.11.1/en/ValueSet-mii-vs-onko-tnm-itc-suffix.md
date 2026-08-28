# MII VS Onkologie TNM ITC Suffix - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie TNM ITC Suffix**

## ValueSet: MII VS Onkologie TNM ITC Suffix 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-itc-suffix | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_TNM_ITC_Suffix |

 
Das ValueSet enthält die isolierten Tumorzellen (ITC) Suffixe für die N- und M-Kategorien aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. 

 **References** 

* [MII EX Onkologie TNM ITC Suffix](StructureDefinition-mii-ex-onko-tnm-itc-suffix.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-itc-suffix",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-itc-suffix",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_ITC_Suffix",
  "title" : "MII VS Onkologie TNM ITC Suffix",
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
  "description" : "Das ValueSet enthält die isolierten Tumorzellen (ITC) Suffixe für die N- und M-Kategorien aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
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
        "code" : "i+",
        "display" : "(i+)"
      },
      {
        "code" : "i-",
        "display" : "(i-)"
      },
      {
        "code" : "mol+",
        "display" : "(mol+)"
      },
      {
        "code" : "mol-",
        "display" : "(mol-)"
      }]
    }]
  }
}

```
