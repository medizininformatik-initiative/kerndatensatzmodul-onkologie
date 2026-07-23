# MII CS Onkologie Residualstatus - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Residualstatus**

## CodeSystem: MII CS Onkologie Residualstatus 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_Onko_Residualstatus |

 
oBDS-spezifisches Codesystem für R-Klassifikation 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_Onko_Beurteilung_Lokaler_Residualstatus](ValueSet-mii-vs-onko-beurteilung-lokaler-residualstatus.md)
* [MII_VS_Onko_Gesamtbeurteilung_Residualstatus](ValueSet-mii-vs-onko-gesamtbeurteilung-residualstatus.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-residualstatus",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Residualstatus",
  "title" : "MII CS Onkologie Residualstatus",
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
  "description" : "oBDS-spezifisches Codesystem für R-Klassifikation",
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-gesamtbeurteilung-residualstatus",
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "R0",
    "display" : "Kein Residualtumor"
  },
  {
    "code" : "R1",
    "display" : "Mikroskopischer Residualtumor"
  },
  {
    "code" : "R1(is)",
    "display" : "In-Situ-Rest"
  },
  {
    "code" : "R1(cy+)",
    "display" : "Cytologischer Rest"
  },
  {
    "code" : "R2",
    "display" : "Makroskopischer Residualtumor"
  },
  {
    "code" : "RX",
    "display" : "Vorhandensein von Residualtumor kann nicht beurteilt werden"
  },
  {
    "code" : "U",
    "display" : "Residualtumorstatus ist nicht bekannt"
  }]
}

```
