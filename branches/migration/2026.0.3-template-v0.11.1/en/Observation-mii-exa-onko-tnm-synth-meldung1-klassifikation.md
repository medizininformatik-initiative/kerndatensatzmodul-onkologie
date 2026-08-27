# mii-exa-onko-tnm-synth-meldung1-klassifikation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-tnm-synth-meldung1-klassifikation**

## Example Observation: mii-exa-onko-tnm-synth-meldung1-klassifikation

-------

**English**

-------

Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md) version: 2026.0.3

**status**: Final

**code**: Clinical TNM stage grouping

**subject**: [Tobias TNMSynth Male, DoB: 1962-04-18](Patient-mii-exa-onko-tnm-synth-patient.md)

**focus**: [Condition Bösartige Neubildung des Rektums](Condition-mii-exa-onko-tnm-synth-diagnose.md)

**effective**: 2024-01-11

**value**: Stadium IIIB

**method**: 8. Auflage

**hasMember**: 

* [Observation cT category (observable entity)](Observation-mii-exa-onko-tnm-synth-meldung1-t-cT3.md)
* [Observation cN category (observable entity)](Observation-mii-exa-onko-tnm-synth-meldung1-n-cN2.md)
* [Observation cM category (observable entity)](Observation-mii-exa-onko-tnm-synth-meldung1-m-cM0.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-synth-meldung1-klassifikation",
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
    "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-tnm-synth-diagnose"
  }],
  "effectiveDateTime" : "2024-01-11",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "IIIB",
      "display" : "Stadium IIIB"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
      "code" : "8",
      "display" : "8. Auflage"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-onko-tnm-synth-meldung1-t-cT3"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-synth-meldung1-n-cN2"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-synth-meldung1-m-cM0"
  }]
}

```
