# MII CS Onkologie Intention - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Intention**

## CodeSystem: MII CS Onkologie Intention 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_Onko_Intention |

 
oBDS-spezifisches Codesystem für Klassifikation von Intention der OP, der Strahlentherapie und der Systemischen Therapie. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_Onko_Operation_Intention](ValueSet-mii-vs-onko-operation-intention.md)
* [MII_VS_Onko_Strahlentherapie_Intention](ValueSet-mii-vs-onko-strahlentherapie-intention.md)
* [MII_VS_Onko_Systemische_Therapie_Intention](ValueSet-mii-vs-onko-systemische-therapie-intention.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-intention",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Intention",
  "title" : "MII CS Onkologie Intention",
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
  "description" : "oBDS-spezifisches Codesystem für Klassifikation von Intention der OP, der Strahlentherapie und der Systemischen Therapie.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "K",
    "display" : "kurativ"
  },
  {
    "code" : "P",
    "display" : "palliativ"
  },
  {
    "code" : "D",
    "display" : "diagnostisch"
  },
  {
    "code" : "R",
    "display" : "Revision/Komplikation"
  },
  {
    "code" : "S",
    "display" : "Sonstiges"
  },
  {
    "code" : "X",
    "display" : "fehlende Angabe"
  },
  {
    "code" : "O",
    "display" : "lokal kurativ bei Oligometastasierung"
  }]
}

```
