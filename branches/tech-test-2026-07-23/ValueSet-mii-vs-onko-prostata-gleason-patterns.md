# MII VS Onkologie Prostata Gleason Patterns - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Prostata Gleason Patterns**

## ValueSet: MII VS Onkologie Prostata Gleason Patterns (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-patterns | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_Prostata_Gleason_Patterns |

 
Value Set für die histopathologische Bewertung von Prostata-Adenokarzinomen mittels Gleason-Patterns. Dieser Value Set wird verwendet, um die verschiedenen Gleason-Patterns zu kodieren, die bei der Beurteilung von Prostatakarzinomen auftreten können. 

 **References** 

* [MII PR Onkologie Prostata Gleason Primär](StructureDefinition-mii-pr-onko-prostate-gleason-patterns.md)

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
  "id" : "mii-vs-onko-prostata-gleason-patterns",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-patterns",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Prostata_Gleason_Patterns",
  "title" : "MII VS Onkologie Prostata Gleason Patterns",
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
  "description" : "Value Set für die histopathologische Bewertung von Prostata-Adenokarzinomen mittels Gleason-Patterns. Dieser Value Set wird verwendet, um die verschiedenen Gleason-Patterns zu kodieren, die bei der Beurteilung von Prostatakarzinomen auftreten können.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "369770006",
        "display" : "Gleason Pattern 1"
      },
      {
        "code" : "369771005",
        "display" : "Gleason Pattern 2"
      },
      {
        "code" : "369772003",
        "display" : "Gleason Pattern 3"
      },
      {
        "code" : "369773008",
        "display" : "Gleason Pattern 4"
      },
      {
        "code" : "369774002",
        "display" : "Gleason Pattern 5"
      }]
    }]
  }
}

```
