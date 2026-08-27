# Hauptprocedure: Komplexe abdominale Tumorchirurgie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hauptprocedure: Komplexe abdominale Tumorchirurgie**

## Example Procedure: Hauptprocedure: Komplexe abdominale Tumorchirurgie

-------

**English**

-------

Profile: [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md)

**MII EX Onko Operation Intention**: kurativ

**status**: Completed

**category**: Surgical procedure

**code**: Laparotomy (procedure)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**performed**: 2021-09-30

**reasonReference**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-PatientKimMusterperson-Diagnosis-1.md)

**outcome**: Kein Residualtumor



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "PatientKimMusterperson-Procedure-4",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K",
        "display" : "kurativ"
      }]
    }
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
      "system" : "http://snomed.info/sct",
      "code" : "86481000",
      "display" : "Laparotomy (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "performedDateTime" : "2021-09-30",
  "reasonReference" : [{
    "reference" : "Condition/PatientKimMusterperson-Diagnosis-1"
  }],
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
      "code" : "R0"
    }]
  }
}

```
