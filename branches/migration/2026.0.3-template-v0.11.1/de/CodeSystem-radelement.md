# RSNA RadElement Common Data Elements (Fragment) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **RSNA RadElement Common Data Elements (Fragment)**

## CodeSystem: RSNA RadElement Common Data Elements (Fragment) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://radelement.org | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:RadElement |
| **Copyright/Rechtliches**: RadElement Common Data Elements © Radiological Society of North America (RSNA). | |

 
Fragment des RSNA-RadElement-Systems (Common Data Elements, https://www.radelement.org). Enthält nur die im MII-Modul Onkologie verwendeten Datenelemente. Quelle: RSNA RadElement API. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "radelement",
  "url" : "https://radelement.org",
  "version" : "2026.0.3",
  "name" : "RadElement",
  "title" : "RSNA RadElement Common Data Elements (Fragment)",
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
  "description" : "Fragment des RSNA-RadElement-Systems (Common Data Elements, https://www.radelement.org). Enthält nur die im MII-Modul Onkologie verwendeten Datenelemente. Quelle: RSNA RadElement API.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "RadElement Common Data Elements © Radiological Society of North America (RSNA).",
  "caseSensitive" : true,
  "content" : "fragment",
  "concept" : [{
    "code" : "RDE96",
    "display" : "Distance to MRF",
    "definition" : "Shortest distance of the definitive tumor border to the mesorectal fascia (MRF). Set RDES11 'MR Rectal Tumor Imaging', Integer 0–99 mm."
  }]
}

```
