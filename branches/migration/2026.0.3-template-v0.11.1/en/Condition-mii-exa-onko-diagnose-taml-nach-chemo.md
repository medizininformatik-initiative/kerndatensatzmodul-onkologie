# MII EXA Onkologie Diagnose t-AML nach Chemotherapie (dueTo) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onkologie Diagnose t-AML nach Chemotherapie (dueTo)**

## Example Condition: MII EXA Onkologie Diagnose t-AML nach Chemotherapie (dueTo)

-------

**English**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md) version: 2026.0.3

**Condition Asserted Date**: 2026-03-18

**MII EX Onko Histology Morphology Behavior ICDO3**: Therapiebedingte myeloische Neoplasie

**Condition Due To**: [MedicationStatement: status = completed; medication[x] = Cyclophosphamid; effective[x] = 2021-12-04 --> 2022-04-06; note = AC](MedicationStatement-mii-exa-onko-systemische-therapie-medikation1.md)

**clinicalStatus**: Active

**verificationStatus**: histologische Untersuchung eines Primärtumors

**code**: Akute myeloblastische Leukämie [AML]

**bodySite**: Knochenmark

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**recordedDate**: 2026-03-18



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-diagnose-taml-nach-chemo",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2026.0.3"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2026-03-18"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "version" : "2019",
        "code" : "9920/3",
        "display" : "Therapiebedingte myeloische Neoplasie"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-dueTo",
    "valueReference" : {
      "reference" : "MedicationStatement/mii-exa-onko-systemische-therapie-medikation1"
    }
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
      "code" : "7",
      "display" : "histologische Untersuchung eines Primärtumors"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "code" : "C92.0",
      "display" : "Akute myeloblastische Leukämie [AML]"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C42.1",
      "display" : "Knochenmark"
    }]
  }],
  "subject" : {
    "reference" : "Patient/example"
  },
  "recordedDate" : "2026-03-18"
}

```
