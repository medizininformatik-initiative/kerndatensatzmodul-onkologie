# MII VS Onkologie ICD-10-GM Meldepflichtige Tumoren - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie ICD-10-GM Meldepflichtige Tumoren**

## ValueSet: MII VS Onkologie ICD-10-GM Meldepflichtige Tumoren 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icd10-meldepflichtige-tumoren | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_ICD10_Meldepflichtige_Tumoren |

 
ICD-10-GM-Codes der nach KFRG/§65c krebsregister-meldepflichtigen Neubildungen: bösartige Neubildungen (C00-C97), In-situ-Neubildungen (D00-D09), gutartige Neubildungen der Meningen, des Gehirns/ZNS und intrakranieller endokriner Strukturen (D32, D33, D35.2-D35.4) sowie Neubildungen unsicheren oder unbekannten Verhaltens (D37-D48, einschließlich hämatologischer Entitäten D45-D47). 

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
  "id" : "mii-vs-onko-icd10-meldepflichtige-tumoren",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icd10-meldepflichtige-tumoren",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_ICD10_Meldepflichtige_Tumoren",
  "title" : "MII VS Onkologie ICD-10-GM Meldepflichtige Tumoren",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:12:02+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "ICD-10-GM-Codes der nach KFRG/§65c krebsregister-meldepflichtigen Neubildungen: bösartige Neubildungen (C00-C97), In-situ-Neubildungen (D00-D09), gutartige Neubildungen der Meningen, des Gehirns/ZNS und intrakranieller endokriner Strukturen (D32, D33, D35.2-D35.4) sowie Neubildungen unsicheren oder unbekannten Verhaltens (D37-D48, einschließlich hämatologischer Entitäten D45-D47).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "C00-C97"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "D00-D09"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "D32"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "D33"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "D35.2"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "D35.3"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "D35.4"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "D37-D48"
      }]
    }]
  }
}

```
