# PatientKimMusterperson-Tumorkonferenz-2 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Tumorkonferenz-2**

## Example CarePlan: PatientKimMusterperson-Tumorkonferenz-2

-------

**English**

-------

Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md)

**status**: Completed

**intent**: Plan

**category**: prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**created**: 2021-09-16

**addresses**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-PatientKimMusterperson-Diagnosis-1.md)

> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **StatusReason** |
| * | Operation | Completed | nein |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "PatientKimMusterperson-Tumorkonferenz-2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"]
  },
  "status" : "completed",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "praeth",
      "display" : "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "created" : "2021-09-16",
  "addresses" : [{
    "reference" : "Condition/PatientKimMusterperson-Diagnosis-1"
  }],
  "activity" : [{
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "OP"
        }]
      },
      "status" : "completed",
      "statusReason" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieabweichung",
          "code" : "N"
        }]
      }
    }
  }]
}

```
