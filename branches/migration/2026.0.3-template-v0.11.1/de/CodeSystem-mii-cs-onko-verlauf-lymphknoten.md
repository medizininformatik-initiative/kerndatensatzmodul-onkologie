# MII CS Onkologie Verlauf Lymphknoten - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie Verlauf Lymphknoten**

## CodeSystem: MII CS Onkologie Verlauf Lymphknoten 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_CS_Onko_Verlauf_Lymphknoten |

 
oBDS-spezifisches Codesystem für die Beurteilung von Lymphknoten im Behandlungsverlauf 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie Verlauf Lymphknoten](ValueSet-mii-vs-onko-verlauf-lymphknoten.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-verlauf-lymphknoten",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Verlauf_Lymphknoten",
  "title" : "MII CS Onkologie Verlauf Lymphknoten",
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
  "description" : "oBDS-spezifisches Codesystem für die Beurteilung von Lymphknoten im Behandlungsverlauf ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "K",
    "display" : "kein Lymphknotenbefall nachweisbar"
  },
  {
    "code" : "R",
    "display" : "neu aufgetretenes Lymphknotenrezidiv"
  },
  {
    "code" : "T",
    "display" : "bekannter Lymphknotenbefall Residuen"
  },
  {
    "code" : "P",
    "display" : "bekannter Lymphknotenbefall Progress"
  },
  {
    "code" : "N",
    "display" : "bekannter Lymphknotenbefall No Change"
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
