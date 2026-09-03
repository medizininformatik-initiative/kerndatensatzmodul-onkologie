# mii-exa-onko-cup-tnm-t-cTX - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-cup-tnm-t-cTX**

## Example Observation: mii-exa-onko-cup-tnm-t-cTX

-------

**English**

-------

Profile: [MII PR Onkologie TNM T-Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: cT category (observable entity)

**subject**: [CUP Musterfall Male, DoB: 1958-11-02](Patient-mii-exa-onko-cup-patient.md)

**focus**: [Condition Bösartige Neubildung, primäre Lokalisation unbekannt, so bezeichnet](Condition-mii-exa-onko-cup-diagnose.md)

**effective**: 2026-02-11

**value**: TX

**method**: 8. Auflage



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-cup-tnm-t-cTX",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie|2027.0.0-ballot.rc1"]
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
      "code" : "399504009",
      "display" : "cT category (observable entity)"
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
      "code" : "TX",
      "display" : "TX"
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
