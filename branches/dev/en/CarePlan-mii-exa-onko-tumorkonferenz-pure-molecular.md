# mii-exa-onko-tumorkonferenz-pure-molecular - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-tumorkonferenz-pure-molecular**

## Example CarePlan: mii-exa-onko-tumorkonferenz-pure-molecular

-------

**English**

-------

Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md) version: 2027.0.0-ballot.rc1

**identifier**: Tumorkonferenz_Molecular_002

**status**: Active

**intent**: Plan

**category**: Molekulares Tumorboard - Precision Medicine

**subject**: [Maria Müller Female, DoB: 1968-07-22 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#MTB-2024-001)](Patient-mii-exa-onko-molecular-board-patient.md)

**created**: 2024-01-16

**addresses**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

> **activity****progress**: 
> 

HER2+ with T790M mutation and brain metastases - specific agent sequence based on resistance profile


**reference**: [RequestGroup zielgerichtete Substanzen](RequestGroup-mii-exa-onko-molecular-her2-alternatives.md)

> **activity****progress**: 
> 

Neurosurgical consultation recommended for brain metastases management


**reference**: [ServiceRequest 11429006](ServiceRequest-mii-exa-onko-molecular-surgery-request.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-onko-tumorkonferenz-pure-molecular",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz|2027.0.0-ballot.rc1"]
  },
  "identifier" : [{
    "value" : "Tumorkonferenz_Molecular_002"
  }],
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "praeth"
    }],
    "text" : "Molekulares Tumorboard - Precision Medicine"
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-onko-molecular-board-patient"
  },
  "created" : "2024-01-16",
  "addresses" : [{
    "reference" : "Condition/primaertumor-example"
  }],
  "activity" : [{
    "progress" : [{
      "text" : "HER2+ with T790M mutation and brain metastases - specific agent sequence based on resistance profile"
    }],
    "reference" : {
      "reference" : "RequestGroup/mii-exa-onko-molecular-her2-alternatives"
    }
  },
  {
    "progress" : [{
      "text" : "Neurosurgical consultation recommended for brain metastases management"
    }],
    "reference" : {
      "reference" : "ServiceRequest/mii-exa-onko-molecular-surgery-request"
    }
  }]
}

```
