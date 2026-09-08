# PatientKimMusterperson-Tumorkonferenz-3 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Tumorkonferenz-3**

## Beispiel CarePlan: PatientKimMusterperson-Tumorkonferenz-3

-------

**German**

-------

Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md)

**replaces**: [CarePlan: status = completed; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2021-09-16](CarePlan-PatientKimMusterperson-Tumorkonferenz-2.md)

**status**: Completed

**intent**: Plan

**category**: postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**created**: 2021-10-25

**addresses**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md)

> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **StatusReason** |
| * | Chemotherapie | Completed | nein |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "PatientKimMusterperson-Tumorkonferenz-3",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"]
  },
  "replaces" : [{
    "reference" : "CarePlan/PatientKimMusterperson-Tumorkonferenz-2"
  }],
  "status" : "completed",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "postop",
      "display" : "postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "created" : "2021-10-25",
  "addresses" : [{
    "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
  }],
  "activity" : [{
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "CH"
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
