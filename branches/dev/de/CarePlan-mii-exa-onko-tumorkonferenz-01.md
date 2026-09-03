# mii-exa-onko-tumorkonferenz-01 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tumorkonferenz-01**

## Beispiel CarePlan: mii-exa-onko-tumorkonferenz-01

-------

**German**

-------

Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md) version: 2027.0.0-ballot.rc1

**identifier**: Tumorkonferenz_1

**status**: Active

**intent**: Plan

**category**: postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**created**: 2024-01-11

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
  "id" : "mii-exa-onko-tumorkonferenz-01",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz|2027.0.0-ballot.rc1"]
  },
  "identifier" : [{
    "value" : "Tumorkonferenz_1"
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
    "reference" : "Patient/example"
  },
  "created" : "2024-01-11",
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
