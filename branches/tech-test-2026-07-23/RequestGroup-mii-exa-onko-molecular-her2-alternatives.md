# mii-exa-onko-molecular-her2-alternatives - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-molecular-her2-alternatives**

## Example RequestGroup: mii-exa-onko-molecular-her2-alternatives

Profile: [MII PR Onkologie Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md) version: 2026.0.3

**status**: Active

**intent**: Proposal

**code**: HER2-gerichtete Therapie - Resistenz-basierte Auswahl

**subject**: [Maria Müller Female, DoB: 1968-07-22 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#MTB-2024-001)](Patient-mii-exa-onko-molecular-board-patient.md)

**authoredOn**: 2024-01-16

**reasonReference**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

> **action****title**: HER2-Therapie Optionen**description**: Auswahl basierend auf Resistenzprofil und klinischer Situation**selectionBehavior**: Any**requiredBehavior**: Must

### Actions

| | | |
| :--- | :--- | :--- |
| - | **Title** | **Resource** |
| * | Zweite Linie: T-DM1 | [MedicationRequest: status = active; intent = option; medication[x] = Trastuzumab emtansin; authoredOn = 2024-01-16; note = Zweitlinien-Option, empfohlen bei Progression unter Trastuzumab-basierter Therapie](MedicationRequest-mii-exa-onko-tdm1-option.md) |
| * | Dritte Linie: Tucatinib-Kombination | [MedicationRequest: status = active; intent = option; medication[x] = Tucatinib; authoredOn = 2024-01-16; note = Drittlinien-Kombination für Hirnmetastasen oder mehrfach resistente HER2+ Erkrankung](MedicationRequest-mii-exa-onko-tucatinib-option.md) |




## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "mii-exa-onko-molecular-her2-alternatives",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie|2026.0.3"]
  },
  "status" : "active",
  "intent" : "proposal",
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "code" : "ZS"
    }],
    "text" : "HER2-gerichtete Therapie - Resistenz-basierte Auswahl"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-molecular-board-patient"
  },
  "authoredOn" : "2024-01-16",
  "reasonReference" : [{
    "reference" : "Condition/primaertumor-example"
  }],
  "action" : [{
    "title" : "HER2-Therapie Optionen",
    "description" : "Auswahl basierend auf Resistenzprofil und klinischer Situation",
    "selectionBehavior" : "any",
    "requiredBehavior" : "must",
    "action" : [{
      "title" : "Zweite Linie: T-DM1",
      "resource" : {
        "reference" : "MedicationRequest/mii-exa-onko-tdm1-option"
      }
    },
    {
      "title" : "Dritte Linie: Tucatinib-Kombination",
      "resource" : {
        "reference" : "MedicationRequest/mii-exa-onko-tucatinib-option"
      }
    }]
  }]
}

```
