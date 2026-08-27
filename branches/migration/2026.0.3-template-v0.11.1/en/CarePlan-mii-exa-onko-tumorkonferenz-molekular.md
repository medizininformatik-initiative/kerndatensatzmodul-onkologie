# mii-exa-onko-tumorkonferenz-molekular - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-tumorkonferenz-molekular**

## Example CarePlan: mii-exa-onko-tumorkonferenz-molekular

-------

**English**

-------

Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md) version: 2026.0.3

**status**: Active

**intent**: Plan

**category**: Molekulares Tumorboard

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**created**: 2024-01-15

**addresses**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **Description** |
| * | Zielgerichtete Anti-HER2 Therapie | Not Started | Basierend auf HER2-Amplifikation: Trastuzumab + Pertuzumab Kombination empfohlen |


> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **Description** |
| * | Chemotherapie + CDK4/6 Inhibitor | Not Started | Alternative basierend auf HR+/HER2- Status: Palbociclib + Letrozol |


> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **Description** |
| * | Strahlentherapie | Not Started | Adjuvante Bestrahlung nach Operation |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-onko-tumorkonferenz-molekular",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz|2026.0.3"]
  },
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
    "reference" : "Patient/example"
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
          "code" : "ZS"
        }],
        "text" : "Zielgerichtete Anti-HER2 Therapie"
      },
      "status" : "not-started",
      "description" : "Basierend auf HER2-Amplifikation: Trastuzumab + Pertuzumab Kombination empfohlen"
    }
  },
  {
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "CZ"
        }],
        "text" : "Chemotherapie + CDK4/6 Inhibitor"
      },
      "status" : "not-started",
      "description" : "Alternative basierend auf HR+/HER2- Status: Palbociclib + Letrozol"
    }
  },
  {
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "ST"
        }],
        "text" : "Strahlentherapie"
      },
      "status" : "not-started",
      "description" : "Adjuvante Bestrahlung nach Operation"
    }
  }]
}

```
