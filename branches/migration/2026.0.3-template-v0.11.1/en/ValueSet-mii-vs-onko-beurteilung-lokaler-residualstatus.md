# MII VS Onkologie Beurteilung des lokalen Residualstatus - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Beurteilung des lokalen Residualstatus**

## ValueSet: MII VS Onkologie Beurteilung des lokalen Residualstatus 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-beurteilung-lokaler-residualstatus | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_VS_Onko_Beurteilung_Lokaler_Residualstatus |

 
Value Set für oBDS-Codes für die Beurteilung des lokalen Residualstatus 

 **References** 

* [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-beurteilung-lokaler-residualstatus",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-beurteilung-lokaler-residualstatus",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Beurteilung_Lokaler_Residualstatus",
  "title" : "MII VS Onkologie Beurteilung des lokalen Residualstatus",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T11:29:36+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für oBDS-Codes für die Beurteilung des lokalen Residualstatus",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus"
    }]
  }
}

```
