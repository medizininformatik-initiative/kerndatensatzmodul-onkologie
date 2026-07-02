# Example Primaertumor Condition for Extended Examples - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Condition: Example Primaertumor Condition for Extended Examples

-------

**German**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md) version: 2026.0.3

**Condition Asserted Date**: 2024-01-10

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet

**subject**: [Maria Müller Female, DoB: 1968-07-22 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#MTB-2024-001)](Patient-mii-exa-onko-molecular-board-patient.md)

**recordedDate**: 2024-01-10



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "primaertumor-example",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2026.0.3"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-01-10"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "C50.9",
      "display" : "Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-molecular-board-patient"
  },
  "recordedDate" : "2024-01-10"
}

```
