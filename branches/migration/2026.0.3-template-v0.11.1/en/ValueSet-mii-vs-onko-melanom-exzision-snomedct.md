# MII VS Onko Melanom Exzision SNOMED CT - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onko Melanom Exzision SNOMED CT**

## ValueSet: MII VS Onko Melanom Exzision SNOMED CT 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-melanom-exzision-snomedct | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_Melanom_Exzision_SNOMEDCT |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Value Set für Melanom-spezifische Exzisionen basierend auf SNOMED CT. Enthält den Code für Melanom-Exzision. Weitere anatomische Details können über bodySite kodiert werden. 

 **References** 

* [MII PR Onko Melanom Exzision](StructureDefinition-mii-pr-onko-melanom-exzision.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-melanom-exzision-snomedct",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-melanom-exzision-snomedct",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Melanom_Exzision_SNOMEDCT",
  "title" : "MII VS Onko Melanom Exzision SNOMED CT",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:49:57+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für Melanom-spezifische Exzisionen basierend auf SNOMED CT. Enthält den Code für Melanom-Exzision. Weitere anatomische Details können über bodySite kodiert werden.",
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
        "code" : "177281002",
        "display" : "Excision of melanoma (procedure)"
      }]
    }]
  }
}

```
