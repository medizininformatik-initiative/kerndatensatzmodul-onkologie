# mii-exa-onko-cdk46-class-medication - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-cdk46-class-medication**

## Beispiel MedicationRequest: mii-exa-onko-cdk46-class-medication

-------

**German**

-------

Profile: [MII PR Onkologie Therapieempfehlung Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md) version: 2027.0.0-ballot.rc1

**status**: Active

**intent**: Option

**medication**: CDK4/6 Inhibitor (Klasse L01EF) - Palbociclib, Ribociclib oder Abemaciclib

**subject**: [Maria Müller Female, DoB: 1968-07-22 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#MTB-2024-001)](Patient-mii-exa-onko-molecular-board-patient.md)

**authoredOn**: 2024-01-15

**reasonReference**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

**note**: 

> 

Molekulares Tumorboard empfiehlt beliebigen CDK4/6 Inhibitor basierend auf HR+/HER2- Profil. Konkrete Wirkstoffauswahl nach Verfügbarkeit und Patientenfaktoren.




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-onko-cdk46-class-medication",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation|2027.0.0-ballot.rc1"]
  },
  "status" : "active",
  "intent" : "option",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "code" : "L01EF",
      "display" : "Cyclin-abhängige Kinasen (CDK)-Inhibitoren"
    }],
    "text" : "CDK4/6 Inhibitor (Klasse L01EF) - Palbociclib, Ribociclib oder Abemaciclib"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-molecular-board-patient"
  },
  "authoredOn" : "2024-01-15",
  "reasonReference" : [{
    "reference" : "Condition/primaertumor-example"
  }],
  "note" : [{
    "text" : "Molekulares Tumorboard empfiehlt beliebigen CDK4/6 Inhibitor basierend auf HR+/HER2- Profil. Konkrete Wirkstoffauswahl nach Verfügbarkeit und Patientenfaktoren."
  }]
}

```
