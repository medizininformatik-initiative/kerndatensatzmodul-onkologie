# MII VS Onkologie Systemische Therapie Art - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Systemische Therapie Art**

## ValueSet: MII VS Onkologie Systemische Therapie Art 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-art | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_VS_Onko_Systemische_Therapie_Art |

 
oBDS-spezifisches ValueSet für Klassifikation der Art der systemischen oder abwartenden Therapie 

 **References** 

* [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md)

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
  "id" : "mii-vs-onko-systemische-therapie-art",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-art",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Systemische_Therapie_Art",
  "title" : "MII VS Onkologie Systemische Therapie Art",
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
  "description" : "oBDS-spezifisches ValueSet für Klassifikation der Art der systemischen oder abwartenden Therapie",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "concept" : [{
        "code" : "CH",
        "display" : "Chemotherapie"
      },
      {
        "code" : "HO",
        "display" : "Hormontherapie"
      },
      {
        "code" : "IM",
        "display" : "Immun-/Antikörpertherapie"
      },
      {
        "code" : "ZS",
        "display" : "zielgerichtete Substanzen"
      },
      {
        "code" : "SZ",
        "display" : "Stammzelltransplantation (inklusive Knochenmarktransplantation)"
      },
      {
        "code" : "CI",
        "display" : "Chemo- + Immun-/Antikörpertherapie"
      },
      {
        "code" : "CZ",
        "display" : "Chemotherapie + zielgerichtete Substanzen"
      },
      {
        "code" : "CIZ",
        "display" : "Chemo- + Immun-/Antikörpertherapie + zielgerichtete Substanzen"
      },
      {
        "code" : "IZ",
        "display" : "Immun-/Antikörpertherapie + zielgerichtete Substanzen"
      },
      {
        "code" : "WW",
        "display" : "Watchful Waiting"
      },
      {
        "code" : "AS",
        "display" : "Active Surveillance"
      },
      {
        "code" : "WS",
        "display" : "Wait and see"
      },
      {
        "code" : "SO",
        "display" : "Sonstiges"
      }]
    }]
  }
}

```
