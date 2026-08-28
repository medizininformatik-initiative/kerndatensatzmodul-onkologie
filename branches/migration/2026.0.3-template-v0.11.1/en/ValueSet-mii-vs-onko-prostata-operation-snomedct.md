# MII VS Onko Prostata Operation SNOMED CT - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onko Prostata Operation SNOMED CT**

## ValueSet: MII VS Onko Prostata Operation SNOMED CT 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-operation-snomedct | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_Prostata_Operation_SNOMEDCT |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 

| | |
| :--- | :--- |
| Value Set für Prostata-spezifische Operationen basierend auf SNOMED CT. Enthält alle Kinder von 118877007 | Procedure on prostate (procedure) |

 

 **References** 

* [MII PR Onko Prostata Operation](StructureDefinition-mii-pr-onko-prostata-operation.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-prostata-operation-snomedct",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-operation-snomedct",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Prostata_Operation_SNOMEDCT",
  "title" : "MII VS Onko Prostata Operation SNOMED CT",
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
  "description" : "Value Set für Prostata-spezifische Operationen basierend auf SNOMED CT. Enthält alle Kinder von 118877007 |Procedure on prostate (procedure)|",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "118877007"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "90199006",
        "display" : "Transurethral prostatectomy"
      }]
    }]
  }
}

```
