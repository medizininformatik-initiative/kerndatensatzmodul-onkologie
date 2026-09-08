# PatientKimMusterperson-Tumorkonferenz-4 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Tumorkonferenz-4**

## Beispiel CarePlan: PatientKimMusterperson-Tumorkonferenz-4

-------

**German**

-------

Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md)

**replaces**: [CarePlan: status = completed; intent = plan; category = postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie); created = 2021-10-25](CarePlan-PatientKimMusterperson-Tumorkonferenz-3.md)

**status**: Active

**intent**: Plan

**category**: postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)

**description**: Erhaltungstherapie mit Niraparib bei BRCAwt

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**created**: 2022-01-20

**addresses**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md)

> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **StatusReason** |
| * | zielgerichtete Substanzen | In Progress | unbekannt |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "PatientKimMusterperson-Tumorkonferenz-4",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"]
  },
  "replaces" : [{
    "reference" : "CarePlan/PatientKimMusterperson-Tumorkonferenz-3"
  }],
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "postop",
      "display" : "postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)"
    }]
  }],
  "description" : "Erhaltungstherapie mit Niraparib bei BRCAwt",
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "created" : "2022-01-20",
  "addresses" : [{
    "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
  }],
  "activity" : [{
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "ZS"
        }]
      },
      "status" : "in-progress",
      "statusReason" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieabweichung",
          "code" : "U",
          "display" : "unbekannt"
        }]
      }
    }
  }]
}

```
