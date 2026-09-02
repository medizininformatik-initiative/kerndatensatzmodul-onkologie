# mii-pr-onko-nebenwirkung-0 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-pr-onko-nebenwirkung-0**

## Example AdverseEvent: mii-pr-onko-nebenwirkung-0

-------

**English**

-------

Profile: [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md)

**MII EX Onkologie Nebenwirkung CTCAE-Version**: CTCAE Version 4.03

**actuality**: Adverse Event

**event**: Fatigue

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**seriousness**: Lebensbedrohlich

### SuspectEntities

| | |
| :--- | :--- |
| - | **Instance** |
| * | [Procedure 8-52](Procedure-mii-exa-onko-strahlentherapie-strahlentherapie-1.md) |



## Resource Content

```json
{
  "resourceType" : "AdverseEvent",
  "id" : "mii-pr-onko-nebenwirkung-0",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-nebenwirkung-ctcae-version",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-version",
        "code" : "4.03",
        "display" : "CTCAE Version 4.03"
      }]
    }
  }],
  "actuality" : "actual",
  "event" : {
    "coding" : [{
      "system" : "https://www.meddra.org",
      "code" : "10016256",
      "display" : "Fatigue"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "84229001",
      "display" : "Fatigue"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "seriousness" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad",
      "code" : "4",
      "display" : "Lebensbedrohlich"
    }]
  },
  "suspectEntity" : [{
    "instance" : {
      "reference" : "Procedure/mii-exa-onko-strahlentherapie-strahlentherapie-1"
    }
  }]
}

```
