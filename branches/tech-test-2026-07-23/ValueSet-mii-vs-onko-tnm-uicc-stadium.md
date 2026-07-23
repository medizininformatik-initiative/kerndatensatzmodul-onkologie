# MII VS Onkologie TNM UICC Stadium - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie TNM UICC Stadium**

## ValueSet: MII VS Onkologie TNM UICC Stadium 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-uicc-stadium | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_TNM_UICC_Stadium |

 
The ValueSet enthält Codes für die TNM-Stadien zur prognostischen Gruppeneinteilung von Patienten. 

 **References** 

* [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md)

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
  "id" : "mii-vs-onko-tnm-uicc-stadium",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-uicc-stadium",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_UICC_Stadium",
  "title" : "MII VS Onkologie TNM UICC Stadium",
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
  "description" : "The ValueSet enthält Codes für die TNM-Stadien zur prognostischen Gruppeneinteilung von Patienten.",
  "compose" : {
    "include" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "concept" : [{
        "code" : "okk",
        "display" : "Stadium X"
      },
      {
        "code" : "0",
        "display" : "Stadium 0"
      },
      {
        "code" : "0a",
        "display" : "Stadium 0a"
      },
      {
        "code" : "0is",
        "display" : "Stadium 0is"
      },
      {
        "code" : "I",
        "display" : "Stadium I"
      },
      {
        "code" : "IA1",
        "display" : "Stadium IA1"
      },
      {
        "code" : "IA2",
        "display" : "Stadium IA2"
      },
      {
        "code" : "IA3",
        "display" : "Stadium IA3"
      },
      {
        "code" : "IB",
        "display" : "Stadium IB"
      },
      {
        "code" : "IB1",
        "display" : "Stadium IB1"
      },
      {
        "code" : "IB2",
        "display" : "Stadium IB2"
      },
      {
        "code" : "IC",
        "display" : "Stadium IC"
      },
      {
        "code" : "IS",
        "display" : "Stadium IS"
      },
      {
        "code" : "II",
        "display" : "Stadium II"
      },
      {
        "code" : "IIA",
        "display" : "Stadium IIA"
      },
      {
        "code" : "IIA1",
        "display" : "Stadium IIA1"
      },
      {
        "code" : "IIA2",
        "display" : "Stadium IIA2"
      },
      {
        "code" : "IIB",
        "display" : "Stadium IIB"
      },
      {
        "code" : "IIC",
        "display" : "Stadium IIC"
      },
      {
        "code" : "III",
        "display" : "Stadium III"
      },
      {
        "code" : "IIIA",
        "display" : "Stadium IIIA"
      },
      {
        "code" : "IIIA1",
        "display" : "Stadium IIIA1"
      },
      {
        "code" : "IIIA2",
        "display" : "Stadium IIIA2"
      },
      {
        "code" : "IIIB",
        "display" : "Stadium IIIB"
      },
      {
        "code" : "IIIC",
        "display" : "Stadium IIIC"
      },
      {
        "code" : "IIIC1",
        "display" : "Stadium IIIC1"
      },
      {
        "code" : "IIIC2",
        "display" : "Stadium IIIC2"
      },
      {
        "code" : "IV",
        "display" : "Stadium IV"
      },
      {
        "code" : "IVA",
        "display" : "Stadium IVA"
      },
      {
        "code" : "IVB",
        "display" : "Stadium IVB"
      },
      {
        "code" : "IVC",
        "display" : "Stadium IVC"
      }]
    }]
  }
}

```
