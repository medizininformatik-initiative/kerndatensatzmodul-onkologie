# mii-pr-onko-nebenwirkung-text - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-pr-onko-nebenwirkung-text**

## Beispiel AdverseEvent: mii-pr-onko-nebenwirkung-text

-------

**German**

-------

Profile: [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md)

**actuality**: Adverse Event

**event**: Schüttelfrost

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**seriousness**: schwerwiegend

### SuspectEntities

| | |
| :--- | :--- |
| - | **Instance** |
| * | [Procedure 8-52](Procedure-mii-exa-onko-strahlentherapie-strahlentherapie-1.md) |



## Resource Content

```json
{
  "resourceType" : "AdverseEvent",
  "id" : "mii-pr-onko-nebenwirkung-text",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event"]
  },
  "actuality" : "actual",
  "event" : {
    "text" : "Schüttelfrost"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "seriousness" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad",
      "code" : "3",
      "display" : "schwerwiegend"
    }]
  },
  "suspectEntity" : [{
    "instance" : {
      "reference" : "Procedure/mii-exa-onko-strahlentherapie-strahlentherapie-1"
    }
  }]
}

```
