# MII CS Onkologie Primärtumor Seitenlokalisation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie Primärtumor Seitenlokalisation**

## CodeSystem: MII CS Onkologie Primärtumor Seitenlokalisation 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_CS_Onko_Seitenlokalisation |

 
Codes für Seitenlokalisation, d.h. organspezifische Angabe der betroffenen Seite. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie Primärtumor Seitenlokalisation](ValueSet-mii-vs-onko-seitenlokalisation.md)

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
  "date" : "2026-08-28T06:49:57+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Codes für Seitenlokalisation, d.h. organspezifische Angabe der betroffenen Seite.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
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
    "definition" : "Bei paarigen Organen i.d.R. als 2 getrennte Tumoren; ABER Ovar (C56), Tube (C57.0) und Adnexe (C57.4) gelten beidseitig als EINE Tumorerkrankung (Best-of, §65c), Ausnahmen: seröses Ovarialkarzinom/Wilms/Retinoblastom."
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
