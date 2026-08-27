# MII CS Onkologie Intention - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie Intention**

## CodeSystem: MII CS Onkologie Intention 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_CS_Onko_Intention |

 
oBDS-spezifisches Codesystem für Klassifikation von Intention der OP, der Strahlentherapie und der Systemischen Therapie. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie Operation Intention](ValueSet-mii-vs-onko-operation-intention.md)
* [MII VS Onkologie Strahlentherapie Intention](ValueSet-mii-vs-onko-strahlentherapie-intention.md)
* [MII VS Onkologie Systemische Therapie Intention](ValueSet-mii-vs-onko-systemische-therapie-intention.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-intention",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Intention",
  "title" : "MII CS Onkologie Intention",
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
  "description" : "oBDS-spezifisches Codesystem für Klassifikation von Intention der OP, der Strahlentherapie und der Systemischen Therapie.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "K",
    "display" : "kurativ"
  },
  {
    "code" : "P",
    "display" : "palliativ"
  },
  {
    "code" : "D",
    "display" : "diagnostisch"
  },
  {
    "code" : "R",
    "display" : "Revision/Komplikation"
  },
  {
    "code" : "S",
    "display" : "Sonstiges"
  },
  {
    "code" : "X",
    "display" : "fehlende Angabe"
  },
  {
    "code" : "O",
    "display" : "lokal kurativ bei Oligometastasierung"
  }]
}

```
