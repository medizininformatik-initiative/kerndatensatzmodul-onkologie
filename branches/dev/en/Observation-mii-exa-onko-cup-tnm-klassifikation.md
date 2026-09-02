# MII EXA Onkologie TNM Klassifikation CUP (cTX cNX cM1, ohne Stadium) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onkologie TNM Klassifikation CUP (cTX cNX cM1, ohne Stadium)**

## Example Observation: MII EXA Onkologie TNM Klassifikation CUP (cTX cNX cM1, ohne Stadium)

-------

**English**

-------

Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md) version: 2026.0.3

**status**: Final

**code**: Clinical TNM stage grouping

**subject**: [CUP Musterfall Male, DoB: 1958-11-02](Patient-mii-exa-onko-cup-patient.md)

**focus**: [Condition Bösartige Neubildung, primäre Lokalisation unbekannt, so bezeichnet](Condition-mii-exa-onko-cup-diagnose.md)

**effective**: 2026-02-11

**method**: 8. Auflage

**hasMember**: 

* [Observation cT category (observable entity)](Observation-mii-exa-onko-cup-tnm-t-cTX.md)
* [Observation cN category (observable entity)](Observation-mii-exa-onko-cup-tnm-n-cNX.md)
* [Observation cM category (observable entity)](Observation-mii-exa-onko-cup-tnm-m-cM1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-cup-tnm-klassifikation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "399537006",
      "display" : "Clinical TNM stage grouping"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-cup-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-cup-diagnose"
  }],
  "effectiveDateTime" : "2026-02-11",
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
      "code" : "8",
      "display" : "8. Auflage"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-onko-cup-tnm-t-cTX"
  },
  {
    "reference" : "Observation/mii-exa-onko-cup-tnm-n-cNX"
  },
  {
    "reference" : "Observation/mii-exa-onko-cup-tnm-m-cM1"
  }]
}

```
