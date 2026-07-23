# mii-pr-onko-nebenwirkung-text - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-pr-onko-nebenwirkung-text**

## Example AdverseEvent: mii-pr-onko-nebenwirkung-text

Profile: [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md)

**actuality**: Adverse Event

**event**: Schüttelfrost

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**seriousness**: schwerwiegend

### SuspectEntities

| | |
| :--- | :--- |
| - | **Instance** |
| * | [Procedure/Strahlentherapie](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/Strahlentherapie) |



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
      "reference" : "Procedure/Strahlentherapie"
    }
  }]
}

```
