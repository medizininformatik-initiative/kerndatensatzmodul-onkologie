# MII VS Onkologie KRK Stoma Anzeichnung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie KRK Stoma Anzeichnung**

## ValueSet: MII VS Onkologie KRK Stoma Anzeichnung (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-stoma-anzeichnung | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_KRK_Stoma_Anzeichnung |

 
Value Set für semantische Kodierung der oBDS-präoperativen Stoma-Anzeichnung beim Rektumkarzinom 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-krk-stoma-anzeichnung",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-stoma-anzeichnung",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_KRK_Stoma_Anzeichnung",
  "title" : "MII VS Onkologie KRK Stoma Anzeichnung",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-28T06:12:02+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für semantische Kodierung der oBDS-präoperativen Stoma-Anzeichnung beim Rektumkarzinom",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-stoma-anzeichnung"
    }]
  }
}

```
