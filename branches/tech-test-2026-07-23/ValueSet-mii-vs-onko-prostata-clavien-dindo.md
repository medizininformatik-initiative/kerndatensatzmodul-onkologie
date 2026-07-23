# MII_VS_Onko_Prostata_Clavien_Dindo - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII_VS_Onko_Prostata_Clavien_Dindo**

## ValueSet: MII_VS_Onko_Prostata_Clavien_Dindo (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-clavien-dindo | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_Prostata_Clavien_Dindo |

 
Value Set für Gleason Score 

 **References** 

* [MII PR Onkologie Clavien Dindo](StructureDefinition-mii-pr-onko-prostate-clavien-dindo.md)

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
  "id" : "mii-vs-onko-prostata-clavien-dindo",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-clavien-dindo",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Prostata_Clavien_Dindo",
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
        "code" : "1367519000",
        "display" : "Clavien-Dindo classification grade I (finding)"
      },
      {
        "code" : "1367520006",
        "display" : "Clavien-Dindo classification grade II (finding)"
      },
      {
        "code" : "1367521005",
        "display" : "Clavien-Dindo classification grade III (finding)"
      },
      {
        "code" : "1367522003",
        "display" : "Clavien-Dindo classification grade IIIa (finding)"
      },
      {
        "code" : "1367523008",
        "display" : "Clavien-Dindo classification grade IIIb (finding)"
      },
      {
        "code" : "1367524002",
        "display" : "Clavien-Dindo classification grade IV (finding)"
      },
      {
        "code" : "1367525001",
        "display" : "Clavien-Dindo classification grade IVa (finding)"
      },
      {
        "code" : "1367526000",
        "display" : "Clavien-Dindo classification grade IVb (finding)"
      },
      {
        "code" : "1367527009",
        "display" : "Clavien-Dindo classification grade V (finding)"
      }]
    }]
  }
}

```
