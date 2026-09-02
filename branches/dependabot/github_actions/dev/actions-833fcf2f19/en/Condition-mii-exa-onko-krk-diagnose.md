# mii-exa-onko-krk-diagnose - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-krk-diagnose**

## Example Condition: mii-exa-onko-krk-diagnose

-------

**English**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Condition Asserted Date**: 2020-03-07

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Neoplastic disease

**code**: Bösartige Neubildung des Kolons

**subject**: [Klaus KolorektalCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-krk-bundle-patient.md)

**recordedDate**: 2024-01-02



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-krk-diagnose",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2020-03-07"
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
      "code" : "C18",
      "display" : "Bösartige Neubildung des Kolons"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
  },
  "recordedDate" : "2024-01-02"
}

```
