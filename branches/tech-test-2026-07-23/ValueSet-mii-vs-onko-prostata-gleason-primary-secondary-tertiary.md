# MII_VS_Onko_Prostata_Gleason_PrimarySecondaryTertiary - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII_VS_Onko_Prostata_Gleason_PrimarySecondaryTertiary**

## ValueSet: MII_VS_Onko_Prostata_Gleason_PrimarySecondaryTertiary (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-primary-secondary-tertiary | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_Prostata_Gleason_PrimarySecondaryTertiary |

 
Value Set für Primär-, Sekundär- und Tertiär-Gleason Patterns in der Onkologie Prostata. Der häufigste Gleason Pattern wird als primär, der zweithäufigste als sekundär und (seltener, meistens bei Gleason Pattern 5) der dritthäufigste als tertiär bezeichnet. Diese Value Set wird verwendet, um die verschiedenen Gleason Patterns zu kodieren, die bei der Beurteilung von Prostatakarzinomen auftreten können. 

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
  "id" : "mii-vs-onko-prostata-gleason-primary-secondary-tertiary",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-primary-secondary-tertiary",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Prostata_Gleason_PrimarySecondaryTertiary",
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
  "description" : "Value Set für Primär-, Sekundär- und Tertiär-Gleason Patterns in der Onkologie Prostata. Der häufigste Gleason Pattern wird als primär, der zweithäufigste als sekundär und (seltener, meistens bei Gleason Pattern 5) der dritthäufigste als tertiär bezeichnet. Diese Value Set wird verwendet, um die verschiedenen Gleason Patterns zu kodieren, die bei der Beurteilung von Prostatakarzinomen auftreten können.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "384994009",
        "display" : "Primary Gleason pattern (observable entity)"
      },
      {
        "code" : "384995005",
        "display" : "Secondary Gleason pattern (observable entity)"
      },
      {
        "code" : "385002007",
        "display" : "Tertiary Gleason pattern (observable entity)"
      }]
    }]
  }
}

```
