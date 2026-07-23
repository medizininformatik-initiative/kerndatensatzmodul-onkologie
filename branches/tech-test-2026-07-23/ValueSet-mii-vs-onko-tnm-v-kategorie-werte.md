# MII VS Onkologie TNM V Kategorie Werte - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie TNM V Kategorie Werte**

## ValueSet: MII VS Onkologie TNM V Kategorie Werte 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-v-kategorie-werte | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_TNM_V_Kategorie_Werte |

 
Das ValueSet enthält die TNM Codes für die Beurteilung der Veneninvasion aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. 

 **References** 

* [MII PR Onkologie TNM V-Kategorie](StructureDefinition-mii-pr-onko-tnm-v-kategorie.md)

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
  "id" : "mii-vs-onko-tnm-v-kategorie-werte",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-v-kategorie-werte",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_V_Kategorie_Werte",
  "title" : "MII VS Onkologie TNM V Kategorie Werte",
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
  "description" : "Das ValueSet enthält die TNM Codes für die Beurteilung der Veneninvasion aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
  "compose" : {
    "include" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "concept" : [{
        "code" : "V0",
        "display" : "V0"
      },
      {
        "code" : "V1",
        "display" : "V1"
      },
      {
        "code" : "V2",
        "display" : "V2"
      },
      {
        "code" : "VX",
        "display" : "VX"
      }]
    }]
  }
}

```
