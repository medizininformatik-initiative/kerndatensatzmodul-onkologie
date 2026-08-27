# mii-exa-onko-tnm-synth-diagnose - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tnm-synth-diagnose**

## Beispiel Condition: mii-exa-onko-tnm-synth-diagnose

-------

**German**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md) version: 2026.0.3

**Condition Asserted Date**: 2024-01-11

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Bösartige Neubildung des Rektums

**subject**: [Tobias TNMSynth Male, DoB: 1962-04-18](Patient-mii-exa-onko-tnm-synth-patient.md)

**recordedDate**: 2024-01-11



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-tnm-synth-diagnose",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2026.0.3"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-01-11"
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
      "code" : "C20",
      "display" : "Bösartige Neubildung des Rektums"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
  },
  "recordedDate" : "2024-01-11"
}

```
