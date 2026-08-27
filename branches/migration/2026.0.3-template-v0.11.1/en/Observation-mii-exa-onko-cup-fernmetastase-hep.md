# mii-exa-onko-cup-fernmetastase-hep - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-cup-fernmetastase-hep**

## Example Observation: mii-exa-onko-cup-fernmetastase-hep

-------

**English**

-------

Profile: [MII PR Onkologie Fernmetastasen](StructureDefinition-mii-pr-onko-fernmetastasen.md) version: 2026.0.3

**status**: Final

**code**: 385421009

**subject**: [CUP Musterfall Male, DoB: 1958-11-02](Patient-mii-exa-onko-cup-patient.md)

**focus**: [Condition Bösartige Neubildung, primäre Lokalisation unbekannt, so bezeichnet](Condition-mii-exa-onko-cup-diagnose.md)

**effective**: 2026-02-11

**value**: Leber



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-cup-fernmetastase-hep",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen|2026.0.3"]
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
      "code" : "HEP",
      "display" : "Leber"
    }]
  }
}

```
