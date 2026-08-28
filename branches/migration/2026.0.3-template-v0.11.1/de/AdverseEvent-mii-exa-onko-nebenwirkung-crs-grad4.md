# MII EXA Onkologie Nebenwirkung Cytokine-Release-Syndrom CTCAE Grad 4 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Onkologie Nebenwirkung Cytokine-Release-Syndrom CTCAE Grad 4**

## Beispiel AdverseEvent: MII EXA Onkologie Nebenwirkung Cytokine-Release-Syndrom CTCAE Grad 4

-------

**German**

-------

Profile: [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md)

**actuality**: Adverse Event

**event**: Zytokin-Freisetzungs-Syndrom

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**date**: 2021-09-02

**seriousness**: lebensbedrohlich

### SuspectEntities

| | |
| :--- | :--- |
| - | **Instance** |
| * | [MedicationStatement: status = completed; medication[x] = Paclitaxel; effective[x] = 2021-07-05 --> 2021-09-05; note = CarboTax](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-1a.md) |



## Resource Content

```json
{
  "resourceType" : "AdverseEvent",
  "id" : "mii-exa-onko-nebenwirkung-crs-grad4",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event"]
  },
  "actuality" : "actual",
  "event" : {
    "coding" : [{
      "system" : "https://www.meddra.org",
      "version" : "Version 4",
      "code" : "10052015",
      "display" : "Zytokin-Freisetzungs-Syndrom"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "891589671000119104",
      "display" : "Cytokine storm syndrome"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "date" : "2021-09-02",
  "seriousness" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad",
      "code" : "4",
      "display" : "lebensbedrohlich"
    }]
  },
  "suspectEntity" : [{
    "instance" : {
      "reference" : "MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-1a"
    }
  }]
}

```
