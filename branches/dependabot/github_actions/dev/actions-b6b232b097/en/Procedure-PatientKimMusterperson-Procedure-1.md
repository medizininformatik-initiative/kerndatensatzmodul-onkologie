# PatientKimMusterperson-Procedure-1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Procedure-1**

## Example Procedure: PatientKimMusterperson-Procedure-1

-------

**English**

-------

Profile: [MII PR Prozedur Procedure](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-prozedur-procedure.html)

**status**: Completed

**category**: Imaging (procedure)

**code**: Computertomographie des Abdomens mit Kontrastmittel

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**performed**: 2021-06-10



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "PatientKimMusterperson-Procedure-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"]
  },
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363679005",
      "display" : "Imaging (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2021",
      "code" : "3-225",
      "display" : "Computertomographie des Abdomens mit Kontrastmittel"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "performedDateTime" : "2021-06-10"
}

```
