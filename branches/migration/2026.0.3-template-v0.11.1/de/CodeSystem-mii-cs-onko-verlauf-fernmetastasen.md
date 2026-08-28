# MII CS Onkologie Verlauf Fernmetastasen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie Verlauf Fernmetastasen**

## CodeSystem: MII CS Onkologie Verlauf Fernmetastasen 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_CS_Onko_Verlauf_Fernmetastasen |

 
oBDS-spezifisches Codesystem für die Beurteilung von Fernmetastasen im Behandlungsverlauf 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie Verlauf Fernmetastasen](ValueSet-mii-vs-onko-verlauf-fernmetastasen.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-verlauf-fernmetastasen",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Verlauf_Fernmetastasen",
  "title" : "MII CS Onkologie Verlauf Fernmetastasen",
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
  "description" : "oBDS-spezifisches Codesystem für die Beurteilung von Fernmetastasen im Behandlungsverlauf ",
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
    "display" : "keine Fernmetastasen nachweisbar"
  },
  {
    "code" : "R",
    "display" : "neu aufgetretene Fernmetastase(n) bzw. Metastasenrezidiv"
  },
  {
    "code" : "T",
    "display" : "Fernmetastasen Residuen"
  },
  {
    "code" : "P",
    "display" : "Fernmetastasen Progress"
  },
  {
    "code" : "N",
    "display" : "Fernmetastasen No Change"
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
