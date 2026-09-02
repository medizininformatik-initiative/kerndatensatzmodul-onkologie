# mii-exa-onko-kim-klass1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-kim-klass1**

## Example Observation: mii-exa-onko-kim-klass1

-------

**English**

-------

Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md) version: 2026.0.3

**status**: Final

**code**: Clinical TNM stage grouping

**subject**: [Kim Musterperson Female, DoB: 1956-03-14](Patient-mii-exa-onko-kim-synth-patient.md)

**focus**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-mii-exa-onko-kim-synth-diagnose.md)

**effective**: 2021-06-22

**value**: Stadium IV

**method**: 8. Auflage

**hasMember**: 

* [Observation cT category (observable entity)](Observation-mii-exa-onko-kim-klass1-cT3c.md)
* [Observation cN category (observable entity)](Observation-mii-exa-onko-kim-klass1-cN1.md)
* [Observation cM category (observable entity)](Observation-mii-exa-onko-kim-klass1-cM1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-kim-klass1",
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
    "reference" : "Patient/mii-exa-onko-kim-synth-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-kim-synth-diagnose"
  }],
  "effectiveDateTime" : "2021-06-22",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "IV",
      "display" : "Stadium IV"
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
    "reference" : "Observation/mii-exa-onko-kim-klass1-cT3c"
  },
  {
    "reference" : "Observation/mii-exa-onko-kim-klass1-cN1"
  },
  {
    "reference" : "Observation/mii-exa-onko-kim-klass1-cM1"
  }]
}

```
