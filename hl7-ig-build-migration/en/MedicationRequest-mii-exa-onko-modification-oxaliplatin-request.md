# MedicationRequest - Oxaliplatin (abgebrochen wegen Neuropathie) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Example MedicationRequest: MedicationRequest - Oxaliplatin (abgebrochen wegen Neuropathie)

-------

**English**

-------

Profile: [MII PR Onkologie Therapieempfehlung Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md) version: 2026.0.3

**status**: Stopped

**statusReason**: Oxaliplatin discontinued after cycle 6 due to grade 3 peripheral neuropathy (CTCAE). Patient continued with 5-FU + Leucovorin only for remaining 6 cycles.

**intent**: Proposal

**medication**: Oxaliplatin

**subject**: [Patient/example-modification](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example-modification)

**authoredOn**: 2024-03-05

**reasonReference**: [Condition Bösartige Neubildung: Colon ascendens](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md)

**note**: 

> 

Administered for cycles 1-6 only. Stopped due to cumulative neurotoxicity.




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-onko-modification-oxaliplatin-request",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation|2026.0.3"]
  },
  "status" : "stopped",
  "statusReason" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "281647001",
      "display" : "Adverse reaction (disorder)"
    }],
    "text" : "Oxaliplatin discontinued after cycle 6 due to grade 3 peripheral neuropathy (CTCAE). Patient continued with 5-FU + Leucovorin only for remaining 6 cycles."
  },
  "intent" : "proposal",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "code" : "L01XA03",
      "display" : "Oxaliplatin"
    }],
    "text" : "Oxaliplatin"
  },
  "subject" : {
    "reference" : "Patient/example-modification"
  },
  "authoredOn" : "2024-03-05",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-ascending-colon-cancer-diagnosis"
  }],
  "note" : [{
    "text" : "Administered for cycles 1-6 only. Stopped due to cumulative neurotoxicity."
  }]
}

```
