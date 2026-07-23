# MII_VS_Onko_KRK_Abstand_Circumferelle_Resektionsrand - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII_VS_Onko_KRK_Abstand_Circumferelle_Resektionsrand**

## ValueSet: MII_VS_Onko_KRK_Abstand_Circumferelle_Resektionsrand (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-abstand-circumferelle-resektionsrand | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_KRK_Abstand_Circumferelle_Resektionsrand |

 
Value Set für semantische Kodierung des oBDS-Abstand des Tumorrandes zur circumferellen Resektionsrand im Kolorektalen Karzinom 

 **References** 

* [MII PR Onkologie Abstand Circumferelle Resektionsebene](StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene.md)

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
  "id" : "mii-vs-onko-krk-abstand-circumferelle-resektionsrand",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-abstand-circumferelle-resektionsrand",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_KRK_Abstand_Circumferelle_Resektionsrand",
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
  "description" : "Value Set für semantische Kodierung des oBDS-Abstand des Tumorrandes zur circumferellen Resektionsrand im Kolorektalen Karzinom",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "81176-0",
        "display" : "Distance of tumor from circumferential resection margin [Length] in Specimen by Macroscopy"
      },
      {
        "code" : "81184-4",
        "display" : "Distance of tumor from circumferential resection margin [Length] by Microscopy"
      }]
    }]
  }
}

```
