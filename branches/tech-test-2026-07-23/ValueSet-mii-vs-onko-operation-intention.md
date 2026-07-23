# MII VS Onkologie Operation Intention - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Operation Intention**

## ValueSet: MII VS Onkologie Operation Intention 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-intention | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_Operation_Intention |

 
Value Set für oBDS-Codes für Klassifikation von Intention der OP 

 **References** 

* [MII EX Onko Operation Intention](StructureDefinition-mii-ex-onko-operation-intention.md)

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
  "date" : "2026-07-23T12:42:42+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für oBDS-Codes für Klassifikation von Intention der OP",
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
