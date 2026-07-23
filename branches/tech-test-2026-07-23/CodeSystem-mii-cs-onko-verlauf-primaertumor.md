# MII CS Onkologie Verlauf Primärtumor - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Verlauf Primärtumor**

## CodeSystem: MII CS Onkologie Verlauf Primärtumor 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_CS_Onko_Verlauf_Primaertumor |

 
oBDS-spezifisches Codesystem für die Beurteilung des Primärtumors im Behandlungsverlauf 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MII_VS_Onko_Verlauf_Primaertumor](ValueSet-mii-vs-onko-verlauf-primaertumor.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-verlauf-primaertumor",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Verlauf_Primaertumor",
  "title" : "MII CS Onkologie Verlauf Primärtumor",
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
  "description" : "oBDS-spezifisches Codesystem für die Beurteilung des Primärtumors im Behandlungsverlauf ",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "K",
    "display" : "kein Tumor nachweisbar"
  },
  {
    "code" : "T",
    "display" : "Tumorreste (Residualtumor)"
  },
  {
    "code" : "P",
    "display" : "Tumorreste (Residualtumor) Progress"
  },
  {
    "code" : "N",
    "display" : "Tumorreste (Residualtumor) No Change"
  },
  {
    "code" : "R",
    "display" : "Lokalrezidiv"
  },
  {
    "code" : "F",
    "display" : "fraglicher Befund"
  },
  {
    "code" : "U",
    "display" : "unbekannt"
  },
  {
    "code" : "X",
    "display" : "fehlende Angabe"
  }]
}

```
