# Prostata Operation Prostatektomie Beispiel - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prostata Operation Prostatektomie Beispiel**

## Example Procedure: Prostata Operation Prostatektomie Beispiel

-------

**English**

-------

Profile: [MII PR Onko Prostata Operation](StructureDefinition-mii-pr-onko-prostata-operation.md) version: 2026.0.3

**MII EX Onko Operation Intention**: kurativ

**status**: Completed

**category**: Surgical procedure

**code**: Radikale Prostatovesikulektomie: Retropubisch: Mit regionaler Lymphadenektomie

**subject**: [Peter ProstataCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-prostata-bundle-patient.md)

**performed**: 2024-03-15

**reasonReference**: [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-onko-prostata-diagnose.md)

**outcome**: Kein Residualtumor



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-prostata-operation-prostatektomie",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostata-operation|2026.0.3"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K",
        "display" : "kurativ"
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
      "code" : "5-604.02",
      "display" : "Radikale Prostatovesikulektomie: Retropubisch: Mit regionaler Lymphadenektomie"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "26294005",
      "display" : "Radical prostatectomy (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
  },
  "performedDateTime" : "2024-03-15",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-prostata-diagnose"
  }],
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
      "code" : "R0",
      "display" : "Kein Residualtumor"
    }]
  }
}

```
