# MII VS Onkologie Mamma Präoperative Markierung Modalität - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Mamma Präoperative Markierung Modalität**

## ValueSet: MII VS Onkologie Mamma Präoperative Markierung Modalität (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-praeoperative-markierung-modalitaet | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_VS_Onko_Mamma_Praeoperative_Markierung_Modalitaet |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Value Set für Imagingmodalität der präoperativen Markierung bei Mamma-Karzinom 

 **References** 

* [MII PR Onkologie Mamma Operation](StructureDefinition-mii-pr-onko-mamma-operation.md)
* [MII PR Onkologie Präoperative Markierung Mamma](StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-mamma-praeoperative-markierung-modalitaet",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-praeoperative-markierung-modalitaet",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Mamma_Praeoperative_Markierung_Modalitaet",
  "title" : "MII VS Onkologie Mamma Präoperative Markierung Modalität",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-27T12:06:00+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für Imagingmodalität der präoperativen Markierung bei Mamma-Karzinom",
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
        "code" : "1269000008",
        "display" : "Insertion of guide wire into breast using mammography guidance (procedure)"
      },
      {
        "code" : "433222002",
        "display" : "Insertion of guide wire into breast using ultrasound guidance (procedure)"
      },
      {
        "code" : "836381000000102",
        "display" : "Insertion of marker into breast using plain X-ray guidance (procedure)"
      },
      {
        "code" : "911831000000104",
        "display" : "Wire guided localization of lesion of breast using magnetic resonance imaging guidance (procedure)"
      }]
    }]
  }
}

```
