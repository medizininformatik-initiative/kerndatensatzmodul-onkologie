# mii-pr-onko-nebenwirkung-0 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-pr-onko-nebenwirkung-0**

## Beispiel AdverseEvent: mii-pr-onko-nebenwirkung-0

-------

**German**

-------

Profile: [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md)

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
  "actuality" : "actual",
  "event" : {
    "coding" : [{
      "system" : "https://www.meddra.org",
      "version" : "Version 4",
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
