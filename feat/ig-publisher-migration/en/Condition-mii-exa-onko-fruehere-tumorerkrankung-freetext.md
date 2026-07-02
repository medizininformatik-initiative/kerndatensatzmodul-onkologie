# Frühere Tumorerkrankung nur Freitext - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Example Condition: Frühere Tumorerkrankung nur Freitext

-------

**English**

-------

Profile: [MII PR Onkologie Frühere Tumorerkrankung](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md) version: 2026.0.3

**Condition Asserted Date**: 2010

**clinicalStatus**: Resolved

**category**: Medical oncology (qualifier value)

**code**: Hautkrebs am Rücken, ca. 2010

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**recordedDate**: 2024-06-14

**note**: 

> 

Patient berichtet von operativ entferntem Hautkrebs vor ca. 14 Jahren, keine weiteren Details verfügbar




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-fruehere-tumorerkrankung-freetext",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung|2026.0.3"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2010"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "resolved"
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
    "text" : "Hautkrebs am Rücken, ca. 2010"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "recordedDate" : "2024-06-14",
  "note" : [{
    "text" : "Patient berichtet von operativ entferntem Hautkrebs vor ca. 14 Jahren, keine weiteren Details verfügbar"
  }]
}

```
