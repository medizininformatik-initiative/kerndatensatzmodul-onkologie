# PatientKimMusterperson-Diagnosis-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Diagnosis-1**

## Beispiel Condition: PatientKimMusterperson-Diagnosis-1

-------

**German**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Condition Asserted Date**: 2021-05-09

**clinicalStatus**: Active

**verificationStatus**: klinische Diagnostik

**category**: Neoplastic disease

**code**: Bösartige Neubildung: Peritoneum, nicht näher bezeichnet

**bodySite**: Ovar

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**recordedDate**: 2021-06-10



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "PatientKimMusterperson-Diagnosis-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2021-05-09"
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
      "code" : "unconfirmed"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung",
      "code" : "2",
      "display" : "klinische Diagnostik"
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
      "version" : "2020",
      "code" : "C48.2",
      "display" : "Bösartige Neubildung: Peritoneum, nicht näher bezeichnet"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C56.9",
      "display" : "Ovar"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "15497006",
      "display" : "Ovary"
    }]
  }],
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "recordedDate" : "2021-06-10"
}

```
