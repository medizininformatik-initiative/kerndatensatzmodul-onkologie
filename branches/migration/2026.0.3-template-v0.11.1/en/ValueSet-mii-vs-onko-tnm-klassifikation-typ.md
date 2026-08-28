# MII VS Onkologie TNM Klassifikation Typ - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie TNM Klassifikation Typ**

## ValueSet: MII VS Onkologie TNM Klassifikation Typ 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-klassifikation-typ | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_TNM_Klassifikation_Typ |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Codes für TNM-Klassifikation Typ. Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte. 

 **References** 

* [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-klassifikation-typ",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-klassifikation-typ",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_Klassifikation_Typ",
  "title" : "MII VS Onkologie TNM Klassifikation Typ",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T07:24:31+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Codes für TNM-Klassifikation Typ. Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte.",
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
      "concept" : [{
        "code" : "399390009",
        "display" : "TNM stage grouping"
      },
      {
        "code" : "399537006",
        "display" : "Clinical TNM stage grouping"
      },
      {
        "code" : "399588009",
        "display" : "Pathologic TNM stage grouping"
      },
      {
        "code" : "399703000",
        "display" : "Integrated TNM category"
      }]
    }]
  }
}

```
