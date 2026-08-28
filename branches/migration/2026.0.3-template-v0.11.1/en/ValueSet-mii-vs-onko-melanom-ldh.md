# MII VS Onkologie Melanom LDH - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Melanom LDH**

## ValueSet: MII VS Onkologie Melanom LDH (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-melanom-ldh | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_Melanom_LDH |

 
Value Set für Laktatdehydrogenase (LDH) Laborwerte beim Malignen Melanom 

 **References** 

* [MII PR Onkologie Melanom LDH](StructureDefinition-mii-pr-onko-melanom-ldh.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-melanom-ldh",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-melanom-ldh",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Melanom_LDH",
  "title" : "MII VS Onkologie Melanom LDH",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-28T06:31:49+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für Laktatdehydrogenase (LDH) Laborwerte beim Malignen Melanom",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "2532-0",
        "display" : "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma"
      },
      {
        "code" : "14804-9",
        "display" : "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Lactate to pyruvate reaction"
      },
      {
        "code" : "14805-6",
        "display" : "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Pyruvate to lactate reaction"
      }]
    }]
  }
}

```
