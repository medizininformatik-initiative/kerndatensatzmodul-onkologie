# MII VS Onkologie TNM N Kategorie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie TNM N Kategorie**

## ValueSet: MII VS Onkologie TNM N Kategorie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-n-kategorie | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_TNM_N_Kategorie |

 
Codes für Codes zur Differenzierung der TNM N-Kategorie als entweder klinisch (cN) oder pathologisch (pN) 

 **References** 

* [MII PR Onkologie TNM N-Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md)

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
  "id" : "mii-vs-onko-tnm-n-kategorie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-n-kategorie",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_N_Kategorie",
  "title" : "MII VS Onkologie TNM N Kategorie",
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
  "description" : "Codes für Codes zur Differenzierung der TNM N-Kategorie als entweder klinisch (cN) oder pathologisch (pN)",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "277206009",
        "display" : "N category (observable entity)"
      },
      {
        "code" : "399534004",
        "display" : "cN category (observable entity)"
      },
      {
        "code" : "371494008",
        "display" : "pN category (observable entity)"
      }]
    }]
  }
}

```
