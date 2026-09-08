# FOLFOX Therapieempfehlung (RequestGroup) - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **FOLFOX Therapieempfehlung (RequestGroup)**

## Beispiel RequestGroup: FOLFOX Therapieempfehlung (RequestGroup)

-------

**German**

-------

Profile: [MII PR Onkologie Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md) version: 2027.0.0-ballot.rc1

**status**: Active

**intent**: Proposal

**code**: Chemotherapie

**subject**: [Hans Schmidt Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)](Patient-mii-exa-onko-folfox-patient.md)

**authoredOn**: 2024-03-10

**reasonReference**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md)

> **action****title**: FOLFOX4 Protocol**description**: FOLFOX4 chemotherapy protocol: Fluorouracil + Folinsäure + Oxaliplatin**code**: FOLFOX4

### Actions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Title** | **Description** | **Resource** |
| * | Fluorouracil (5-FU) | 5-Fluorouracil - pyrimidine analog, antineoplastic | [MedicationRequest: status = active; intent = proposal; medication[x] = Fluorouracil; authoredOn = 2024-03-10](MedicationRequest-mii-exa-onko-folfox-5fu-request.md) |
| * | Folinsäure (Leucovorin) | Folinic acid - enhances 5-FU efficacy | [MedicationRequest: status = active; intent = proposal; medication[x] = Calciumfolinat; authoredOn = 2024-03-10](MedicationRequest-mii-exa-onko-folfox-leucovorin-request.md) |
| * | Oxaliplatin | Platinum-based chemotherapy agent | [MedicationRequest: status = active; intent = proposal; medication[x] = Oxaliplatin; authoredOn = 2024-03-10](MedicationRequest-mii-exa-onko-folfox-oxaliplatin-request.md) |




## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "mii-exa-onko-folfox-requestgroup",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie|2027.0.0-ballot.rc1"]
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
    "reference" : "Patient/mii-exa-onko-folfox-patient"
  },
  "authoredOn" : "2024-03-10",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
  }],
  "action" : [{
    "title" : "FOLFOX4 Protocol",
    "description" : "FOLFOX4 chemotherapy protocol: Fluorouracil + Folinsäure + Oxaliplatin",
    "code" : [{
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle",
        "code" : "FOLFOX4",
        "display" : "FOLFOX4"
      }]
    }],
    "action" : [{
      "title" : "Fluorouracil (5-FU)",
      "description" : "5-Fluorouracil - pyrimidine analog, antineoplastic",
      "resource" : {
        "reference" : "MedicationRequest/mii-exa-onko-folfox-5fu-request"
      }
    },
    {
      "title" : "Folinsäure (Leucovorin)",
      "description" : "Folinic acid - enhances 5-FU efficacy",
      "resource" : {
        "reference" : "MedicationRequest/mii-exa-onko-folfox-leucovorin-request"
      }
    },
    {
      "title" : "Oxaliplatin",
      "description" : "Platinum-based chemotherapy agent",
      "resource" : {
        "reference" : "MedicationRequest/mii-exa-onko-folfox-oxaliplatin-request"
      }
    }]
  }]
}

```
