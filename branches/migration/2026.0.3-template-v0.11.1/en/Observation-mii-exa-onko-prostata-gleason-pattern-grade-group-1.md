# mii-exa-onko-prostata-gleason-pattern-grade-group-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-prostata-gleason-pattern-grade-group-1**

## Example Observation: mii-exa-onko-prostata-gleason-pattern-grade-group-1

-------

**English**

-------

Profile: [MII PR Onkologie Prostata Gleason Grade Group](StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.md) version: 2026.0.3

**status**: Final

**code**: Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)

**subject**: [Peter ProstataCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-prostata-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-onko-prostata-diagnose.md)

**effective**: 2024-01-02

**value**: International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)

**derivedFrom**: 

* [Observation Primary Gleason pattern (observable entity)](Observation-mii-exa-onko-prostata-gleason-pattern-primary-1.md)
* [Observation Secondary Gleason pattern (observable entity)](Observation-mii-exa-onko-prostata-gleason-pattern-secondary-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-prostata-gleason-pattern-grade-group-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-grade-group|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1812491000004107",
      "display" : "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "94734-1",
      "display" : "Prostate cancer grade group [Score] in Prostate tumor Qualitative"
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
      "code" : "1279714001",
      "display" : "International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)"
    }]
  },
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-onko-prostata-gleason-pattern-primary-1"
  },
  {
    "reference" : "Observation/mii-exa-onko-prostata-gleason-pattern-secondary-1"
  }]
}

```
