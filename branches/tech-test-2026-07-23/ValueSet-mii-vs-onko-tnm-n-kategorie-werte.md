# MII VS Onkologie TNM N Kategorie Werte - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie TNM N Kategorie Werte**

## ValueSet: MII VS Onkologie TNM N Kategorie Werte 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-n-kategorie-werte | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_TNM_N_Kategorie_Werte |

 
Das ValueSet enthält die TNM N-Kategorie Codes aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. 

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
  "id" : "mii-vs-onko-tnm-n-kategorie-werte",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-n-kategorie-werte",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_N_Kategorie_Werte",
  "title" : "MII VS Onkologie TNM N Kategorie Werte",
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
  "description" : "Das ValueSet enthält die TNM N-Kategorie Codes aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
  "compose" : {
    "include" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "concept" : [{
        "code" : "NX",
        "display" : "Nx"
      },
      {
        "code" : "N0",
        "display" : "N0"
      },
      {
        "code" : "N1",
        "display" : "N1"
      },
      {
        "code" : "N1mi",
        "display" : "N1(mi)"
      },
      {
        "code" : "N1a",
        "display" : "N1a"
      },
      {
        "code" : "N1b",
        "display" : "N1b"
      },
      {
        "code" : "N1c",
        "display" : "N1c"
      },
      {
        "code" : "N2",
        "display" : "N2"
      },
      {
        "code" : "N2a",
        "display" : "N2a"
      },
      {
        "code" : "N2b",
        "display" : "N2b"
      },
      {
        "code" : "N2c",
        "display" : "N2c"
      },
      {
        "code" : "N3",
        "display" : "N3"
      },
      {
        "code" : "N3a",
        "display" : "N3a"
      },
      {
        "code" : "N3b",
        "display" : "N3b"
      },
      {
        "code" : "N3c",
        "display" : "N3c"
      }]
    }]
  }
}

```
