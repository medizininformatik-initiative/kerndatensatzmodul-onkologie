# mii-exa-onko-kim-tk2 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-kim-tk2**

## Example CarePlan: mii-exa-onko-kim-tk2

-------

**English**

-------

Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md) version: 2026.0.3

**identifier**: kim-tk-2021-09-16

**status**: Completed

**intent**: Plan

**category**: prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14](Patient-mii-exa-onko-kim-synth-patient.md)

**created**: 2021-09-16

**addresses**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-mii-exa-onko-kim-synth-diagnose.md)

**supportingInfo**: [Observation Integrated TNM category](Observation-mii-exa-onko-kim-synth2.md)

> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Status** |
| * | Operation | Completed |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-onko-kim-tk2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz|2026.0.3"]
  },
  "identifier" : [{
    "value" : "kim-tk-2021-09-16"
  }],
  "status" : "completed",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "praeth"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-onko-kim-synth-patient"
  },
  "created" : "2021-09-16",
  "addresses" : [{
    "reference" : "Condition/mii-exa-onko-kim-synth-diagnose"
  }],
  "supportingInfo" : [{
    "reference" : "Observation/mii-exa-onko-kim-synth2"
  }],
  "activity" : [{
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "OP"
        }]
      },
      "status" : "completed"
    }
  }]
}

```
