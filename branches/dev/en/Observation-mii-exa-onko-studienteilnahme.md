# mii-exa-onko-studienteilnahme - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-studienteilnahme**

## Example Observation: mii-exa-onko-studienteilnahme

-------

**English**

-------

Profile: [MII PR Onkologie Studienteilnahme](StructureDefinition-mii-pr-onko-studienteilnahme.md) version: 2026.0.3

**status**: Final

**code**: Enrollment in clinical trial

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**focus**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

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
    "reference" : "Condition/primaertumor-example"
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
