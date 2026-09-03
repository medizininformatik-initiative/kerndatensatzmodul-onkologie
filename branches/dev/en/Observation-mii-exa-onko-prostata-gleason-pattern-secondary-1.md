# mii-exa-onko-prostata-gleason-pattern-secondary-1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-prostata-gleason-pattern-secondary-1**

## Example Observation: mii-exa-onko-prostata-gleason-pattern-secondary-1

-------

**English**

-------

Profile: [MII PR Onkologie Prostata Gleason Pattern](StructureDefinition-mii-pr-onko-prostate-gleason-patterns.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Secondary Gleason pattern (observable entity)

**subject**: [Peter ProstataCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-prostata-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-onko-prostata-diagnose.md)

**effective**: 2024-01-02

**value**: Gleason Pattern 4



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-prostata-gleason-pattern-secondary-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "384995005",
      "display" : "Secondary Gleason pattern (observable entity)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "44642-7",
      "display" : "Gleason pattern.secondary in Prostate tumor"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-prostata-diagnose"
  }],
  "effectiveDateTime" : "2024-01-02",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "369773008",
      "display" : "Gleason Pattern 4"
    }]
  }
}

```
