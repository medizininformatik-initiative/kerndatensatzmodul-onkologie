# MII CS Onkologie Therapieabweichung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Therapieabweichung**

## CodeSystem: MII CS Onkologie Therapieabweichung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieabweichung | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_Onko_Therapieabweichung |

 
oBDS-spezifisches Codesystem für die Therapieabweichung auf Wunsch des Patients. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_Onko_Therapieabweichung](ValueSet-mii-vs-onko-therapieabweichung.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-therapieabweichung",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieabweichung",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Therapieabweichung",
  "title" : "MII CS Onkologie Therapieabweichung",
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
  "description" : "oBDS-spezifisches Codesystem für die Therapieabweichung auf Wunsch des Patients.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "J",
    "display" : "ja"
  },
  {
    "code" : "N",
    "display" : "nein"
  },
  {
    "code" : "U",
    "display" : "unbekannt"
  }]
}

```
