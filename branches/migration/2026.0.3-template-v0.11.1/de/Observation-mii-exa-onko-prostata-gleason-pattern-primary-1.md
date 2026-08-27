# mii-exa-onko-prostata-gleason-pattern-primary-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-prostata-gleason-pattern-primary-1**

## Beispiel Observation: mii-exa-onko-prostata-gleason-pattern-primary-1

-------

**German**

-------

Profile: [MII PR Onkologie Prostata Gleason Pattern](StructureDefinition-mii-pr-onko-prostate-gleason-patterns.md) version: 2026.0.3

**status**: Final

**code**: Primary Gleason pattern (observable entity)

**subject**: [Peter ProstataCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-prostata-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-onko-prostata-diagnose.md)

**effective**: 2024-01-02

**value**: Gleason Pattern 3



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-prostata-gleason-pattern-primary-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "384994009",
      "display" : "Primary Gleason pattern (observable entity)"
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
      "code" : "369772003",
      "display" : "Gleason Pattern 3"
    }]
  }
}

```
