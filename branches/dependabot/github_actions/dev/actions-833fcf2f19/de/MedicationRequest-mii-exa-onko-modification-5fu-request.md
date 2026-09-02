# MedicationRequest - Fluorouracil (vollständig verabreicht) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MedicationRequest - Fluorouracil (vollständig verabreicht)**

## Beispiel MedicationRequest: MedicationRequest - Fluorouracil (vollständig verabreicht)

-------

**German**

-------

Profile: [MII PR Onkologie Therapieempfehlung Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md) version: 2026.0.3

**status**: Completed

**intent**: Proposal

**medication**: 5-Fluorouracil (5-FU)

**subject**: [Martin Beispiel Male, DoB: 1958-11-03](Patient-example-modification.md)

**authoredOn**: 2024-03-05

**reasonReference**: [Condition Bösartige Neubildung: Colon ascendens](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md)

**note**: 

> 

Completed as planned for all 12 cycles




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-onko-modification-5fu-request",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation|2026.0.3"]
  },
  "status" : "completed",
  "intent" : "proposal",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "code" : "L01BC02",
      "display" : "Fluorouracil"
    }],
    "text" : "5-Fluorouracil (5-FU)"
  },
  "subject" : {
    "reference" : "Patient/example-modification"
  },
  "authoredOn" : "2024-03-05",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-ascending-colon-cancer-diagnosis"
  }],
  "note" : [{
    "text" : "Completed as planned for all 12 cycles"
  }]
}

```
