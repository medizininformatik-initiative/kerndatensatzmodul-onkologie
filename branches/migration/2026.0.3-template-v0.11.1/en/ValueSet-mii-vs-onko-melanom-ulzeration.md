# MII VS Onkologie Melanom Ulzeration - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Melanom Ulzeration**

## ValueSet: MII VS Onkologie Melanom Ulzeration 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-melanom-ulzeration | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_Melanom_Ulzeration |

 
Codes für die Ulzeration beim Malignen Melanom der Haut 

 **References** 

* [MII PR Onkologie Melanom Ulzeration](StructureDefinition-mii-pr-onko-melanom-ulzeration.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-melanom-ulzeration",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-melanom-ulzeration",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Melanom_Ulzeration",
  "title" : "MII VS Onkologie Melanom Ulzeration",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T08:03:44+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Codes für die Ulzeration beim Malignen Melanom der Haut",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-melanom-ulzeration",
      "concept" : [{
        "code" : "J",
        "display" : "Ja"
      },
      {
        "code" : "N",
        "display" : "Nein"
      },
      {
        "code" : "U",
        "display" : "Unbekannt"
      }]
    }]
  }
}

```
