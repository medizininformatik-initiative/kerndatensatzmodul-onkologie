# MII_CS_Onko_Operation_Urgency - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII_CS_Onko_Operation_Urgency (Experimental) 

 
oBDS-basiertes Codesystem für die Modalität der Eingriffsdurchführung (Art des Eingriffs KR6) 

This Code system is referenced in the definition of the following value sets:

* [MII_VS_Onko_Operation_Urgency](ValueSet-mii-vs-onko-operation-urgency.md)

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
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-02T12:18:38+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-basiertes Codesystem für die Modalität der Eingriffsdurchführung (Art des Eingriffs KR6)",
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
