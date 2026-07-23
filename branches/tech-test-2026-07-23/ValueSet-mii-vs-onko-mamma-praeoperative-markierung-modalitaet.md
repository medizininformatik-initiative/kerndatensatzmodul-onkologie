# MII_VS_Onko_Mamma_Praeoperative_Markierung_Modalitaet - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII_VS_Onko_Mamma_Praeoperative_Markierung_Modalitaet**

## ValueSet: MII_VS_Onko_Mamma_Praeoperative_Markierung_Modalitaet (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-praeoperative-markierung-modalitaet | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_Mamma_Praeoperative_Markierung_Modalitaet |

 
Value Set für Imagingmodalität der präoperativen Markierung bei Mamma-Karzinom 

 **References** 

* [MII PR Onkologie Mamma Operation](StructureDefinition-mii-pr-onko-mamma-operation.md)
* [MII PR Onkologie Präoperative Markierung Mamma](StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.md)

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
  "id" : "mii-vs-onko-mamma-praeoperative-markierung-modalitaet",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-praeoperative-markierung-modalitaet",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Mamma_Praeoperative_Markierung_Modalitaet",
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
  "description" : "Value Set für Imagingmodalität der präoperativen Markierung bei Mamma-Karzinom",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "1269000008",
        "display" : "Insertion of guide wire into breast using mammography guidance (procedure)"
      },
      {
        "code" : "433222002",
        "display" : "Insertion of guide wire into breast using ultrasound guidance (procedure)"
      },
      {
        "code" : "836381000000102",
        "display" : "Insertion of marker into breast using plain X-ray guidance (procedure)"
      },
      {
        "code" : "911831000000104",
        "display" : "Wire guided localization of lesion of breast using magnetic resonance imaging guidance (procedure)"
      }]
    }]
  }
}

```
