# Verlauf - 6 Monate nach FOLFOX - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Verlauf - 6 Monate nach FOLFOX**

## Beispiel Observation: Verlauf - 6 Monate nach FOLFOX

-------

**German**

-------

Profile: [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.md)

**status**: Final

**code**: Status of regression of tumor (observable entity)

**subject**: [Hans Schmidt Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)](Patient-mii-exa-onko-folfox-patient.md)

**focus**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md)

**effective**: 2025-03-15

**value**: Vollremission (complete remission, CR)

**note**: 

> 

Patient completed 12 cycles of adjuvant FOLFOX4. CT scan and colonoscopy show no evidence of recurrence. CEA level normal (2.1 ng/mL). Patient is disease-free at 6-month follow-up. Plan: Continue surveillance with CEA and imaging every 3-6 months.


> **component****code**: Status of residual neoplasm (observable entity)**value**: Kein Tumor nachweisbar

> **component****code**: Presence of metastatic neoplasm in regional lymph node (observable entity)**value**: kein Lymphknotenbefall nachweisbar

> **component****code**: Status of distant metastasis (observable entity)**value**: Keine Fernmetastasen nachweisbar



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-folfox-verlauf-6months",
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
    "reference" : "Patient/mii-exa-onko-folfox-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
  }],
  "effectiveDateTime" : "2025-03-15",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung",
      "code" : "V",
      "display" : "Vollremission (complete remission, CR)"
    }]
  },
  "note" : [{
    "text" : "Patient completed 12 cycles of adjuvant FOLFOX4. CT scan and colonoscopy show no evidence of recurrence. CEA level normal (2.1 ng/mL). Patient is disease-free at 6-month follow-up. Plan: Continue surveillance with CEA and imaging every 3-6 months."
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
