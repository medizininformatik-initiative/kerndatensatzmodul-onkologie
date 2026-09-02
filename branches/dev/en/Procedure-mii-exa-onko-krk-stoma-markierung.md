# MII EXA Onko KRK Stoma-Markierung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onko KRK Stoma-Markierung**

## Example Procedure: MII EXA Onko KRK Stoma-Markierung

-------

**English**

-------

Profile: [MII PR Onkologie KRK Stoma-Markierung](StructureDefinition-mii-pr-onko-krk-stoma-markierung.md)

**status**: Completed

**statusReason**: Not performed (qualifier value)

**category**: Surgical procedure

**code**: Marking position of planned stoma site (procedure)

**subject**: [Klaus KolorektalCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-krk-bundle-patient.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP)](Encounter-mii-exa-onko-krk-bundle-encounter.md)

**performed**: 2024-03-15 09:30:00+0100

**reasonReference**: [Condition Bösartige Neubildung des Kolons](Condition-mii-exa-onko-krk-diagnose.md)

**note**: 

> 

Präoperative Markierung der geplanten Stoma-Position im rechten Hemiabdomen nach Rücksprache mit dem Patienten




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-krk-stoma-markierung",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-stoma-markierung"]
  },
  "status" : "completed",
  "statusReason" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "262008008",
      "display" : "Not performed (qualifier value)"
    }]
  },
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003",
      "display" : "Surgical procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "225134005",
      "display" : "Marking position of planned stoma site (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-onko-krk-bundle-encounter"
  },
  "performedDateTime" : "2024-03-15T09:30:00+01:00",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-krk-diagnose"
  }],
  "note" : [{
    "text" : "Präoperative Markierung der geplanten Stoma-Position im rechten Hemiabdomen nach Rücksprache mit dem Patienten"
  }]
}

```
