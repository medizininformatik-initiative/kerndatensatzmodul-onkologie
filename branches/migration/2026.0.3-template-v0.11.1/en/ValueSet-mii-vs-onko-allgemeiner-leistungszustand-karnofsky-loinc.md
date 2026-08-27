# MII VS Onkologie Allgemeiner Leistungszustand Karnofsky LOINC - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Allgemeiner Leistungszustand Karnofsky LOINC**

## ValueSet: MII VS Onkologie Allgemeiner Leistungszustand Karnofsky LOINC 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky-loinc | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_VS_Onko_Allgemeiner_Leistungszustand_Karnofsky_LOINC |

 
LOINC-Answer-Codes für den Karnofsky Performance Status. Enumerierte Fassung der LOINC-Answer-List LL4986-7. 

 **References** 

* [MII PR Onkologie Allgemeiner Leistungszustand nach Karnofsky](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-allgemeiner-leistungszustand-karnofsky-loinc",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky-loinc",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Allgemeiner_Leistungszustand_Karnofsky_LOINC",
  "title" : "MII VS Onkologie Allgemeiner Leistungszustand Karnofsky LOINC",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T10:41:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "LOINC-Answer-Codes für den Karnofsky Performance Status. Enumerierte Fassung der LOINC-Answer-List LL4986-7.",
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
        "code" : "LA29175-9",
        "display" : "Normal; no complaints; no evidence of disease"
      },
      {
        "code" : "LA29176-7",
        "display" : "Able to carry on normal activity; minor signs or symptoms of disease"
      },
      {
        "code" : "LA29177-5",
        "display" : "Normal activity with effort; some signs or symptoms of disease"
      },
      {
        "code" : "LA29178-3",
        "display" : "Cares for self; unable to carry on normal activity or do active work"
      },
      {
        "code" : "LA29179-1",
        "display" : "Requires occasional assistance but is able to care for most needs"
      },
      {
        "code" : "LA29180-9",
        "display" : "Requires considerable assistance and frequent medical care"
      },
      {
        "code" : "LA29181-7",
        "display" : "Disabled; requires special care and assistance"
      },
      {
        "code" : "LA29182-5",
        "display" : "Severely disabled; hospitalization is indicated, although death not imminent"
      },
      {
        "code" : "LA29183-3",
        "display" : "Very sick; hospitalization necessary; active supportive treatment necessary"
      },
      {
        "code" : "LA29184-1",
        "display" : "Moribund; fatal processes progressing rapidly"
      },
      {
        "code" : "LA9627-6",
        "display" : "Dead"
      }]
    }]
  }
}

```
