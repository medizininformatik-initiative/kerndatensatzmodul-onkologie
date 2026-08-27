# Medikation Imatinib (ATC Versionsübergang) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medikation Imatinib (ATC Versionsübergang)**

## Example MedicationStatement: Medikation Imatinib (ATC Versionsübergang)

-------

**English**

-------

Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md) version: 2026.0.3

**basedOn**: [CarePlan/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/CarePlan/example)

**partOf**: [Procedure/systemische-therapie-example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/systemische-therapie-example)

**status**: Completed

**medication**: Imatinib (BCR-ABL Tyrosinkinase-Inhibitor)

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**effective**: 2020-12-01 --> 2024-08-30

**note**: 

> 

CML-Protokoll mit Imatinib




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-onko-medikation-imatinib-atc-version-transition",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation|2026.0.3"]
  },
  "basedOn" : [{
    "reference" : "CarePlan/example"
  }],
  "partOf" : [{
    "reference" : "Procedure/systemische-therapie-example"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2020",
      "code" : "L01XE01",
      "display" : "Imatinib"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2021",
      "code" : "L01EA01",
      "display" : "Imatinib"
    }],
    "text" : "Imatinib (BCR-ABL Tyrosinkinase-Inhibitor)"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectivePeriod" : {
    "start" : "2020-12-01",
    "end" : "2024-08-30"
  },
  "note" : [{
    "text" : "CML-Protokoll mit Imatinib"
  }]
}

```
