# MII_VS_Onko_KRK_Stoma_Status_Reason - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII_VS_Onko_KRK_Stoma_Status_Reason**

## ValueSet: MII_VS_Onko_KRK_Stoma_Status_Reason (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-stoma-status-reason | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_KRK_Stoma_Status_Reason |

 
Value Set für SNOMED CT Codes zur Begründung des Status der präoperativen Stoma-Anzeichnung 

 **References** 

* [MII PR Onkologie KRK Stoma-Markierung](StructureDefinition-mii-pr-onko-krk-stoma-markierung.md)

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
  "id" : "mii-vs-onko-krk-stoma-status-reason",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-stoma-status-reason",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_KRK_Stoma_Status_Reason",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-23T12:42:42+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für SNOMED CT Codes zur Begründung des Status der präoperativen Stoma-Anzeichnung",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "428119001",
        "display" : "Procedure not indicated (situation)"
      },
      {
        "code" : "262008008",
        "display" : "Not performed (qualifier value)"
      },
      {
        "code" : "261665006",
        "display" : "Unknown"
      },
      {
        "code" : "373068000",
        "display" : "Undetermined (qualifier value)"
      }]
    }]
  }
}

```
