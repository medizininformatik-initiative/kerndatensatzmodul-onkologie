# Example chemotherapy 1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example chemotherapy 1**

## Example MedicationStatement: Example chemotherapy 1

-------

**English**

-------

Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md) version: 2026.0.3

**partOf**: [Procedure Chemotherapie](Procedure-mii-exa-onko-systemische-therapie-1.md)

**status**: Completed

**medication**: Cyclophosphamid

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2021-12-04 --> 2022-04-06

**note**: 

> 

AC




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-onko-systemische-therapie-medikation1",
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
      "code" : "L01AA01",
      "display" : "Cyclophosphamid"
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
