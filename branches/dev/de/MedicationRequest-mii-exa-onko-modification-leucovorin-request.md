# MedicationRequest - Folinsäure (vollständig verabreicht) - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MedicationRequest - Folinsäure (vollständig verabreicht)**

## Beispiel MedicationRequest: MedicationRequest - Folinsäure (vollständig verabreicht)

-------

**German**

-------

Profile: [MII PR Onkologie Therapieempfehlung Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md) version: 2027.0.0-ballot.rc1

**status**: Completed

**intent**: Proposal

**medication**: Leucovorin (Folinsäure)

**subject**: [Martin Beispiel Male, DoB: 1958-11-03](Patient-example-modification.md)

**authoredOn**: 2024-03-05

**reasonReference**: [Condition Bösartige Neubildung: Colon ascendens](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md)

**note**: 

> 

Completed as planned for all 12 cycles




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-onko-modification-leucovorin-request",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation|2027.0.0-ballot.rc1"]
  },
  "status" : "completed",
  "intent" : "proposal",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "code" : "V03AF03",
      "display" : "Calciumfolinat"
    }],
    "text" : "Leucovorin (Folinsäure)"
  },
  "subject" : {
    "reference" : "Patient/example-modification"
  },
  "authoredOn" : "2024-03-05",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-ascending-colon-cancer-diagnosis"
  }],
  "note" : [{
    "text" : "Completed as planned for all 12 cycles"
  }]
}

```
