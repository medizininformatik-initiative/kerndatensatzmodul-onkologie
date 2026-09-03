# mii-exa-onko-kim-klass3-ypT3c - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-kim-klass3-ypT3c**

## Example Observation: mii-exa-onko-kim-klass3-ypT3c

-------

**English**

-------

Profile: [MII PR Onkologie TNM T-Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md) version: 2027.0.0-ballot.rc1

**MII EX Onkologie TNM y-Präfix**: y

**status**: Final

**code**: pT category (observable entity)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14](Patient-mii-exa-onko-kim-synth-patient.md)

**effective**: 2021-10-15

**value**: T3c

**method**: 8. Auflage



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-kim-klass3-ypT3c",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie|2027.0.0-ballot.rc1"]
  },
  "modifierExtension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-y-praefix",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.uicc.org/resources/tnm",
        "code" : "y",
        "display" : "y"
      }]
    }
  }],
  "status" : "final",
  "code" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "p",
          "display" : "p"
        }]
      }
    }],
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "384625004",
      "display" : "pT category (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-kim-synth-patient"
  },
  "effectiveDateTime" : "2021-10-15",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "T3c",
      "display" : "T3c"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "1352556001",
      "display" : "Union for International Cancer Control pT3c (qualifier value)"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
      "code" : "8",
      "display" : "8. Auflage"
    }]
  }
}

```
