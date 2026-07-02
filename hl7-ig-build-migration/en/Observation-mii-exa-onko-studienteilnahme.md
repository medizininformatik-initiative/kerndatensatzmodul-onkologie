# mii-exa-onko-studienteilnahme - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Example Observation: mii-exa-onko-studienteilnahme

-------

**English**

-------

Profile: [MII PR Onkologie Studienteilnahme](StructureDefinition-mii-pr-onko-studienteilnahme.md) version: 2026.0.3

**status**: Final

**code**: Enrollment in clinical trial

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**focus**: [Condition/exampleOncologicCondition](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Condition/exampleOncologicCondition)

**effective**: 2024-01-02

**value**: Ja



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-studienteilnahme",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-studienteilnahme|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "709491003"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "focus" : [{
    "reference" : "Condition/exampleOncologicCondition"
  }],
  "effectiveDateTime" : "2024-01-02",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-studienteilnahme",
      "code" : "J",
      "display" : "Ja"
    }]
  }
}

```
