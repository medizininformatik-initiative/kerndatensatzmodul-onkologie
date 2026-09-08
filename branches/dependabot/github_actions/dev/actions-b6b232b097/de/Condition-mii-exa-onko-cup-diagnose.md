# MII EXA Onkologie Diagnose CUP (C80.0) - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Onkologie Diagnose CUP (C80.0)**

## Beispiel Condition: MII EXA Onkologie Diagnose CUP (C80.0)

-------

**German**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2026-02-11

**MII EX Onko Histology Morphology Behavior ICDO3**: Adenokarzinom o.n.A.

**identifier**: `https://dizmusterstadt.example.org/fhir/sid/tumor-id`/TUMOR-CUP-0815

**clinicalStatus**: Active

**verificationStatus**: histologische Untersuchung eines Primärtumors

**category**: Neoplastic disease

**code**: Bösartige Neubildung, primäre Lokalisation unbekannt, so bezeichnet

**bodySite**: Unbekannte Primärlokalisation

**subject**: [CUP Musterfall Male, DoB: 1958-11-02](Patient-mii-exa-onko-cup-patient.md)

**recordedDate**: 2026-02-11



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-cup-diagnose",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2026-02-11"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "version" : "2019",
        "code" : "8140/3",
        "display" : "Adenokarzinom o.n.A."
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://dizmusterstadt.example.org/fhir/sid/tumor-id",
    "value" : "TUMOR-CUP-0815"
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
      "version" : "2026",
      "code" : "C80.0",
      "display" : "Bösartige Neubildung, primäre Lokalisation unbekannt, so bezeichnet"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C80.9",
      "display" : "Unbekannte Primärlokalisation"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-onko-cup-patient"
  },
  "recordedDate" : "2026-02-11"
}

```
