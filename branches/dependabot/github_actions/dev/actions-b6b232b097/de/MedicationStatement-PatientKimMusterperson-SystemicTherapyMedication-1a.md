# PatientKimMusterperson-SystemicTherapyMedication-1a - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-SystemicTherapyMedication-1a**

## Beispiel MedicationStatement: PatientKimMusterperson-SystemicTherapyMedication-1a

-------

**German**

-------

Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md)

**partOf**: [Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie](Procedure-PatientKimMusterperson-SystemicTherapy-1.md)

**status**: Completed

**medication**: Paclitaxel

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2021-07-05 --> 2021-09-05

**note**: 

> 

CarboTax




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "PatientKimMusterperson-SystemicTherapyMedication-1a",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
  },
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-1"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "code" : "L01CD01",
      "display" : "Paclitaxel"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectivePeriod" : {
    "start" : "2021-07-05",
    "end" : "2021-09-05"
  },
  "note" : [{
    "text" : "CarboTax"
  }]
}

```
