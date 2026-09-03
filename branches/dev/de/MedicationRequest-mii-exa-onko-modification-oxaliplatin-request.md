# MedicationRequest - Oxaliplatin (abgebrochen wegen Neuropathie) - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MedicationRequest - Oxaliplatin (abgebrochen wegen Neuropathie)**

## Beispiel MedicationRequest: MedicationRequest - Oxaliplatin (abgebrochen wegen Neuropathie)

-------

**German**

-------

Profile: [MII PR Onkologie Therapieempfehlung Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md) version: 2027.0.0-ballot.rc1

**status**: Stopped

**statusReason**: Oxaliplatin discontinued after cycle 6 due to grade 3 peripheral neuropathy (CTCAE). Patient continued with 5-FU + Leucovorin only for remaining 6 cycles.

**intent**: Proposal

**medication**: Oxaliplatin

**subject**: [Martin Beispiel Male, DoB: 1958-11-03](Patient-example-modification.md)

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
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation|2027.0.0-ballot.rc1"]
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
