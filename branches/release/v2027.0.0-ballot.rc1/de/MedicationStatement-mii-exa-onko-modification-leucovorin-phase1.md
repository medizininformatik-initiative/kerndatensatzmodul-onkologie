# Folinsäure Phase 1 (Zyklen 1-6) - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Folinsäure Phase 1 (Zyklen 1-6)**

## Beispiel MedicationStatement: Folinsäure Phase 1 (Zyklen 1-6)

-------

**German**

-------

Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md)

**basedOn**: [CarePlan: identifier = Tumorkonferenz_FOLFOX_Modification_001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2024-03-05](CarePlan-mii-exa-onko-tumorkonferenz-folfox-modification.md)

**partOf**: [Procedure Nicht komplexe Chemotherapie](Procedure-mii-exa-onko-folfox-phase1.md)

**status**: Completed

**medication**: Leucovorin (Folinsäure)

**subject**: [Martin Beispiel Male, DoB: 1958-11-03](Patient-example-modification.md)

**effective**: 2024-03-15 --> 2024-06-10

**note**: 

> 

FOLFOX4 - Cycles 1-6




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-onko-modification-leucovorin-phase1",
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
      "code" : "V03AF03",
      "display" : "Calciumfolinat"
    }],
    "text" : "Leucovorin (Folinsäure)"
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
