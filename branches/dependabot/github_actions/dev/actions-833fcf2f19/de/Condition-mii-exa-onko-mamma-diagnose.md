# mii-exa-onko-mamma-diagnose - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-mamma-diagnose**

## Beispiel Condition: mii-exa-onko-mamma-diagnose

-------

**German**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Condition Asserted Date**: 2020-03-07

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Neoplastic disease

**code**: Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse

**subject**: [Martha MammaCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-mamma-bundle-patient.md)

**recordedDate**: 2024-01-02



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-mamma-diagnose",
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
      "code" : "C50.3",
      "display" : "Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-mamma-bundle-patient"
  },
  "recordedDate" : "2024-01-02"
}

```
