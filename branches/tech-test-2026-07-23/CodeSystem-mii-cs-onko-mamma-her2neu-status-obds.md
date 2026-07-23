# MII CS Onkologie Mamma Her2neu Status oBDS - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Mamma Her2neu Status oBDS**

## CodeSystem: MII CS Onkologie Mamma Her2neu Status oBDS 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-obds | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_Onko_Mamma_Her2neu_Status_oBDS |

 
oBDS-spezifisches Codesystem für Her2neu Status gemäß oBDS Feld M4 (243) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_Onko_Mamma_Her2neu_Status_oBDS](ValueSet-mii-vs-onko-mamma-her2neu-status-obds.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-mamma-her2neu-status-obds",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-obds",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Mamma_Her2neu_Status_oBDS",
  "title" : "MII CS Onkologie Mamma Her2neu Status oBDS",
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
  "description" : "oBDS-spezifisches Codesystem für Her2neu Status gemäß oBDS Feld M4 (243)",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "P",
    "display" : "positiv",
    "definition" : "Positiv: IHC +++ (Score 3+) oder IHC ++ (Score 2+) und ISH (FISH, CISH o. Ä.) positiv"
  },
  {
    "code" : "N",
    "display" : "negativ",
    "definition" : "Negativ"
  },
  {
    "code" : "U",
    "display" : "unbekannt",
    "definition" : "Unbekannt"
  }]
}

```
