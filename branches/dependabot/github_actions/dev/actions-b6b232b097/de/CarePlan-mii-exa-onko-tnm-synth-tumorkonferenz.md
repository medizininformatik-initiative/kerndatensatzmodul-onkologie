# mii-exa-onko-tnm-synth-tumorkonferenz - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tnm-synth-tumorkonferenz**

## Beispiel CarePlan: mii-exa-onko-tnm-synth-tumorkonferenz

-------

**German**

-------

Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md) version: 2027.0.0-ballot.rc1

**identifier**: TK_synth_2024-04-02

**status**: Active

**intent**: Plan

**category**: postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)

**subject**: [Tobias TNMSynth Male, DoB: 1962-04-18](Patient-mii-exa-onko-tnm-synth-patient.md)

**created**: 2024-04-02

**addresses**: [Condition Bösartige Neubildung des Rektums](Condition-mii-exa-onko-tnm-synth-diagnose.md)

**supportingInfo**: [Observation Integrated TNM category](Observation-mii-exa-onko-tnm-synth-klassifikation.md)

> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Status** |
| * | Chemotherapie | Scheduled |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-onko-tnm-synth-tumorkonferenz",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz|2027.0.0-ballot.rc1"]
  },
  "identifier" : [{
    "value" : "TK_synth_2024-04-02"
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
    "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
  },
  "created" : "2024-04-02",
  "addresses" : [{
    "reference" : "Condition/mii-exa-onko-tnm-synth-diagnose"
  }],
  "supportingInfo" : [{
    "reference" : "Observation/mii-exa-onko-tnm-synth-klassifikation"
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
      "status" : "scheduled"
    }
  }]
}

```
