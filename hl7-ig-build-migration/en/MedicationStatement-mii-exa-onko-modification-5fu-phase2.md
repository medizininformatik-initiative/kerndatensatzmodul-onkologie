# 5-FU Phase 2 (Zyklen 7-12) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Example MedicationStatement: 5-FU Phase 2 (Zyklen 7-12)

-------

**English**

-------

Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md)

**basedOn**: [CarePlan: identifier = Tumorkonferenz_FOLFOX_Modification_001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2024-03-05](CarePlan-mii-exa-onko-tumorkonferenz-folfox-modification.md)

**partOf**: [Procedure Nicht komplexe Chemotherapie](Procedure-mii-exa-onko-lv5fu2-phase2.md)

**status**: Completed

**medication**: 5-Fluorouracil (5-FU)

**subject**: [Patient/example-modification](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example-modification)

**effective**: 2024-06-17 --> 2024-09-10

**note**: 

> 

LV5FU2 (modified protocol) - Cycles 7-12




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-onko-modification-5fu-phase2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
  },
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-folfox-modification"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-onko-lv5fu2-phase2"
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
    "start" : "2024-06-17",
    "end" : "2024-09-10"
  },
  "note" : [{
    "text" : "LV5FU2 (modified protocol) - Cycles 7-12"
  }]
}

```
