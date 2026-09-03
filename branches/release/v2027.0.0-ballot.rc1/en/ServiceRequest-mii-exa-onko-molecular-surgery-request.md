# mii-exa-onko-molecular-surgery-request - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-molecular-surgery-request**

## Example ServiceRequest: mii-exa-onko-molecular-surgery-request

-------

**English**

-------

**status**: Active

**intent**: Proposal

**category**: Surgical procedure

**code**: Neurochirurgische Konsultation für Hirnmetastasen

**subject**: [Maria Müller Female, DoB: 1968-07-22 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#MTB-2024-001)](Patient-mii-exa-onko-molecular-board-patient.md)

**authoredOn**: 2024-01-16

**reasonReference**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

**note**: 

> 

Molekulares Tumorboard empfiehlt neurochirurgische Evaluation für stereotaktische Radiochirurgie bei oligometastatischen Hirnläsionen




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-onko-molecular-surgery-request",
  "status" : "active",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "11429006"
    }],
    "text" : "Neurochirurgische Konsultation für Hirnmetastasen"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-molecular-board-patient"
  },
  "authoredOn" : "2024-01-16",
  "reasonReference" : [{
    "reference" : "Condition/primaertumor-example"
  }],
  "note" : [{
    "text" : "Molekulares Tumorboard empfiehlt neurochirurgische Evaluation für stereotaktische Radiochirurgie bei oligometastatischen Hirnläsionen"
  }]
}

```
