# mii-exa-onko-melanom-diagnose - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-melanom-diagnose**

## Example Condition: mii-exa-onko-melanom-diagnose

-------

**English**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2024-01-02

**clinicalStatus**: Active

**verificationStatus**: histologische Untersuchung eines Primärtumors

**category**: Neoplastic disease

**code**: Bösartiges Melanom der Haut, nicht näher bezeichnet

**subject**: [Maria Melanom (no stated gender), DoB Unknown](Patient-mii-exa-onko-melanom-bundle-patient.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP)](Encounter-mii-exa-onko-melanom-bundle-encounter.md)

**recordedDate**: 2024-01-02



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-melanom-diagnose",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2024-01-02"
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
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung",
      "code" : "7.1",
      "display" : "histologische Untersuchung eines Primärtumors"
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
      "code" : "C43.9",
      "display" : "Bösartiges Melanom der Haut, nicht näher bezeichnet"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-melanom-bundle-patient"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-onko-melanom-bundle-encounter"
  },
  "recordedDate" : "2024-01-02"
}

```
