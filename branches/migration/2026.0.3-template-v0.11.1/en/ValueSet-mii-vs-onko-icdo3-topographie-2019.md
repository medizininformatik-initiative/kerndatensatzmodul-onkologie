# MII VS Onkologie ICD-O-3 Topographie 2019 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie ICD-O-3 Topographie 2019**

## ValueSet: MII VS Onkologie ICD-O-3 Topographie 2019 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-topographie-2019 | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_ICDO3_Topographie_2019 |

 
Codes für die Topographie einer neoplastischen Veränderung gemäß ICD-O-3 Zweite Revision (deutsche Ausgabe 2019). 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-icdo3-topographie-2019",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-topographie-2019",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_ICDO3_Topographie_2019",
  "title" : "MII VS Onkologie ICD-O-3 Topographie 2019",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:31:49+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Codes für die Topographie einer neoplastischen Veränderung gemäß ICD-O-3 Zweite Revision (deutsche Ausgabe 2019).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "version" : "2019",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "T"
      }]
    }]
  }
}

```
