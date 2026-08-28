# MII VS Onkologie TNM M Kategorie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie TNM M Kategorie**

## ValueSet: MII VS Onkologie TNM M Kategorie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-m-kategorie | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_TNM_M_Kategorie |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Codes für Codes zur Differenzierung der TNM M-Kategorie als entweder klinisch (cN) oder pathologisch (pN) 

 **References** 

* [MII PR Onkologie TNM M-Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-m-kategorie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-m-kategorie",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_M_Kategorie",
  "title" : "MII VS Onkologie TNM M Kategorie",
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
  "description" : "Codes für Codes zur Differenzierung der TNM M-Kategorie als entweder klinisch (cN) oder pathologisch (pN)",
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
        "code" : "277208005",
        "display" : "M category (observable entity)"
      },
      {
        "code" : "399387003",
        "display" : "cM category (observable entity)"
      },
      {
        "code" : "371497001",
        "display" : "pM category (observable entity)"
      }]
    }]
  }
}

```
