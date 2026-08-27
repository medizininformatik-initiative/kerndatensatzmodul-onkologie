# Mapping oBDS Karnofsky zu LOINC - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mapping oBDS Karnofsky zu LOINC**

## ConceptMap: Mapping oBDS Karnofsky zu LOINC 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*: |

 
Mapping der oBDS-Codes für Karnofsky Performance Status zu LOINC Answer List LL4986-7 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc",
  "version" : "2026.0.3",
  "title" : "Mapping oBDS Karnofsky zu LOINC",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T12:06:00+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping der oBDS-Codes für Karnofsky Performance Status zu LOINC Answer List LL4986-7",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "sourceCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky",
  "targetCanonical" : "http://loinc.org/vs/LL4986-7",
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-karnofsky",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "100%",
      "display" : "100%",
      "target" : [{
        "code" : "LA29175-9",
        "display" : "Normal; no complaints; no evidence of disease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "90%",
      "display" : "90%",
      "target" : [{
        "code" : "LA29176-7",
        "display" : "Able to carry on normal activity; minor signs or symptoms of disease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "80%",
      "display" : "80%",
      "target" : [{
        "code" : "LA29177-5",
        "display" : "Normal activity with effort; some signs or symptoms of disease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "70%",
      "display" : "70%",
      "target" : [{
        "code" : "LA29178-3",
        "display" : "Cares for self; unable to carry on normal activity or do active work",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "60%",
      "display" : "60%",
      "target" : [{
        "code" : "LA29179-1",
        "display" : "Requires occasional assistance but is able to care for most needs",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "50%",
      "display" : "50%",
      "target" : [{
        "code" : "LA29180-9",
        "display" : "Requires considerable assistance and frequent medical care",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "40%",
      "display" : "40%",
      "target" : [{
        "code" : "LA29181-7",
        "display" : "Disabled; requires special care and assistance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "30%",
      "display" : "30%",
      "target" : [{
        "code" : "LA29182-5",
        "display" : "Severely disabled; hospitalization is indicated, although death not imminent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "20%",
      "display" : "20%",
      "target" : [{
        "code" : "LA29183-3",
        "display" : "Very sick; hospitalization necessary; active supportive treatment necessary",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10%",
      "display" : "10%",
      "target" : [{
        "code" : "LA29184-1",
        "display" : "Moribund; fatal processes progressing rapidly",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "0%",
      "display" : "0%",
      "target" : [{
        "code" : "LA9627-6",
        "display" : "Dead",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
