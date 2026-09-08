# FOLFOX Systemische Therapie (tatsächlich durchgeführt) - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FOLFOX Systemische Therapie (tatsächlich durchgeführt)**

## Example Procedure: FOLFOX Systemische Therapie (tatsächlich durchgeführt)

-------

**English**

-------

Profile: [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md)

**MII EX Onko Systemische Therapie Intention**: Kurativ

**MII EX Onko Systemische Therapie Stellung zur OP**: Adjuvant

**basedOn**: [CarePlan: identifier = Tumorkonferenz_FOLFOX_001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2024-03-10](CarePlan-mii-exa-onko-tumorkonferenz-folfox.md)

**status**: Completed

**category**: Therapeutic procedure

**code**: Nicht komplexe Chemotherapie

**subject**: [Hans Schmidt Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)](Patient-mii-exa-onko-folfox-patient.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB)](Encounter-mii-exa-onko-folfox-encounter-chemo.md)

**performed**: 2024-03-20 --> 2024-09-15

**reasonReference**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md)

**outcome**: Reguläres Ende

**note**: 

> 

Patient received 12 cycles of adjuvant FOLFOX4 chemotherapy for stage III colon cancer. Treatment completed without major complications.


**usedCode**: FOLFOX4



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-folfox-procedure",
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
    "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-folfox"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "277132007",
      "display" : "Therapeutic procedure"
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
    "reference" : "Patient/mii-exa-onko-folfox-patient"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-onko-folfox-encounter-chemo"
  },
  "performedPeriod" : {
    "start" : "2024-03-20",
    "end" : "2024-09-15"
  },
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
  }],
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund",
      "code" : "E",
      "display" : "Reguläres Ende"
    }]
  },
  "note" : [{
    "text" : "Patient received 12 cycles of adjuvant FOLFOX4 chemotherapy for stage III colon cancer. Treatment completed without major complications."
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
