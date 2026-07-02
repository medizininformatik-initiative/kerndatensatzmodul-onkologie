# MII CS Onkologie Strahlentherapie Boost - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie Strahlentherapie Boost 

 
oBDS-spezifisches Codesystem für Klassifikation von Strahlentherapie-Boosts 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII_VS_Onko_Strahlentherapie_Boosts](ValueSet-mii-vs-onko-strahlentherapie-boost.md)

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
  "date" : "2026-07-02T12:18:38+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für Klassifikation von Strahlentherapie-Boosts",
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
