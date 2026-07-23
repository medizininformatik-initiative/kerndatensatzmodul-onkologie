# MII EXA Onko KRK Operation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onko KRK Operation**

## Example Procedure: MII EXA Onko KRK Operation

Profile: [MII PR Onkologie Präoperative Drahtmarkierung Mamma](StructureDefinition-mii-pr-onko-krk-operation.md)

**MII EX Onko Operation Intention**: kurativ

**status**: Completed

**category**: Surgical procedure

**code**: Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion: Laparoskopisch mit Anastomose

**subject**: [Klaus KolorektalCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-krk-bundle-patient.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP)](Encounter-mii-exa-onko-krk-bundle-encounter.md)

**performed**: 2024-03-22 08:00:00+0100

**reasonReference**: [Condition Bösartige Neubildung des Kolons](Condition-mii-exa-onko-krk-diagnose.md)

**note**: 

> 

Laparoskopische Resektion beim kolorektalen Karzinom




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-krk-operation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-operation"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K",
        "display" : "kurativ"
      }]
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003",
      "display" : "Surgical procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2024",
      "code" : "5-484.55",
      "display" : "Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion: Laparoskopisch mit Anastomose"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-onko-krk-bundle-encounter"
  },
  "performedDateTime" : "2024-03-22T08:00:00+01:00",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-krk-diagnose"
  }],
  "note" : [{
    "text" : "Laparoskopische Resektion beim kolorektalen Karzinom"
  }]
}

```
