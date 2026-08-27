# PatientKimMusterperson-Procedure-4c - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Procedure-4c**

## Example Procedure: PatientKimMusterperson-Procedure-4c

-------

**English**

-------

Profile: [MII PR Prozedur Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure)

**partOf**: [Procedure Laparotomy (procedure)](Procedure-PatientKimMusterperson-Procedure-4.md)

**status**: Completed

**category**: Surgical procedure

**code**: Salpingektomie

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**performed**: 2021-09-30

**outcome**: Kein Residualtumor



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "PatientKimMusterperson-Procedure-4c",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"]
  },
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003",
      "display" : "Surgical procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2021",
      "code" : "5-661",
      "display" : "Salpingektomie"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "performedDateTime" : "2021-09-30",
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
      "code" : "R0"
    }]
  }
}

```
