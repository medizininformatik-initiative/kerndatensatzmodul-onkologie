# FOLFOX - Oxaliplatin tatsächlich verabreicht - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **FOLFOX - Oxaliplatin tatsächlich verabreicht**

## Beispiel MedicationStatement: FOLFOX - Oxaliplatin tatsächlich verabreicht

-------

**German**

-------

Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md)

**basedOn**: [CarePlan: identifier = Tumorkonferenz_FOLFOX_001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2024-03-10](CarePlan-mii-exa-onko-tumorkonferenz-folfox.md)

**partOf**: [Procedure Nicht komplexe Chemotherapie](Procedure-mii-exa-onko-folfox-procedure.md)

**status**: Completed

**medication**: Oxaliplatin

**subject**: [Hans Schmidt Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)](Patient-mii-exa-onko-folfox-patient.md)

**effective**: 2024-03-20 --> 2024-09-15

**note**: 

> 

FOLFOX4




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-onko-folfox-oxaliplatin-statement",
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
      "code" : "L01XA03",
      "display" : "Oxaliplatin"
    }],
    "text" : "Oxaliplatin"
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
