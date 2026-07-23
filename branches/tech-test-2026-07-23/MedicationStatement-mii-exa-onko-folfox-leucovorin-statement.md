# FOLFOX - Folinsäure tatsächlich verabreicht - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FOLFOX - Folinsäure tatsächlich verabreicht**

## Example MedicationStatement: FOLFOX - Folinsäure tatsächlich verabreicht

Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md)

**basedOn**: [CarePlan: identifier = Tumorkonferenz_FOLFOX_001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2024-03-10](CarePlan-mii-exa-onko-tumorkonferenz-folfox.md)

**partOf**: [Procedure Nicht komplexe Chemotherapie](Procedure-mii-exa-onko-folfox-procedure.md)

**status**: Completed

**medication**: Leucovorin (Folinsäure)

**subject**: [Hans Schmidt Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)](Patient-mii-exa-onko-folfox-patient.md)

**effective**: 2024-03-20 --> 2024-09-15

**note**: 

> 

FOLFOX4




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-onko-folfox-leucovorin-statement",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
  },
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-folfox"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-onko-folfox-procedure"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "code" : "V03AF03",
      "display" : "Calciumfolinat"
    }],
    "text" : "Leucovorin (Folinsäure)"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-folfox-patient"
  },
  "effectivePeriod" : {
    "start" : "2024-03-20",
    "end" : "2024-09-15"
  },
  "note" : [{
    "text" : "FOLFOX4"
  }]
}

```
