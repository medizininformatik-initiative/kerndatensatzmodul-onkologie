# Prostata Operation TURP Beispiel - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prostata Operation TURP Beispiel**

## Example Procedure: Prostata Operation TURP Beispiel

-------

**English**

-------

Profile: [MII PR Onko Prostata Operation](StructureDefinition-mii-pr-onko-prostata-operation.md) version: 2026.0.3

**MII EX Onko Operation Intention**: diagnostisch

**status**: Completed

**category**: Surgical procedure

**code**: Transurethrale Exzision und Destruktion von Prostatagewebe: Elektroresektion

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**performed**: 2024-02-20

**reasonReference**: [Condition/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Condition/example)

**outcome**: Mikroskopischer Residualtumor



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-prostata-operation-turp",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostata-operation|2026.0.3"]
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
    "reference" : "Patient/example"
  },
  "performedDateTime" : "2024-02-20",
  "reasonReference" : [{
    "reference" : "Condition/example"
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
