# PatientKimMusterperson-SystemicTherapyMedication-2a - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-SystemicTherapyMedication-2a**

## Example MedicationStatement: PatientKimMusterperson-SystemicTherapyMedication-2a

-------

**English**

-------

Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md)

**partOf**: [Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie](Procedure-PatientKimMusterperson-SystemicTherapy-2.md)

**status**: Completed

**medication**: Gemcitabin

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2021-11-08 --> 2022-01-09

**note**: 

> 

Gem-Carbo




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "PatientKimMusterperson-SystemicTherapyMedication-2a",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
  },
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-2"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "code" : "L01BC05",
      "display" : "Gemcitabin"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectivePeriod" : {
    "start" : "2021-11-08",
    "end" : "2022-01-09"
  },
  "note" : [{
    "text" : "Gem-Carbo"
  }]
}

```
