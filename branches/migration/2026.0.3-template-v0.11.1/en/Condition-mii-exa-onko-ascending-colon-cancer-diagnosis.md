# Kolonkarzinom Primärdiagnose - Colon ascendens - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kolonkarzinom Primärdiagnose - Colon ascendens**

## Example Condition: Kolonkarzinom Primärdiagnose - Colon ascendens

-------

**English**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Condition Asserted Date**: 2024-01-20

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Neoplastic disease

**code**: Bösartige Neubildung: Colon ascendens

**subject**: [Martin Beispiel Male, DoB: 1958-11-03](Patient-example-modification.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB)](Encounter-example-diagnosis-modification.md)

**onset**: 2024-01-20

**recordedDate**: 2024-01-20

**note**: 

> 

Adenokarzinom des Colon ascendens, Stadium III (T3N1M0)




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-ascending-colon-cancer-diagnosis",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-01-20"
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
      "code" : "C18.2",
      "display" : "Bösartige Neubildung: Colon ascendens"
    }]
  },
  "subject" : {
    "reference" : "Patient/example-modification"
  },
  "encounter" : {
    "reference" : "Encounter/example-diagnosis-modification"
  },
  "onsetDateTime" : "2024-01-20",
  "recordedDate" : "2024-01-20",
  "note" : [{
    "text" : "Adenokarzinom des Colon ascendens, Stadium III (T3N1M0)"
  }]
}

```
