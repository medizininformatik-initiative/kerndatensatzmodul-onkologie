# MII CS Onkologie Operation Urgency - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Operation Urgency**

## CodeSystem: MII CS Onkologie Operation Urgency (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-urgency | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_CS_Onko_Operation_Urgency |

 
oBDS-basiertes Codesystem für die Modalität der Eingriffsdurchführung (Art des Eingriffs KR6) 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Operation Urgency](ValueSet-mii-vs-onko-operation-urgency.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-operation-urgency",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-urgency",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Operation_Urgency",
  "title" : "MII CS Onkologie Operation Urgency",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-27T11:11:54+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-basiertes Codesystem für die Modalität der Eingriffsdurchführung (Art des Eingriffs KR6)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-urgency",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "E",
    "display" : "Elektiveingriff",
    "definition" : "Geplanter Eingriff mit ausreichender Vorbereitungszeit"
  },
  {
    "code" : "N",
    "display" : "Notfalleingriff",
    "definition" : "Ungeplanter Eingriff aufgrund einer akuten medizinischen Situation"
  },
  {
    "code" : "U",
    "display" : "Unbekannt",
    "definition" : "Die Modalität der Eingriffsdurchführung ist unbekannt"
  }]
}

```
