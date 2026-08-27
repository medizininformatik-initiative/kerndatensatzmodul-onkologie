# MII VS Onkologie Operation Urgency - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Operation Urgency**

## ValueSet: MII VS Onkologie Operation Urgency (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-urgency | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_VS_Onko_Operation_Urgency |

 
Value Set für semantische Kodierung der oBDS-Modalität der Eingriffsdurchführung (Art des Eingriffs KR6) 

 **References** 

* [MII EX Onko Operation Urgency](StructureDefinition-mii-ex-onko-operation-urgency.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-operation-urgency",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-urgency",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Operation_Urgency",
  "title" : "MII VS Onkologie Operation Urgency",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-27T15:31:43+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für semantische Kodierung der oBDS-Modalität der Eingriffsdurchführung (Art des Eingriffs KR6)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-urgency"
    }]
  }
}

```
