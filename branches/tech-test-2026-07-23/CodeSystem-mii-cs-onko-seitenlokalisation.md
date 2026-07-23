# MII CS Onkologie Primärtumor Seitenlokalisation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Primärtumor Seitenlokalisation**

## CodeSystem: MII CS Onkologie Primärtumor Seitenlokalisation 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_Onko_Seitenlokalisation |

 
Codes für Seitenlokalisation, d.h. organspezifische Angabe der betroffenen Seite. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_Onko_Seitenlokalisation](ValueSet-mii-vs-onko-seitenlokalisation.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-seitenlokalisation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Seitenlokalisation",
  "title" : "MII CS Onkologie Primärtumor Seitenlokalisation",
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
  "description" : "Codes für Seitenlokalisation, d.h. organspezifische Angabe der betroffenen Seite.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "L",
    "display" : "links"
  },
  {
    "code" : "R",
    "display" : "rechts"
  },
  {
    "code" : "B",
    "display" : "beidseitig",
    "definition" : "(sollte bei Tumoren in paarigen Organen 2 Meldungen ergeben)"
  },
  {
    "code" : "M",
    "display" : "Mittellinie/mittig"
  },
  {
    "code" : "U",
    "display" : "unbekannt"
  },
  {
    "code" : "T",
    "display" : "trifft nicht zu",
    "definition" : "Seitenangabe nicht sinnvoll, einschließlich Systemerkrankungen"
  }]
}

```
