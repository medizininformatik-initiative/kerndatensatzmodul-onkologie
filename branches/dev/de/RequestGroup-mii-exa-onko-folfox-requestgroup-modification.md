# FOLFOX4 Therapieempfehlung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **FOLFOX4 Therapieempfehlung**

## Beispiel RequestGroup: FOLFOX4 Therapieempfehlung

-------

**German**

-------

Profile: [MII PR Onkologie Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md) version: 2026.0.3

**status**: Active

**intent**: Proposal

**code**: Chemotherapie

**subject**: [Martin Beispiel Male, DoB: 1958-11-03](Patient-example-modification.md)

**authoredOn**: 2024-03-05

**reasonReference**: [Condition Bösartige Neubildung: Colon ascendens](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md)

> **action****title**: FOLFOX4 Protocol**description**: FOLFOX4 chemotherapy protocol: Fluorouracil + Folinsäure + Oxaliplatin, 12 cycles planned**code**: FOLFOX4

### Actions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Title** | **Description** | **Resource** |
| * | Fluorouracil (5-FU) | 5-Fluorouracil - pyrimidine analog | [MedicationRequest: status = completed; intent = proposal; medication[x] = Fluorouracil; authoredOn = 2024-03-05; note = Completed as planned for all 12 cycles](MedicationRequest-mii-exa-onko-modification-5fu-request.md) |
| * | Folinsäure (Leucovorin) | Folinic acid - enhances 5-FU efficacy | [MedicationRequest: status = completed; intent = proposal; medication[x] = Calciumfolinat; authoredOn = 2024-03-05; note = Completed as planned for all 12 cycles](MedicationRequest-mii-exa-onko-modification-leucovorin-request.md) |
| * | Oxaliplatin | Platinum-based chemotherapy agent | [MedicationRequest: status = stopped; statusReason = Adverse reaction (disorder); intent = proposal; medication[x] = Oxaliplatin; authoredOn = 2024-03-05; note = Administered for cycles 1-6 only. Stopped due to cumulative neurotoxicity.](MedicationRequest-mii-exa-onko-modification-oxaliplatin-request.md) |




## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "mii-exa-onko-folfox-requestgroup-modification",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie|2026.0.3"]
  },
  "status" : "active",
  "intent" : "proposal",
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "code" : "CH",
      "display" : "Chemotherapie"
    }],
    "text" : "Chemotherapie"
  },
  "subject" : {
    "reference" : "Patient/example-modification"
  },
  "authoredOn" : "2024-03-05",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-ascending-colon-cancer-diagnosis"
  }],
  "action" : [{
    "title" : "FOLFOX4 Protocol",
    "description" : "FOLFOX4 chemotherapy protocol: Fluorouracil + Folinsäure + Oxaliplatin, 12 cycles planned",
    "code" : [{
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle",
        "code" : "FOLFOX4",
        "display" : "FOLFOX4"
      }]
    }],
    "action" : [{
      "title" : "Fluorouracil (5-FU)",
      "description" : "5-Fluorouracil - pyrimidine analog",
      "resource" : {
        "reference" : "MedicationRequest/mii-exa-onko-modification-5fu-request"
      }
    },
    {
      "title" : "Folinsäure (Leucovorin)",
      "description" : "Folinic acid - enhances 5-FU efficacy",
      "resource" : {
        "reference" : "MedicationRequest/mii-exa-onko-modification-leucovorin-request"
      }
    },
    {
      "title" : "Oxaliplatin",
      "description" : "Platinum-based chemotherapy agent",
      "resource" : {
        "reference" : "MedicationRequest/mii-exa-onko-modification-oxaliplatin-request"
      }
    }]
  }]
}

```
