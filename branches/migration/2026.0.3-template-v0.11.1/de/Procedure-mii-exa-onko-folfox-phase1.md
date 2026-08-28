# FOLFOX4 Therapie - Phase 1 (Zyklen 1-6) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **FOLFOX4 Therapie - Phase 1 (Zyklen 1-6)**

## Beispiel Procedure: FOLFOX4 Therapie - Phase 1 (Zyklen 1-6)

-------

**German**

-------

Profile: [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md)

**MII EX Onko Systemische Therapie Intention**: Kurativ

**MII EX Onko Systemische Therapie Stellung zur OP**: Adjuvant

**basedOn**: [CarePlan: identifier = Tumorkonferenz_FOLFOX_Modification_001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2024-03-05](CarePlan-mii-exa-onko-tumorkonferenz-folfox-modification.md)

**status**: Completed

**category**: 18629005

**code**: Nicht komplexe Chemotherapie

**subject**: [Martin Beispiel Male, DoB: 1958-11-03](Patient-example-modification.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB)](Encounter-example-chemo-phase1.md)

**performed**: 2024-03-15 --> 2024-06-10

**reasonReference**: [Condition Bösartige Neubildung: Colon ascendens](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md)

**outcome**: Abbruch wegen Nebenwirkungen

**note**: 

> 

Patient received 6 cycles of FOLFOX4. Treatment modified after cycle 6 due to severe peripheral neuropathy. Continued with 5-FU/Leucovorin only.


**usedCode**: FOLFOX4



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-folfox-phase1",
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
    "reference" : "Encounter/example-chemo-phase1"
  },
  "performedPeriod" : {
    "start" : "2024-03-15",
    "end" : "2024-06-10"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-ascending-colon-cancer-diagnosis"
  }],
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund",
      "code" : "A",
      "display" : "Abbruch wegen Nebenwirkungen"
    }]
  },
  "note" : [{
    "text" : "Patient received 6 cycles of FOLFOX4. Treatment modified after cycle 6 due to severe peripheral neuropathy. Continued with 5-FU/Leucovorin only."
  }],
  "usedCode" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle",
      "code" : "FOLFOX4",
      "display" : "FOLFOX4"
    }]
  }]
}

```
