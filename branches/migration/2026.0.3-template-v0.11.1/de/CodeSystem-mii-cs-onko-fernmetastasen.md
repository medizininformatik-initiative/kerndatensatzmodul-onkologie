# MII CS Onkologie Fernmetastasen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie Fernmetastasen**

## CodeSystem: MII CS Onkologie Fernmetastasen 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-fernmetastasen | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_CS_Onko_Fernmetastasen |

 
oBDS-spezifisches Codesystem für Fernmetastasen, basierend auf Spezifikation durch TNM-Klassifikation 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie Fernmetastasen](ValueSet-mii-vs-onko-fernmetastasen.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-fernmetastasen",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-fernmetastasen",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Fernmetastasen",
  "title" : "MII CS Onkologie Fernmetastasen",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T11:11:54+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für Fernmetastasen, basierend auf Spezifikation durch TNM-Klassifikation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-fernmetastasen",
  "content" : "complete",
  "count" : 12,
  "concept" : [{
    "code" : "PUL",
    "display" : "Lunge"
  },
  {
    "code" : "OSS",
    "display" : "Knochen"
  },
  {
    "code" : "HEP",
    "display" : "Leber"
  },
  {
    "code" : "BRA",
    "display" : "Hirn",
    "definition" : "Gilt für das Hirn (C71). Meningeosis neoplastica / Befall der Hirnhäute (C70) ist NICHT hier, sondern unter #OTH zu kodieren (§65c)."
  },
  {
    "code" : "LYM",
    "display" : "Lymphknoten"
  },
  {
    "code" : "MAR",
    "display" : "Knochenmark"
  },
  {
    "code" : "PLE",
    "display" : "Pleura"
  },
  {
    "code" : "PER",
    "display" : "Peritoneum"
  },
  {
    "code" : "ADR",
    "display" : "Nebennieren"
  },
  {
    "code" : "SKI",
    "display" : "Haut"
  },
  {
    "code" : "OTH",
    "display" : "andere Organe"
  },
  {
    "code" : "GEN",
    "display" : "generalisierte Metastasierung"
  }]
}

```
