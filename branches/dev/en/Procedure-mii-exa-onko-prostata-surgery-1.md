# mii-exa-onko-prostata-surgery-1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-prostata-surgery-1**

## Example Procedure: mii-exa-onko-prostata-surgery-1

-------

**English**

-------

Profile: [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md) version: 2027.0.0-ballot.rc1

**MII EX Onko Operation Intention**: Kurativ

**status**: Completed

**category**: Surgical procedure

**code**: Radikale Prostatovesikulektomie

**subject**: [Peter ProstataCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-prostata-bundle-patient.md)

**performed**: 2024-06-24

**reasonReference**: [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-onko-prostata-diagnose.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-prostata-surgery-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K",
        "display" : "Kurativ"
      }]
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003",
      "display" : "Surgical procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2024",
      "code" : "5-604",
      "display" : "Radikale Prostatovesikulektomie"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
  },
  "performedDateTime" : "2024-06-24",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-prostata-diagnose"
  }]
}

```
