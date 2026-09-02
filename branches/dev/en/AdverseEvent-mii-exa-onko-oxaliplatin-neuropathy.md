# Unerwünschtes Ereignis - Oxaliplatin-induzierte Neuropathie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Unerwünschtes Ereignis - Oxaliplatin-induzierte Neuropathie**

## Example AdverseEvent: Unerwünschtes Ereignis - Oxaliplatin-induzierte Neuropathie

-------

**English**

-------

**actuality**: Adverse Event

**event**: Oxaliplatin-induced peripheral neuropathy, grade 3 (CTCAE v5.0)

**subject**: [Martin Beispiel Male, DoB: 1958-11-03](Patient-example-modification.md)

**date**: 2024-06-10

**detected**: 2024-06-05

**recordedDate**: 2024-06-10

**seriousness**: Non-serious

**severity**: Severe

> **suspectEntity****instance**: [MedicationStatement: status = stopped; statusReason = Adverse reaction (disorder); medication[x] = Oxaliplatin; effective[x] = 2024-03-15 --> 2024-06-10; note = FOLFOX4 - Cycles 1-6 only. Discontinued due to severe peripheral neuropathy. Patient experienced numbness and tingling in hands and feet (grade 3 CTCAE), interfering with daily activities.](MedicationStatement-mii-exa-onko-modification-oxaliplatin-phase1.md)

### Causalities

| | |
| :--- | :--- |
| - | **Assessment** |
| * | Certain |




## Resource Content

```json
{
  "resourceType" : "AdverseEvent",
  "id" : "mii-exa-onko-oxaliplatin-neuropathy",
  "actuality" : "actual",
  "event" : {
    "coding" : [{
      "system" : "https://www.meddra.org",
      "code" : "10034620",
      "display" : "Peripheral sensory neuropathy"
    }],
    "text" : "Oxaliplatin-induced peripheral neuropathy, grade 3 (CTCAE v5.0)"
  },
  "subject" : {
    "reference" : "Patient/example-modification"
  },
  "date" : "2024-06-10",
  "detected" : "2024-06-05",
  "recordedDate" : "2024-06-10",
  "seriousness" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness",
      "code" : "non-serious"
    }]
  },
  "severity" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/adverse-event-severity",
      "code" : "severe",
      "display" : "Severe"
    }]
  },
  "suspectEntity" : [{
    "instance" : {
      "reference" : "MedicationStatement/mii-exa-onko-modification-oxaliplatin-phase1"
    },
    "causality" : [{
      "assessment" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/adverse-event-causality-assess",
          "code" : "certain",
          "display" : "Certain"
        }]
      }
    }]
  }]
}

```
