# MII VS Onkologie Systemische Therapie Stellung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Systemische Therapie Stellung**

## ValueSet: MII VS Onkologie Systemische Therapie Stellung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-systemische-therapie-stellungzurop | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_VS_Onko_Systemische_Therapie_StellungZurOp |

 
oBDS-spezifisches ValueSet für Klassifikation von Stellung zur OP 

 **References** 

* [MII EX Onko Systemische Therapie Stellung zur OP](StructureDefinition-mii-ex-onko-systemische-therapie-stellungzurop.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-systemische-therapie-stellungzurop",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-systemische-therapie-stellungzurop",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Systemische_Therapie_StellungZurOp",
  "title" : "MII VS Onkologie Systemische Therapie Stellung",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T15:57:15+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches ValueSet für Klassifikation von Stellung zur OP",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop",
      "concept" : [{
        "code" : "O",
        "display" : "ohne Bezug zur operativen Therapie"
      },
      {
        "code" : "A",
        "display" : "adjuvant"
      },
      {
        "code" : "N",
        "display" : "neoadjuvant"
      },
      {
        "code" : "I",
        "display" : "intraoperativ"
      },
      {
        "code" : "S",
        "display" : "Sonstiges"
      }]
    }]
  }
}

```
