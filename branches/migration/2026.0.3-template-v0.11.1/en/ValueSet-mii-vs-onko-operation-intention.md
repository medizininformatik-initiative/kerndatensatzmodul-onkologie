# MII VS Onkologie Operation Intention - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Operation Intention**

## ValueSet: MII VS Onkologie Operation Intention 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-intention | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_Operation_Intention |

 
Value Set für oBDS-Codes für Klassifikation von Intention der OP 

 **References** 

* [MII EX Onko Operation Intention](StructureDefinition-mii-ex-onko-operation-intention.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-operation-intention",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-intention",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Operation_Intention",
  "title" : "MII VS Onkologie Operation Intention",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:31:49+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für oBDS-Codes für Klassifikation von Intention der OP",
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
        "code" : "D",
        "display" : "diagnostisch"
      },
      {
        "code" : "R",
        "display" : "Revision/Komplikation"
      },
      {
        "code" : "S",
        "display" : "Sonstiges"
      },
      {
        "code" : "X",
        "display" : "fehlende Angabe"
      }]
    }]
  }
}

```
