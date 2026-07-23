# TNM N-Kategorie - pN1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TNM N-Kategorie - pN1**

## Example Observation: TNM N-Kategorie - pN1

Profile: [MII PR Onkologie TNM N-Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md) version: 2026.0.3

**status**: Final

**code**: pN category (observable entity)

**subject**: [Patient/example-modification](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example-modification)

**focus**: [Condition Bösartige Neubildung: Colon ascendens](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md)

**effective**: 2024-02-25

**value**: N1



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-ascending-colon-tnm-n",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "p"
        }]
      }
    }],
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "371494008",
      "display" : "pN category (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/example-modification"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-ascending-colon-cancer-diagnosis"
  }],
  "effectiveDateTime" : "2024-02-25",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "N1"
    }]
  }
}

```
