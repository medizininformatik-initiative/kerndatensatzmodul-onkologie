# PatientKimMusterperson-Procedure-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Procedure-1**

## Beispiel Procedure: PatientKimMusterperson-Procedure-1

-------

**German**

-------

Profile: [MII PR Prozedur Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure)

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
