# mii-exa-onko-tnm-bundle-legacy-diagnose - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-tnm-bundle-legacy-diagnose**

## Example Condition: mii-exa-onko-tnm-bundle-legacy-diagnose

-------

**English**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2024-01-11

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Neoplastic disease

**code**: Bösartige Neubildung des Rektums

**subject**: [Tobias TNMLegacy Male, DoB: 1962-04-18](Patient-mii-exa-onko-tnm-bundle-legacy-patient.md)

**recordedDate**: 2024-01-11



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-tnm-bundle-legacy-diagnose",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2027.0.0-ballot.rc1"]
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
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "55342001",
      "display" : "Neoplastic disease"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "C20",
      "display" : "Bösartige Neubildung des Rektums"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-tnm-bundle-legacy-patient"
  },
  "recordedDate" : "2024-01-11"
}

```
