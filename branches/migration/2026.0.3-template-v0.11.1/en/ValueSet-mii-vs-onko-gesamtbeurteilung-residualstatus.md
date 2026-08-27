# MII VS Onkologie Gesamtbeurteilung des Residualstatus - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Gesamtbeurteilung des Residualstatus**

## ValueSet: MII VS Onkologie Gesamtbeurteilung des Residualstatus 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-gesamtbeurteilung-residualstatus | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_VS_Onko_Gesamtbeurteilung_Residualstatus |

 
Value Set für oBDS-Codes für die Gesamtbeurteilung des Residualstatus 

 **References** 

* [MII PR Onkologie Residualstatus](StructureDefinition-mii-pr-onko-residualstatus.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-gesamtbeurteilung-residualstatus",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-gesamtbeurteilung-residualstatus",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Gesamtbeurteilung_Residualstatus",
  "title" : "MII VS Onkologie Gesamtbeurteilung des Residualstatus",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T12:06:00+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für oBDS-Codes für die Gesamtbeurteilung des Residualstatus",
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
