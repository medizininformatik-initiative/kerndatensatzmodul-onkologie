# MII EXA Onkologie Nebenwirkung Anämie CTCAE Grad 3 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Onkologie Nebenwirkung Anämie CTCAE Grad 3**

## Beispiel AdverseEvent: MII EXA Onkologie Nebenwirkung Anämie CTCAE Grad 3

-------

**German**

-------

Profile: [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md)

**actuality**: Adverse Event

**event**: Anämie

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**date**: 2021-08-30

**seriousness**: schwerwiegend

### SuspectEntities

| | |
| :--- | :--- |
| - | **Instance** |
| * | [Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie](Procedure-PatientKimMusterperson-SystemicTherapy-1.md) |



## Resource Content

```json
{
  "resourceType" : "AdverseEvent",
  "id" : "mii-exa-onko-nebenwirkung-anaemie-grad3",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event"]
  },
  "actuality" : "actual",
  "event" : {
    "coding" : [{
      "system" : "https://www.meddra.org",
      "version" : "Version 4",
      "code" : "10002272",
      "display" : "Anämie"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "271737000",
      "display" : "Anaemia"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "date" : "2021-08-30",
  "seriousness" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad",
      "code" : "3",
      "display" : "schwerwiegend"
    }]
  },
  "suspectEntity" : [{
    "instance" : {
      "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-1"
    }
  }]
}

```
