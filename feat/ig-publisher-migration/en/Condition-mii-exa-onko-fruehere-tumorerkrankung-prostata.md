# Frühere Tumorerkrankung Prostata - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Example Condition: Frühere Tumorerkrankung Prostata

-------

**English**

-------

Profile: [MII PR Onkologie Frühere Tumorerkrankung](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md) version: 2026.0.3

**Condition Asserted Date**: 2018-03-15

**clinicalStatus**: Remission

**verificationStatus**: Confirmed

**category**: Medical oncology (qualifier value)

**code**: Prostatakarzinom

**bodySite**: Prostata

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

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
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung|2026.0.3"]
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
