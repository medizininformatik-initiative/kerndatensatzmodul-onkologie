# mii-exa-onko-palbociclib-therapie - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-palbociclib-therapie**

## Beispiel Procedure: mii-exa-onko-palbociclib-therapie

-------

**German**

-------

Profile: [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md) version: 2027.0.0-ballot.rc1

**MII EX Onko Systemische Therapie Intention**: kurativ

**basedOn**: [CarePlan: status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2024-01-15](CarePlan-mii-exa-onko-tumorkonferenz-molekular.md)

**partOf**: [Procedure Applikation von Medikamenten, Liste 1: Trastuzumab, intravenös](Procedure-mii-exa-onko-trastuzumab-therapie.md)

**status**: Preparation

**category**: Administration of medication

**code**: Palbociclib

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**performed**: 2024-02-15 --> (ongoing)

**note**: 

> 

Implements CarePlan activity[0]: Anti-HER2 targeted therapy




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-palbociclib-therapie",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K"
      }]
    }
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-molekular"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-onko-trastuzumab-therapie"
  }],
  "status" : "preparation",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "18629005"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2024",
      "code" : "8-54",
      "display" : "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-art",
      "code" : "ZS"
    }],
    "text" : "Palbociclib"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "performedPeriod" : {
    "start" : "2024-02-15"
  },
  "note" : [{
    "text" : "Implements CarePlan activity[0]: Anti-HER2 targeted therapy"
  }]
}

```
