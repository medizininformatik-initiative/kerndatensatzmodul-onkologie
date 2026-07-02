# Frühere Tumorerkrankung Mamma - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Condition: Frühere Tumorerkrankung Mamma

-------

**German**

-------

Profile: [MII PR Onkologie Frühere Tumorerkrankung](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md) version: 2026.0.3

**Condition Asserted Date**: 2013

**clinicalStatus**: Resolved

**verificationStatus**: Confirmed

**category**: Medical oncology (qualifier value)

**code**: Mamma-Ca, links

**bodySite**: Brust o.n.A.

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**recordedDate**: 2024-06-14

**note**: 

> 

Z.n. brusterhaltender Therapie und Radiatio, derzeit tumorfrei




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-fruehere-tumorerkrankung-mamma",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung|2026.0.3"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2013"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "resolved"
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
      "version" : "2013",
      "code" : "C50.9",
      "display" : "Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet"
    }],
    "text" : "Mamma-Ca, links"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C50.9",
      "display" : "Brust o.n.A."
    }]
  }],
  "subject" : {
    "reference" : "Patient/example"
  },
  "recordedDate" : "2024-06-14",
  "note" : [{
    "text" : "Z.n. brusterhaltender Therapie und Radiatio, derzeit tumorfrei"
  }]
}

```
