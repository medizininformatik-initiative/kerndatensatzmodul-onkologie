# Kolonkarzinom Primärdiagnose - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kolonkarzinom Primärdiagnose**

## Example Condition: Kolonkarzinom Primärdiagnose

-------

**English**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Condition Asserted Date**: 2024-01-15

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Neoplastic disease

**code**: Bösartige Neubildung: Colon sigmoideum

**subject**: [Hans Schmidt Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)](Patient-mii-exa-onko-folfox-patient.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB)](Encounter-mii-exa-onko-folfox-encounter-diagnosis.md)

**onset**: 2024-01-15

**recordedDate**: 2024-01-15

**note**: 

> 

Adenokarzinom des Colon sigmoideum, Stadium III (T3N1M0)




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-colorectal-cancer-diagnosis",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-01-15"
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
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis",
      "display" : "Neoplastic disease"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "C18.7",
      "display" : "Bösartige Neubildung: Colon sigmoideum"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-folfox-patient"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-onko-folfox-encounter-diagnosis"
  },
  "onsetDateTime" : "2024-01-15",
  "recordedDate" : "2024-01-15",
  "note" : [{
    "text" : "Adenokarzinom des Colon sigmoideum, Stadium III (T3N1M0)"
  }]
}

```
