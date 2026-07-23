# MII Value Set Onkologie - Weitere Klassifikationen - Auspraegungen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Value Set Onkologie - Weitere Klassifikationen - Auspraegungen**

## ValueSet: MII Value Set Onkologie - Weitere Klassifikationen - Auspraegungen (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-weitere-klassifikationen-auspraegungen | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_Weitere_Klassifikationen_Auspraegungen |

 
Comprehensive collection of cancer staging systems and classification schemes used in oncology beyond TNM classification. This includes AJCC, FIGO, hematological classifications, and specialized organ-specific systems. Based on mCODE STU4 and German oBDS catalogue. Covers entity-specific classifications (e.g., FIGO for gynecological tumors), hematological classifications, and WHO classifications for CNS tumors. 

 **References** 

* [MII PR Onkologie Weitere Klassifikationen](StructureDefinition-mii-pr-onko-weitere-klassifikationen.md)

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
  "id" : "mii-vs-onko-weitere-klassifikationen-auspraegungen",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-weitere-klassifikationen-auspraegungen",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Weitere_Klassifikationen_Auspraegungen",
  "title" : "MII Value Set Onkologie - Weitere Klassifikationen - Auspraegungen",
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
  "description" : "Comprehensive collection of cancer staging systems and classification schemes used in oncology beyond TNM classification. This includes AJCC, FIGO, hematological classifications, and specialized organ-specific systems. Based on mCODE STU4 and German oBDS catalogue. Covers entity-specific classifications (e.g., FIGO for gynecological tumors), hematological classifications, and WHO classifications for CNS tumors.",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "binet"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "ann-arbor-stadium"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "iss"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "isswm"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "who-grad"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "formen"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "eln-klassifikation"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "durie-salmon-stadium"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "bismuth"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "masaoka"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "mitoserate-gist"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "p16"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "eutos-score"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "sanz-score"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "ipi"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "flipi"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "mipi"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "risikogruppen-ghsg"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "ipss"
      }]
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "her2-neu"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "1290294004",
        "display" : "International Federation of Gynecology and Obstetrics grading system (qualifier value)"
      },
      {
        "code" : "1290302009",
        "display" : "International Federation of Gynecology and Obstetrics grading system grade 1 (qualifier value)"
      },
      {
        "code" : "1290303004",
        "display" : "International Federation of Gynecology and Obstetrics grading system grade 2 (qualifier value)"
      },
      {
        "code" : "1290304005",
        "display" : "International Federation of Gynecology and Obstetrics grading system grade 3 (qualifier value)"
      }]
    }]
  }
}

```
