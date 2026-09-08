# mii-exa-onko-kim-tk4 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-kim-tk4**

## Beispiel CarePlan: mii-exa-onko-kim-tk4

-------

**German**

-------

Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md) version: 2027.0.0-ballot.rc1

**identifier**: kim-tk-2022-01-15

**replaces**: [CarePlan: identifier = kim-tk-2021-10-25; status = completed; intent = plan; category = postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie); created = 2021-10-25](CarePlan-mii-exa-onko-kim-tk3.md)

**status**: Active

**intent**: Plan

**category**: postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14](Patient-mii-exa-onko-kim-synth-patient.md)

**created**: 2022-01-15

**addresses**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-mii-exa-onko-kim-synth-diagnose.md)

**supportingInfo**: [Observation Integrated TNM category](Observation-mii-exa-onko-kim-synth4.md)

> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Status** |
| * | Chemotherapie | In Progress |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-onko-kim-tk4",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz|2027.0.0-ballot.rc1"]
  },
  "identifier" : [{
    "value" : "kim-tk-2022-01-15"
  }],
  "replaces" : [{
    "reference" : "CarePlan/mii-exa-onko-kim-tk3"
  }],
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "postop"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-onko-kim-synth-patient"
  },
  "created" : "2022-01-15",
  "addresses" : [{
    "reference" : "Condition/mii-exa-onko-kim-synth-diagnose"
  }],
  "supportingInfo" : [{
    "reference" : "Observation/mii-exa-onko-kim-synth4"
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
      "status" : "in-progress"
    }
  }]
}

```
