# MII CS Onkologie Strahlentherapie Boost - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie Strahlentherapie Boost**

## CodeSystem: MII CS Onkologie Strahlentherapie Boost 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_CS_Onko_Strahlentherapie_Boost |

 
oBDS-spezifisches Codesystem für Klassifikation von Strahlentherapie-Boosts 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie Strahlentherapie Boost](ValueSet-mii-vs-onko-strahlentherapie-boost.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-strahlentherapie-boost",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Strahlentherapie_Boost",
  "title" : "MII CS Onkologie Strahlentherapie Boost",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T08:03:44+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für Klassifikation von Strahlentherapie-Boosts",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-boost",
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "J",
    "display" : "ja, mit Boost o. n. A."
  },
  {
    "code" : "SIB",
    "display" : "simultan integrierter Boost"
  },
  {
    "code" : "SEQ",
    "display" : "sequentieller Boost"
  },
  {
    "code" : "KON",
    "display" : "konkomitanter Boost"
  },
  {
    "code" : "N",
    "display" : "nein, ohne Boost"
  }]
}

```
