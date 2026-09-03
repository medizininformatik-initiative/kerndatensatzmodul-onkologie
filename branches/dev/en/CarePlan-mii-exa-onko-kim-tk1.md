# mii-exa-onko-kim-tk1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-kim-tk1**

## Example CarePlan: mii-exa-onko-kim-tk1

-------

**English**

-------

Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md) version: 2027.0.0-ballot.rc1

**identifier**: kim-tk-2021-06-25

**status**: Completed

**intent**: Plan

**category**: prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14](Patient-mii-exa-onko-kim-synth-patient.md)

**created**: 2021-06-25

**addresses**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-mii-exa-onko-kim-synth-diagnose.md)

**supportingInfo**: [Observation Integrated TNM category](Observation-mii-exa-onko-kim-synth1.md)

> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Status** |
| * | Chemotherapie | Completed |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-onko-kim-tk1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz|2027.0.0-ballot.rc1"]
  },
  "identifier" : [{
    "value" : "kim-tk-2021-06-25"
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
  "created" : "2021-06-25",
  "addresses" : [{
    "reference" : "Condition/mii-exa-onko-kim-synth-diagnose"
  }],
  "supportingInfo" : [{
    "reference" : "Observation/mii-exa-onko-kim-synth1"
  }],
  "activity" : [{
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "CH",
          "display" : "Chemotherapie"
        }]
      },
      "status" : "completed"
    }
  }]
}

```
