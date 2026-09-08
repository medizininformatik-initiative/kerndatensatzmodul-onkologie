# FOLFOX - Oxaliplatin MedicationRequest - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FOLFOX - Oxaliplatin MedicationRequest**

## Example MedicationRequest: FOLFOX - Oxaliplatin MedicationRequest

-------

**English**

-------

Profile: [MII PR Onkologie Therapieempfehlung Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md) version: 2027.0.0-ballot.rc1

**status**: Active

**intent**: Proposal

**medication**: Oxaliplatin

**subject**: [Hans Schmidt Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)](Patient-mii-exa-onko-folfox-patient.md)

**authoredOn**: 2024-03-10

**reasonReference**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md)



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-onko-folfox-oxaliplatin-request",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation|2027.0.0-ballot.rc1"]
  },
  "status" : "active",
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
    "reference" : "Patient/mii-exa-onko-folfox-patient"
  },
  "authoredOn" : "2024-03-10",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
  }]
}

```
