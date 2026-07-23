# 5-FU Phase 1 (Zyklen 1-6) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **5-FU Phase 1 (Zyklen 1-6)**

## Example MedicationStatement: 5-FU Phase 1 (Zyklen 1-6)

Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md)

**basedOn**: [CarePlan: identifier = Tumorkonferenz_FOLFOX_Modification_001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2024-03-05](CarePlan-mii-exa-onko-tumorkonferenz-folfox-modification.md)

**partOf**: [Procedure Nicht komplexe Chemotherapie](Procedure-mii-exa-onko-folfox-phase1.md)

**status**: Completed

**medication**: 5-Fluorouracil (5-FU)

**subject**: [Patient/example-modification](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example-modification)

**effective**: 2024-03-15 --> 2024-06-10

**note**: 

> 

FOLFOX4 - Cycles 1-6




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-onko-modification-5fu-phase1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
  },
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-folfox-modification"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-onko-folfox-phase1"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "code" : "L01BC02",
      "display" : "Fluorouracil"
    }],
    "text" : "5-Fluorouracil (5-FU)"
  },
  "subject" : {
    "reference" : "Patient/example-modification"
  },
  "effectivePeriod" : {
    "start" : "2024-03-15",
    "end" : "2024-06-10"
  },
  "note" : [{
    "text" : "FOLFOX4 - Cycles 1-6"
  }]
}

```
