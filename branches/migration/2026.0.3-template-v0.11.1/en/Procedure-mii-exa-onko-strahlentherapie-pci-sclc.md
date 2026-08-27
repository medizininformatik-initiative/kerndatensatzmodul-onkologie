# MII EXA Onkologie Strahlentherapie PCI bei SCLC (prophylaktisch) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onkologie Strahlentherapie PCI bei SCLC (prophylaktisch)**

## Example Procedure: MII EXA Onkologie Strahlentherapie PCI bei SCLC (prophylaktisch)

-------

**English**

-------

Profile: [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie.md) version: 2026.0.3

**MII EX Onko Strahlentherapie Intention**: kurativ

**MII EX Onko Strahlentherapie Stellung zur OP**: Sonstiges

**status**: Completed

**category**: Radiotherapy (procedure)

**code**: 8-52

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**performed**: 2026-05-04 --> 2026-05-18



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-strahlentherapie-pci-sclc",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie|2026.0.3"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-stellungzurop",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop",
        "code" : "S"
      }]
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1287742003",
      "display" : "Radiotherapy (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2026",
      "code" : "8-52"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "performedPeriod" : {
    "start" : "2026-05-04",
    "end" : "2026-05-18"
  }
}

```
