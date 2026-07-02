# mii-exa-onko-pertuzumab-therapie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Procedure: mii-exa-onko-pertuzumab-therapie

-------

**German**

-------

Profile: [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md) version: 2026.0.3

**MII EX Onko Systemische Therapie Intention**: kurativ

**basedOn**: [CarePlan: status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2024-01-15](CarePlan-mii-exa-onko-tumorkonferenz-molekular.md)

**status**: Preparation

**category**: Administration of medication

**code**: Pertuzumab

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**performed**: 2024-02-01 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-pertuzumab-therapie",
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
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-molekular"
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
      "code" : "8-543",
      "display" : "Mittelgradig komplexe und intensive Blockchemotherapie"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-art",
      "code" : "ZS"
    }],
    "text" : "Pertuzumab"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "performedPeriod" : {
    "start" : "2024-02-01"
  }
}

```
