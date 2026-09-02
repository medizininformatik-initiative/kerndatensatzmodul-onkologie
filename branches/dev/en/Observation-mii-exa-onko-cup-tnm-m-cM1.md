# mii-exa-onko-cup-tnm-m-cM1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-cup-tnm-m-cM1**

## Example Observation: mii-exa-onko-cup-tnm-m-cM1

-------

**English**

-------

Profile: [MII PR Onkologie TNM M-Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md) version: 2026.0.3

**status**: Final

**code**: cM category (observable entity)

**subject**: [CUP Musterfall Male, DoB: 1958-11-02](Patient-mii-exa-onko-cup-patient.md)

**focus**: [Condition Bösartige Neubildung, primäre Lokalisation unbekannt, so bezeichnet](Condition-mii-exa-onko-cup-diagnose.md)

**effective**: 2026-02-11

**value**: M1

**method**: 8. Auflage



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-cup-tnm-m-cM1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "c",
          "display" : "c"
        }]
      }
    }],
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "399387003",
      "display" : "cM category (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-cup-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-cup-diagnose"
  }],
  "effectiveDateTime" : "2026-02-11",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "M1",
      "display" : "M1"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "1352513006",
      "display" : "Union for International Cancer Control cM1 (qualifier value)"
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
