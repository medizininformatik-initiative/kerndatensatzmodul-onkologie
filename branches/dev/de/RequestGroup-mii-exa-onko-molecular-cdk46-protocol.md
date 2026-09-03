# mii-exa-onko-molecular-cdk46-protocol - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-molecular-cdk46-protocol**

## Beispiel RequestGroup: mii-exa-onko-molecular-cdk46-protocol

-------

**German**

-------

Profile: [MII PR Onkologie Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md) version: 2027.0.0-ballot.rc1

**status**: Active

**intent**: Proposal

**code**: CDK4/6 Inhibitor + Hormontherapie Kombination

**subject**: [Maria Müller Female, DoB: 1968-07-22 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#MTB-2024-001)](Patient-mii-exa-onko-molecular-board-patient.md)

**authoredOn**: 2024-01-15

**reasonReference**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

### Actions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Title** | **Description** | **Resource** |
| * | CDK4/6 Inhibitor (pharmazeutische Klasse) | Beliebiger CDK4/6 Inhibitor: Palbociclib, Ribociclib oder Abemaciclib je nach Verfügbarkeit und Patientenfaktoren | [MedicationRequest: status = active; intent = option; medication[x] = Cyclin-abhängige Kinasen (CDK)-Inhibitoren; authoredOn = 2024-01-15; note = Molekulares Tumorboard empfiehlt beliebigen CDK4/6 Inhibitor basierend auf HR+/HER2- Profil. Konkrete Wirkstoffauswahl nach Verfügbarkeit und Patientenfaktoren.](MedicationRequest-mii-exa-onko-cdk46-class-medication.md) |



## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "mii-exa-onko-molecular-cdk46-protocol",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie|2027.0.0-ballot.rc1"]
  },
  "status" : "active",
  "intent" : "proposal",
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "code" : "CZ"
    }],
    "text" : "CDK4/6 Inhibitor + Hormontherapie Kombination"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-molecular-board-patient"
  },
  "authoredOn" : "2024-01-15",
  "reasonReference" : [{
    "reference" : "Condition/primaertumor-example"
  }],
  "action" : [{
    "title" : "CDK4/6 Inhibitor (pharmazeutische Klasse)",
    "description" : "Beliebiger CDK4/6 Inhibitor: Palbociclib, Ribociclib oder Abemaciclib je nach Verfügbarkeit und Patientenfaktoren",
    "resource" : {
      "reference" : "MedicationRequest/mii-exa-onko-cdk46-class-medication"
    }
  }]
}

```
