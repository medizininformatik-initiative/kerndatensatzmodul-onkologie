# mii-exa-onko-cup-fernmetastase-pul - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-cup-fernmetastase-pul**

## Beispiel Observation: mii-exa-onko-cup-fernmetastase-pul

-------

**German**

-------

Profile: [MII PR Onkologie Fernmetastasen](StructureDefinition-mii-pr-onko-fernmetastasen.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Site of distant metastasis

**subject**: [CUP Musterfall Male, DoB: 1958-11-02](Patient-mii-exa-onko-cup-patient.md)

**focus**: [Condition Bösartige Neubildung, primäre Lokalisation unbekannt, so bezeichnet](Condition-mii-exa-onko-cup-diagnose.md)

**effective**: 2026-02-11

**value**: Lunge



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-cup-fernmetastase-pul",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385421009"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-cup-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-cup-diagnose"
  }],
  "effectiveDateTime" : "2026-02-11",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-fernmetastasen",
      "code" : "PUL",
      "display" : "Lunge"
    }]
  }
}

```
