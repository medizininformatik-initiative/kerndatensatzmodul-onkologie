# mii-exa-onko-mamma-praeoperative-markierung-1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-mamma-praeoperative-markierung-1**

## Example Procedure: mii-exa-onko-mamma-praeoperative-markierung-1

-------

**English**

-------

Profile: [MII PR Onkologie Präoperative Markierung Mamma](StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.md) version: 2027.0.0-ballot.rc1

**status**: Completed

**category**: Diagnostic procedure (procedure)

**code**: Insertion of guide wire into breast using ultrasound guidance (procedure)

**subject**: [Martha MammaCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-mamma-bundle-patient.md)

**performed**: 2024-01-15 09:00:00+0100

**reasonReference**: [Condition Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse](Condition-mii-exa-onko-mamma-diagnose.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-mamma-praeoperative-markierung-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-praeoperative-markierung|2027.0.0-ballot.rc1"]
  },
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "103693007",
      "display" : "Diagnostic procedure (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "433222002",
      "display" : "Insertion of guide wire into breast using ultrasound guidance (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-mamma-bundle-patient"
  },
  "performedDateTime" : "2024-01-15T09:00:00+01:00",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-mamma-diagnose"
  }]
}

```
