# mii-exa-onko-tucatinib-option - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-tucatinib-option**

## Example MedicationRequest: mii-exa-onko-tucatinib-option

-------

**English**

-------

Profile: [MII PR Onkologie Therapieempfehlung Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md) version: 2027.0.0-ballot.rc1

**status**: Active

**intent**: Option

**medication**: Tucatinib + Trastuzumab + Capecitabin

**subject**: [Maria Müller Female, DoB: 1968-07-22 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#MTB-2024-001)](Patient-mii-exa-onko-molecular-board-patient.md)

**authoredOn**: 2024-01-16

**reasonReference**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

**note**: 

> 

Drittlinien-Kombination für Hirnmetastasen oder mehrfach resistente HER2+ Erkrankung




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-onko-tucatinib-option",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation|2027.0.0-ballot.rc1"]
  },
  "status" : "active",
  "intent" : "option",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "code" : "L01EH03",
      "display" : "Tucatinib"
    }],
    "text" : "Tucatinib + Trastuzumab + Capecitabin"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-molecular-board-patient"
  },
  "authoredOn" : "2024-01-16",
  "reasonReference" : [{
    "reference" : "Condition/primaertumor-example"
  }],
  "note" : [{
    "text" : "Drittlinien-Kombination für Hirnmetastasen oder mehrfach resistente HER2+ Erkrankung"
  }]
}

```
