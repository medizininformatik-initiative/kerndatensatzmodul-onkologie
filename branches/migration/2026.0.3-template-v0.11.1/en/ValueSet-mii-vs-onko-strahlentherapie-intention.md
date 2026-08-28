# MII VS Onkologie Strahlentherapie Intention - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Strahlentherapie Intention**

## ValueSet: MII VS Onkologie Strahlentherapie Intention 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-intention | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_Strahlentherapie_Intention |

 
Value Set für oBDS-Codes für Klassifikation von Intention der Strahlentherapie 

 **References** 

* [MII EX Onko Strahlentherapie Intention](StructureDefinition-mii-ex-onko-strahlentherapie-intention.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-strahlentherapie-intention",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-intention",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Strahlentherapie_Intention",
  "title" : "MII VS Onkologie Strahlentherapie Intention",
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
  "description" : "Value Set für oBDS-Codes für Klassifikation von Intention der Strahlentherapie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
      "concept" : [{
        "code" : "K",
        "display" : "kurativ"
      },
      {
        "code" : "P",
        "display" : "palliativ"
      },
      {
        "code" : "S",
        "display" : "Sonstiges"
      },
      {
        "code" : "X",
        "display" : "keine Angabe"
      },
      {
        "code" : "O",
        "display" : "lokal kurativ bei Oligometastasierung"
      }]
    }]
  }
}

```
