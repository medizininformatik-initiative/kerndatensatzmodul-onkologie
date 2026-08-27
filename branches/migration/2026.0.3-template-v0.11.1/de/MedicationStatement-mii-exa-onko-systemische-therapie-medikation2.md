# Example chemotherapy 2 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Example chemotherapy 2**

## Beispiel MedicationStatement: Example chemotherapy 2

-------

**German**

-------

Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md) version: 2026.0.3

**partOf**: [Procedure Chemotherapie](Procedure-mii-exa-onko-systemische-therapie-1.md)

**status**: Completed

**medication**: Doxorubicin

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**effective**: 2021-12-04 --> 2022-04-06

**note**: 

> 

AC




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-onko-systemische-therapie-medikation2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation|2026.0.3"]
  },
  "partOf" : [{
    "reference" : "Procedure/mii-exa-onko-systemische-therapie-1"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2022",
      "code" : "L01DB01",
      "display" : "Doxorubicin"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectivePeriod" : {
    "start" : "2021-12-04",
    "end" : "2022-04-06"
  },
  "note" : [{
    "text" : "AC"
  }]
}

```
