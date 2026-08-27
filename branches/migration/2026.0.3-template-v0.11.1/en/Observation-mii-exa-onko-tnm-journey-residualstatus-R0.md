# mii-exa-onko-tnm-journey-residualstatus-R0 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-tnm-journey-residualstatus-R0**

## Example Observation: mii-exa-onko-tnm-journey-residualstatus-R0

-------

**English**

-------

Profile: [MII PR Onkologie Residualstatus](StructureDefinition-mii-pr-onko-residualstatus.md)

**status**: Final

**code**: Residual tumor classification [Type] in Cancer specimen

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**effective**: 2024-06-15

**value**: Kein Residualtumor



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-journey-residualstatus-R0",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-residualstatus"]
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
  "effectiveDateTime" : "2024-06-15",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
      "code" : "R0"
    }]
  }
}

```
