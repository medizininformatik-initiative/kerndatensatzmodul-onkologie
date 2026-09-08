# PatientKimMusterperson-Procedure-2 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-Procedure-2**

## Beispiel Procedure: PatientKimMusterperson-Procedure-2

-------

**German**

-------

Profile: [MII PR Prozedur Procedure](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-prozedur-procedure.html)

**status**: Completed

**category**: Diagnostic assessment (procedure)

**code**: Diagnostische (perkutane) Punktion und Aspiration der Bauchhöhle: Aszitespunktion

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**performed**: 2021-06-15



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "PatientKimMusterperson-Procedure-2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"]
  },
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "165197003",
      "display" : "Diagnostic assessment (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2021",
      "code" : "1-853.2",
      "display" : "Diagnostische (perkutane) Punktion und Aspiration der Bauchhöhle: Aszitespunktion"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "performedDateTime" : "2021-06-15"
}

```
