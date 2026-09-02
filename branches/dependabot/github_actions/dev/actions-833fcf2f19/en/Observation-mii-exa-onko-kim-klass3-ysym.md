# mii-exa-onko-kim-klass3-ysym - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-kim-klass3-ysym**

## Example Observation: mii-exa-onko-kim-klass3-ysym

-------

**English**

-------

Profile: [MII PR Onkologie TNM y-Symbol](StructureDefinition-mii-pr-onko-tnm-y-symbol.md) version: 2026.0.3

**status**: Final

**code**: Cancer staging after multimodality therapy

**subject**: [Kim Musterperson Female, DoB: 1956-03-14](Patient-mii-exa-onko-kim-synth-patient.md)

**effective**: 2021-10-15

**value**: Tumor staging descriptor y (tumor staging)

**method**: 8. Auflage



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-kim-klass3-ysym",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-y-symbol|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "101658-3"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-kim-synth-patient"
  },
  "effectiveDateTime" : "2021-10-15",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "421755005",
      "display" : "Tumor staging descriptor y (tumor staging)"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
      "code" : "8",
      "display" : "8. Auflage"
    }]
  }
}

```
