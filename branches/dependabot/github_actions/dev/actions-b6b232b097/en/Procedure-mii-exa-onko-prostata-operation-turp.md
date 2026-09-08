# Prostata Operation TURP Beispiel - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prostata Operation TURP Beispiel**

## Example Procedure: Prostata Operation TURP Beispiel

-------

**English**

-------

Profile: [MII PR Onko Prostata Operation](StructureDefinition-mii-pr-onko-prostata-operation.md) version: 2027.0.0-ballot.rc1

**MII EX Onko Operation Intention**: diagnostisch

**status**: Completed

**category**: Surgical procedure

**code**: Transurethrale Exzision und Destruktion von Prostatagewebe: Elektroresektion

**subject**: [Peter ProstataCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-prostata-bundle-patient.md)

**performed**: 2024-02-20

**reasonReference**: [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-onko-prostata-diagnose.md)

**outcome**: Mikroskopischer Residualtumor



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-prostata-operation-turp",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostata-operation|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "D",
        "display" : "diagnostisch"
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
      "code" : "5-601.0",
      "display" : "Transurethrale Exzision und Destruktion von Prostatagewebe: Elektroresektion"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "90199006",
      "display" : "Transurethral prostatectomy"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
  },
  "performedDateTime" : "2024-02-20",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-prostata-diagnose"
  }],
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
      "code" : "R1",
      "display" : "Mikroskopischer Residualtumor"
    }]
  }
}

```
