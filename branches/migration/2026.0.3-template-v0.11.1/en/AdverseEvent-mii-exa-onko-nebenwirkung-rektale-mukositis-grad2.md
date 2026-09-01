# MII EXA Onkologie Nebenwirkung Rektale Mukositis CTCAE Grad 2 (MedDRA-only) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onkologie Nebenwirkung Rektale Mukositis CTCAE Grad 2 (MedDRA-only)**

## Example AdverseEvent: MII EXA Onkologie Nebenwirkung Rektale Mukositis CTCAE Grad 2 (MedDRA-only)

-------

**English**

-------

Profile: [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md)

**MII EX Onkologie Nebenwirkung CTCAE-Version**: CTCAE Version 4.03

**actuality**: Adverse Event

**event**: Rektale Mukositis

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**date**: 2021-09-10

**seriousness**: moderat

### SuspectEntities

| | |
| :--- | :--- |
| - | **Instance** |
| * | [Procedure Strahlentherapie](Procedure-mii-exa-onko-strahlentherapie-strahlentherapie-1.md) |



## Resource Content

```json
{
  "resourceType" : "AdverseEvent",
  "id" : "mii-exa-onko-nebenwirkung-rektale-mukositis-grad2",
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
      "code" : "10063190",
      "display" : "Rektale Mukositis"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "date" : "2021-09-10",
  "seriousness" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad",
      "code" : "2",
      "display" : "moderat"
    }]
  },
  "suspectEntity" : [{
    "instance" : {
      "reference" : "Procedure/mii-exa-onko-strahlentherapie-strahlentherapie-1"
    }
  }]
}

```
