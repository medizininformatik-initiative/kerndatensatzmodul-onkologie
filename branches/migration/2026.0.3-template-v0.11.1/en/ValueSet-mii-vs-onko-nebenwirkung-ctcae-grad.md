# MII VS Onkologie Nebenwirkung nach CTCAE Grad - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Nebenwirkung nach CTCAE Grad**

## ValueSet: MII VS Onkologie Nebenwirkung nach CTCAE Grad 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-nebenwirkung-ctcae-grad | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_VS_Onko_Nebenwirkung_CTCAE_Grad |

 
oBDS-spezifisches ValueSet für Nebenwirkung nach CTCAE-Grad 

 **References** 

* [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-nebenwirkung-ctcae-grad",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-nebenwirkung-ctcae-grad",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Nebenwirkung_CTCAE_Grad",
  "title" : "MII VS Onkologie Nebenwirkung nach CTCAE Grad",
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
  "description" : "oBDS-spezifisches ValueSet für Nebenwirkung nach CTCAE-Grad",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad"
    }]
  }
}

```
