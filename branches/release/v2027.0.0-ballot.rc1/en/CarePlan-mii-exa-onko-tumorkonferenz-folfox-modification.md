# Tumorkonferenz - FOLFOX Empfehlung - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumorkonferenz - FOLFOX Empfehlung**

## Example CarePlan: Tumorkonferenz - FOLFOX Empfehlung

-------

**English**

-------

Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md) version: 2027.0.0-ballot.rc1

**identifier**: Tumorkonferenz_FOLFOX_Modification_001

**status**: Active

**intent**: Plan

**category**: prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)

**subject**: [Martin Beispiel Male, DoB: 1958-11-03](Patient-example-modification.md)

**created**: 2024-03-05

**addresses**: [Condition Bösartige Neubildung: Colon ascendens](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md)

### Activities

| | | |
| :--- | :--- | :--- |
| - | **Progress** | **Reference** |
| * | > Tumor board recommends FOLFOX4 chemotherapy protocol for stage III colon cancer, adjuvant setting | [RequestGroup Chemotherapie](RequestGroup-mii-exa-onko-folfox-requestgroup-modification.md) |



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-onko-tumorkonferenz-folfox-modification",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz|2027.0.0-ballot.rc1"]
  },
  "identifier" : [{
    "value" : "Tumorkonferenz_FOLFOX_Modification_001"
  }],
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "praeth",
      "display" : "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/example-modification"
  },
  "created" : "2024-03-05",
  "addresses" : [{
    "reference" : "Condition/mii-exa-onko-ascending-colon-cancer-diagnosis"
  }],
  "activity" : [{
    "progress" : [{
      "text" : "Tumor board recommends FOLFOX4 chemotherapy protocol for stage III colon cancer, adjuvant setting"
    }],
    "reference" : {
      "reference" : "RequestGroup/mii-exa-onko-folfox-requestgroup-modification"
    }
  }]
}

```
