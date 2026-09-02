# MII EXA Onkologie Nebenwirkung Anämie CTCAE Grad 3 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onkologie Nebenwirkung Anämie CTCAE Grad 3**

## Example AdverseEvent: MII EXA Onkologie Nebenwirkung Anämie CTCAE Grad 3

-------

**English**

-------

Profile: [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md)

**MII EX Onkologie Nebenwirkung CTCAE-Version**: CTCAE Version 4.03

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
