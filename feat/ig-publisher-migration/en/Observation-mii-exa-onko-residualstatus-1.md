# mii-exa-onko-residualstatus-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Example Observation: mii-exa-onko-residualstatus-1

-------

**English**

-------

Profile: [MII PR Onkologie Residualstatus](StructureDefinition-mii-pr-onko-residualstatus.md) version: 2026.0.3

**status**: Final

**code**: Residual tumor classification [Type] in Cancer specimen

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**effective**: 2024-02-08

**value**: Kein Residualtumor



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-residualstatus-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-residualstatus|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "84892-9"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-02-08",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
      "code" : "R0"
    }]
  }
}

```
