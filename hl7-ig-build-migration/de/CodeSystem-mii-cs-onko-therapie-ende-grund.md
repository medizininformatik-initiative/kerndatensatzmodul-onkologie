# MII CS Onkologie Strahlentherapie Ende Grund - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie Strahlentherapie Ende Grund 

 
oBDS-spezifisches Codesystem für Klassifikation des Grundes der Beendigung der Strahlentherapie oder der systemischen Therapie 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII_VS_Onko_Strahlentherapie_Ende_Grund](ValueSet-mii-vs-onko-strahlentherapie-ende-grund.md)
* [MII_VS_Onko_Systemische_Therapie_Ende_Grund](ValueSet-mii-vs-onko-systemische-therapie-ende-grund.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-07-02T12:18:38+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für Klassifikation des Grundes der Beendigung der Strahlentherapie oder der systemischen Therapie",
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
