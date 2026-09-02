# Example systemic therapy - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Example systemic therapy**

## Beispiel Procedure: Example systemic therapy

-------

**German**

-------

Profile: [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md) version: 2026.0.3

**MII EX Onko Systemische Therapie Intention**: kurativ

**MII EX Onko Systemische Therapie Stellung zur OP**: adjuvant

**status**: Completed

**category**: Chemotherapy (procedure)

**code**: Chemotherapie

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**performed**: 2021-12-04 --> 2022-04-06

**usedCode**: AC



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-systemische-therapie-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie|2026.0.3"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellungzurop",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop",
        "code" : "A"
      }]
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "367336001",
      "display" : "Chemotherapy (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "code" : "CH"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2021",
      "code" : "8-52"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "performedPeriod" : {
    "start" : "2021-12-04",
    "end" : "2022-04-06"
  },
  "usedCode" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle",
      "code" : "AC",
      "display" : "AC"
    }]
  }]
}

```
