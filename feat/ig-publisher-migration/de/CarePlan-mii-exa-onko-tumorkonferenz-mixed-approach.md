# mii-exa-onko-tumorkonferenz-mixed-approach - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel CarePlan: mii-exa-onko-tumorkonferenz-mixed-approach

-------

**German**

-------

Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md) version: 2026.0.3

**identifier**: Tumorkonferenz_Mixed_001

**status**: Active

**intent**: Plan

**category**: Molekulares Tumorboard

**subject**: [Maria Müller Female, DoB: 1968-07-22 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#MTB-2024-001)](Patient-mii-exa-onko-molecular-board-patient.md)

**created**: 2024-01-15

**addresses**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Status** |
| * | Operation | Scheduled |


> **activity****progress**: 
> 

Molecular profiling shows HR+/HER2- status with PI3K pathway activation - CDK4/6 inhibitor combination recommended


**reference**: [RequestGroup Chemotherapie + zielgerichtete Substanzen](RequestGroup-mii-exa-onko-molecular-cdk46-protocol.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-onko-tumorkonferenz-mixed-approach",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz|2026.0.3"]
  },
  "identifier" : [{
    "value" : "Tumorkonferenz_Mixed_001"
  }],
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "praeth"
    }],
    "text" : "Molekulares Tumorboard"
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-onko-molecular-board-patient"
  },
  "created" : "2024-01-15",
  "addresses" : [{
    "reference" : "Condition/primaertumor-example"
  }],
  "activity" : [{
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "OP"
        }]
      },
      "status" : "scheduled"
    }
  },
  {
    "progress" : [{
      "text" : "Molecular profiling shows HR+/HER2- status with PI3K pathway activation - CDK4/6 inhibitor combination recommended"
    }],
    "reference" : {
      "reference" : "RequestGroup/mii-exa-onko-molecular-cdk46-protocol"
    }
  }]
}

```
