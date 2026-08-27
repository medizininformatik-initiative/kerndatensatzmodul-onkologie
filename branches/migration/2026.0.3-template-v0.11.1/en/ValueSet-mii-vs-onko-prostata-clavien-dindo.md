# MII VS Onkologie Prostata Clavien Dindo - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Prostata Clavien Dindo**

## ValueSet: MII VS Onkologie Prostata Clavien Dindo (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-clavien-dindo | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_VS_Onko_Prostata_Clavien_Dindo |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Value Set für Gleason Score 

 **References** 

* [MII PR Onkologie Clavien Dindo](StructureDefinition-mii-pr-onko-prostate-clavien-dindo.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-prostata-clavien-dindo",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-clavien-dindo",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Prostata_Clavien_Dindo",
  "title" : "MII VS Onkologie Prostata Clavien Dindo",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-27T10:41:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für Gleason Score",
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
        "code" : "1367519000",
        "display" : "Clavien-Dindo classification grade I (finding)"
      },
      {
        "code" : "1367520006",
        "display" : "Clavien-Dindo classification grade II (finding)"
      },
      {
        "code" : "1367521005",
        "display" : "Clavien-Dindo classification grade III (finding)"
      },
      {
        "code" : "1367522003",
        "display" : "Clavien-Dindo classification grade IIIa (finding)"
      },
      {
        "code" : "1367523008",
        "display" : "Clavien-Dindo classification grade IIIb (finding)"
      },
      {
        "code" : "1367524002",
        "display" : "Clavien-Dindo classification grade IV (finding)"
      },
      {
        "code" : "1367525001",
        "display" : "Clavien-Dindo classification grade IVa (finding)"
      },
      {
        "code" : "1367526000",
        "display" : "Clavien-Dindo classification grade IVb (finding)"
      },
      {
        "code" : "1367527009",
        "display" : "Clavien-Dindo classification grade V (finding)"
      }]
    }]
  }
}

```
