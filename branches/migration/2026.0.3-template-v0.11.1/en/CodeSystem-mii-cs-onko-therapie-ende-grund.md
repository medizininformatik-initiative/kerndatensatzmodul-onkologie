# MII CS Onkologie Strahlentherapie Ende Grund - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Strahlentherapie Ende Grund**

## CodeSystem: MII CS Onkologie Strahlentherapie Ende Grund 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_CS_Onko_Therapie_Ende_Grund |

 
oBDS-spezifisches Codesystem für Klassifikation des Grundes der Beendigung der Strahlentherapie oder der systemischen Therapie 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Strahlentherapie Ende Grund](ValueSet-mii-vs-onko-strahlentherapie-ende-grund.md)
* [MII VS Onkologie Systemische Therapie Ende Grund](ValueSet-mii-vs-onko-systemische-therapie-ende-grund.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-therapie-ende-grund",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Therapie_Ende_Grund",
  "title" : "MII CS Onkologie Strahlentherapie Ende Grund",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T07:40:52+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für Klassifikation des Grundes der Beendigung der Strahlentherapie oder der systemischen Therapie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "E",
    "display" : "reguläres Ende"
  },
  {
    "code" : "R",
    "display" : "reguläres Ende mit Dosisreduktion"
  },
  {
    "code" : "W",
    "display" : "reguläres Ende mit Substanzwechsel"
  },
  {
    "code" : "A",
    "display" : "Abbruch wegen Nebenwirkungen"
  },
  {
    "code" : "P",
    "display" : "Abbruch wegen Progress"
  },
  {
    "code" : "S",
    "display" : "Abbruch aus sonstigen Gründen"
  },
  {
    "code" : "V",
    "display" : "Patient verweigert weitere Therapie"
  },
  {
    "code" : "T",
    "display" : "Patient verstorben"
  },
  {
    "code" : "F",
    "display" : "Zieldosis erreicht mit Unterbrechung > 3 Kalendertage"
  },
  {
    "code" : "U",
    "display" : "unbekannt"
  }]
}

```
