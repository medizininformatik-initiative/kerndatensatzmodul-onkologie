# LV5FU2 Therapie - Phase 2 (Zyklen 7-12) - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **LV5FU2 Therapie - Phase 2 (Zyklen 7-12)**

## Beispiel Procedure: LV5FU2 Therapie - Phase 2 (Zyklen 7-12)

-------

**German**

-------

Profile: [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md)

**MII EX Onko Systemische Therapie Intention**: Kurativ

**MII EX Onko Systemische Therapie Stellung zur OP**: Adjuvant

**basedOn**: [CarePlan: identifier = Tumorkonferenz_FOLFOX_Modification_001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2024-03-05](CarePlan-mii-exa-onko-tumorkonferenz-folfox-modification.md)

**partOf**: [Procedure Nicht komplexe Chemotherapie](Procedure-mii-exa-onko-folfox-phase1.md)

**status**: Completed

**category**: Administration of medication

**code**: Nicht komplexe Chemotherapie

**subject**: [Martin Beispiel Male, DoB: 1958-11-03](Patient-example-modification.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB)](Encounter-example-chemo-phase2.md)

**performed**: 2024-06-17 --> 2024-09-10

**reasonReference**: [Condition Bösartige Neubildung: Colon ascendens](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md)

**outcome**: Reguläres Ende

**note**: 

> 

Modified protocol: LV5FU2 (5-FU/Leucovorin) for cycles 7-12. Oxaliplatin omitted due to persistent neuropathy. Patient tolerated modified regimen well. Completed all planned cycles.


**usedCode**: LV5FU2



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-lv5fu2-phase2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K",
        "display" : "Kurativ"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellungzurop",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop",
        "code" : "A",
        "display" : "Adjuvant"
      }]
    }
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-folfox-modification"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-onko-folfox-phase1"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "18629005"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2024",
      "code" : "8-542",
      "display" : "Nicht komplexe Chemotherapie"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-art",
      "code" : "CH",
      "display" : "Chemotherapie"
    }]
  },
  "subject" : {
    "reference" : "Patient/example-modification"
  },
  "encounter" : {
    "reference" : "Encounter/example-chemo-phase2"
  },
  "performedPeriod" : {
    "start" : "2024-06-17",
    "end" : "2024-09-10"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-ascending-colon-cancer-diagnosis"
  }],
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund",
      "code" : "E",
      "display" : "Reguläres Ende"
    }]
  },
  "note" : [{
    "text" : "Modified protocol: LV5FU2 (5-FU/Leucovorin) for cycles 7-12. Oxaliplatin omitted due to persistent neuropathy. Patient tolerated modified regimen well. Completed all planned cycles."
  }],
  "usedCode" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle",
      "code" : "LV5FU2",
      "display" : "LV5FU2"
    }]
  }]
}

```
