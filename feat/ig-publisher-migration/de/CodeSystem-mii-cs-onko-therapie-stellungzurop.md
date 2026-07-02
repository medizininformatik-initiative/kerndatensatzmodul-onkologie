# MII CS Onkologie Therapie Stellung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie Therapie Stellung 

 
oBDS-spezifisches Codesystem für Klassifikation von Stellung zur OP 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII_VS_Onko_Strahlentherapie_StellungZurOp](ValueSet-mii-vs-onko-strahlentherapie-stellungzurop.md)
* [MII_VS_Onko_Systemische_Therapie_StellungZurOp](ValueSet-mii-vs-onko-systemische-therapie-stellungzurop.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-therapie-stellungzurop",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Therapie_StellungZurOp",
  "title" : "MII CS Onkologie Therapie Stellung",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-02T11:24:18+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für Klassifikation von Stellung zur OP",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "O",
    "display" : "ohne Bezug zur operativen Therapie"
  },
  {
    "code" : "A",
    "display" : "adjuvant"
  },
  {
    "code" : "N",
    "display" : "neoadjuvant"
  },
  {
    "code" : "I",
    "display" : "intraoperativ"
  },
  {
    "code" : "Z",
    "display" : "additiv"
  },
  {
    "code" : "S",
    "display" : "Sonstiges"
  }]
}

```
