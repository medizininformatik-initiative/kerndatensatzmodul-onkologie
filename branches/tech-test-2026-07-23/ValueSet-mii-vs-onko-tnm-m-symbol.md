# MII VS Onkologie TNM m-Symbol - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie TNM m-Symbol**

## ValueSet: MII VS Onkologie TNM m-Symbol 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-m-symbol | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_TNM_m_Symbol |

 
Kennzeichnet Vorhandensein multipler Primärtumoren in einem anatomischen Bezirk. 

 **References** 

* [MII PR Onkologie TNM m-Symbol](StructureDefinition-mii-pr-onko-tnm-m-symbol.md)

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
  "id" : "mii-vs-onko-tnm-m-symbol",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-m-symbol",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_m_Symbol",
  "title" : "MII VS Onkologie TNM m-Symbol",
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
  "description" : "Kennzeichnet Vorhandensein multipler Primärtumoren in einem anatomischen Bezirk.",
  "compose" : {
    "include" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "concept" : [{
        "code" : "m",
        "display" : "(m)"
      },
      {
        "code" : "2",
        "display" : "(2)"
      },
      {
        "code" : "3",
        "display" : "(3)"
      },
      {
        "code" : "4",
        "display" : "(4)"
      },
      {
        "code" : "5",
        "display" : "(5)"
      },
      {
        "code" : "6",
        "display" : "(6)"
      },
      {
        "code" : "7",
        "display" : "(7)"
      },
      {
        "code" : "8",
        "display" : "(8)"
      },
      {
        "code" : "9",
        "display" : "(9)"
      },
      {
        "code" : "10",
        "display" : "(10)"
      }]
    }]
  }
}

```
