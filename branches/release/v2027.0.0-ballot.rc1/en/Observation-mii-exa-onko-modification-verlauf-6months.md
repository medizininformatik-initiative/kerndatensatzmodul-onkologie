# Verlauf - 6 Monate nach modifizierter Therapie - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Verlauf - 6 Monate nach modifizierter Therapie**

## Example Observation: Verlauf - 6 Monate nach modifizierter Therapie

-------

**English**

-------

Profile: [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.md)

**status**: Final

**code**: Status of regression of tumor (observable entity)

**subject**: [Martin Beispiel Male, DoB: 1958-11-03](Patient-example-modification.md)

**focus**: [Condition Bösartige Neubildung: Colon ascendens](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md)

**effective**: 2025-03-10

**value**: Vollremission (complete remission, CR)

**note**: 

> 

Patient completed modified chemotherapy protocol (6 cycles FOLFOX4 + 6 cycles LV5FU2). Despite early discontinuation of oxaliplatin due to neuropathy, patient achieved complete response. CT scan and colonoscopy show no evidence of recurrence. CEA normal (1.8 ng/mL). Peripheral neuropathy has improved to grade 1 but persists. Patient is disease-free at 6-month follow-up.


> **component****code**: Status of residual neoplasm (observable entity)**value**: Kein Tumor nachweisbar

> **component****code**: Presence of metastatic neoplasm in regional lymph node (observable entity)**value**: kein Lymphknotenbefall nachweisbar

> **component****code**: Status of distant metastasis (observable entity)**value**: Keine Fernmetastasen nachweisbar



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-modification-verlauf-6months",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "396432002",
      "display" : "Status of regression of tumor (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/example-modification"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-ascending-colon-cancer-diagnosis"
  }],
  "effectiveDateTime" : "2025-03-10",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung",
      "code" : "V",
      "display" : "Vollremission (complete remission, CR)"
    }]
  },
  "note" : [{
    "text" : "Patient completed modified chemotherapy protocol (6 cycles FOLFOX4 + 6 cycles LV5FU2). Despite early discontinuation of oxaliplatin due to neuropathy, patient achieved complete response. CT scan and colonoscopy show no evidence of recurrence. CEA normal (1.8 ng/mL). Peripheral neuropathy has improved to grade 1 but persists. Patient is disease-free at 6-month follow-up."
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "445200009",
        "display" : "Status of residual neoplasm (observable entity)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor",
        "code" : "K",
        "display" : "Kein Tumor nachweisbar"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "399656008",
        "display" : "Presence of metastatic neoplasm in regional lymph node (observable entity)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten",
        "code" : "K",
        "display" : "kein Lymphknotenbefall nachweisbar"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "399608002",
        "display" : "Status of distant metastasis (observable entity)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen",
        "code" : "K",
        "display" : "Keine Fernmetastasen nachweisbar"
      }]
    }
  }]
}

```
