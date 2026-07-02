# mii-pr-onko-nebenwirkung-0 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Example AdverseEvent: mii-pr-onko-nebenwirkung-0

-------

**English**

-------

Profile: [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md)

**actuality**: Adverse Event

**event**: Fatigue

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**seriousness**: Lebensbedrohlich

### SuspectEntities

| | |
| :--- | :--- |
| - | **Instance** |
| * | [Procedure/Strahlentherapie](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/Strahlentherapie) |



## Resource Content

```json
{
  "resourceType" : "AdverseEvent",
  "id" : "mii-pr-onko-nebenwirkung-0",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event"]
  },
  "actuality" : "actual",
  "event" : {
    "coding" : [{
      "system" : "https://www.meddra.org",
      "version" : "Version 4",
      "code" : "10016256",
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
      "reference" : "Procedure/Strahlentherapie"
    }
  }]
}

```
