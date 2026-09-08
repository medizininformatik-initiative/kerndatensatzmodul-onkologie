# Frühere Tumorerkrankung Prostata - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Frühere Tumorerkrankung Prostata**

## Example Condition: Frühere Tumorerkrankung Prostata

-------

**English**

-------

Profile: [MII PR Onkologie Frühere Tumorerkrankung](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2018-03-15

**clinicalStatus**: Remission

**verificationStatus**: Confirmed

**category**: Medical oncology (qualifier value), Neoplastic disease

**code**: Prostatakarzinom

**bodySite**: Prostata

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**recordedDate**: 2024-06-14

**note**: 

> 

Z.n. radikaler Prostatektomie 2018, PSA aktuell <0.1 ng/ml




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-fruehere-tumorerkrankung-prostata",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2018-03-15"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "remission"
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
      "code" : "394593009",
      "display" : "Medical oncology (qualifier value)"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "55342001",
      "display" : "Neoplastic disease"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2021",
      "code" : "C61",
      "display" : "Bösartige Neubildung der Prostata"
    }],
    "text" : "Prostatakarzinom"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C61.9",
      "display" : "Prostata"
    }]
  }],
  "subject" : {
    "reference" : "Patient/example"
  },
  "recordedDate" : "2024-06-14",
  "note" : [{
    "text" : "Z.n. radikaler Prostatektomie 2018, PSA aktuell <0.1 ng/ml"
  }]
}

```
