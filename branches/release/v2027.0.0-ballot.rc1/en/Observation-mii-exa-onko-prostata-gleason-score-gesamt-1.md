# mii-exa-onko-prostata-gleason-score-gesamt-1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-prostata-gleason-score-gesamt-1**

## Example Observation: mii-exa-onko-prostata-gleason-score-gesamt-1

-------

**English**

-------

Profile: [MII PR Onkologie Prostata Gleason Score Gesamt](StructureDefinition-mii-pr-onko-prostate-gleason-score-gesamt.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Gleason score (observable entity)

**subject**: [Peter ProstataCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-prostata-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-onko-prostata-diagnose.md)

**effective**: 2024-01-02

**value**: Gleason grade score 5 out of 10 (finding)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-prostata-gleason-score-gesamt-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-score-gesamt|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "372278000",
      "display" : "Gleason score (observable entity)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "35266-6",
      "display" : "Gleason score in Specimen Qualitative"
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
      "code" : "74013009",
      "display" : "Gleason grade score 5 out of 10 (finding)"
    }]
  }
}

```
