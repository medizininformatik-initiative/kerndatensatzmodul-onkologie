# MII VS Onkologie Systemische Therapie Protokolle - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Systemische Therapie Protokolle**

## ValueSet: MII VS Onkologie Systemische Therapie Protokolle 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-protokolle | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_VS_Onko_Systemische_Therapie_Protokolle |

 
oBDS-spezifisches ValueSet für Protokolle systemischer Therapien 

 **References** 

* [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md)
* [MII PR Onkologie Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-systemische-therapie-protokolle",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-protokolle",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Systemische_Therapie_Protokolle",
  "title" : "MII VS Onkologie Systemische Therapie Protokolle",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T10:41:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches ValueSet für Protokolle systemischer Therapien",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle"
    }]
  }
}

```
