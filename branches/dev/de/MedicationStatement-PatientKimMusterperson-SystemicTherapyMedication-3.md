# PatientKimMusterperson-SystemicTherapyMedication-3 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-SystemicTherapyMedication-3**

## Beispiel MedicationStatement: PatientKimMusterperson-SystemicTherapyMedication-3

-------

**German**

-------

Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md)

**partOf**: [Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie](Procedure-PatientKimMusterperson-SystemicTherapy-3.md)

**status**: Completed

**medication**: Niraparib

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2022-01-25 --> (ongoing)

**note**: 

> 

Niraparib




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "PatientKimMusterperson-SystemicTherapyMedication-3",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
  },
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-3"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "code" : "L01XK02",
      "display" : "Niraparib"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectivePeriod" : {
    "start" : "2022-01-25"
  },
  "note" : [{
    "text" : "Niraparib"
  }]
}

```
