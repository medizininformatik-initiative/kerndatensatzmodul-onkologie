# MII_VS_Onko_Prostata_Gleason_Score - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII_VS_Onko_Prostata_Gleason_Score**

## ValueSet: MII_VS_Onko_Prostata_Gleason_Score (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-score | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_Prostata_Gleason_Score |

 
Value Set für Gleason Score 

 **References** 

* [MII PR Onkologie Prostata Gleason Grade Group](StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.md)

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
  "id" : "mii-vs-onko-prostata-gleason-score",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-score",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Prostata_Gleason_Score",
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
  "description" : "Value Set für Gleason Score",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "1279715000",
        "display" : "International Society of Urological Pathology grade group 1 (Gleason score 3 + 3 = 6) (qualifier value)"
      },
      {
        "code" : "1279714001",
        "display" : "International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)"
      },
      {
        "code" : "1279716004",
        "display" : "International Society of Urological Pathology grade group 3 (Gleason score 4 + 3 = 7) (qualifier value)"
      },
      {
        "code" : "1279718003",
        "display" : "International Society of Urological Pathology grade group 4 (Gleason score 3 + 5 = 8) (qualifier value)"
      },
      {
        "code" : "1279717008",
        "display" : "International Society of Urological Pathology grade group 4 (Gleason score 4 + 4 = 8) (qualifier value)"
      },
      {
        "code" : "1279719006",
        "display" : "International Society of Urological Pathology grade group 4 (Gleason score 5 + 3 = 8) (qualifier value)"
      },
      {
        "code" : "1279720000",
        "display" : "International Society of Urological Pathology grade group 5 (Gleason score 4 + 5 = 9) (qualifier value)"
      },
      {
        "code" : "1279721001",
        "display" : "International Society of Urological Pathology grade group 5 (Gleason score 5 + 4 = 9) (qualifier value)"
      },
      {
        "code" : "1279722008",
        "display" : "International Society of Urological Pathology grade group 5 (Gleason score 5 + 5 = 10) (qualifier value)"
      }]
    }]
  }
}

```
