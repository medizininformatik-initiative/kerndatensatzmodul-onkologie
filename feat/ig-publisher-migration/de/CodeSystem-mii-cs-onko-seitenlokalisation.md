# MII CS Onkologie Primärtumor Seitenlokalisation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie Primärtumor Seitenlokalisation 

 
Codes für Seitenlokalisation, d.h. organspezifische Angabe der betroffenen Seite. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII_VS_Onko_Seitenlokalisation](ValueSet-mii-vs-onko-seitenlokalisation.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-07-02T11:24:18+00:00",
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
