# MII VS Onkologie Systemische Therapie Stellung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Systemische Therapie Stellung**

## ValueSet: MII VS Onkologie Systemische Therapie Stellung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-systemische-therapie-stellungzurop | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_Systemische_Therapie_StellungZurOp |

 
oBDS-spezifisches ValueSet für Klassifikation von Stellung zur OP 

 **References** 

* [MII EX Onko Systemische Therapie Stellung zur OP](StructureDefinition-mii-ex-onko-systemische-therapie-stellungzurop.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



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
  "date" : "2026-07-23T12:42:42+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches ValueSet für Klassifikation von Stellung zur OP",
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
