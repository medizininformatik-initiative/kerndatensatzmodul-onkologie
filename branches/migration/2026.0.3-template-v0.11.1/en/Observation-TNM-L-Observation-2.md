# TNM-L-Observation-2 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TNM-L-Observation-2**

## Example Observation: TNM-L-Observation-2

-------

**English**

-------

Profile: [MII PR Onkologie TNM L-Kategorie](StructureDefinition-mii-pr-onko-tnm-l-kategorie.md)

**partOf**: [Procedure Laparotomy (procedure)](Procedure-PatientKimMusterperson-Procedure-4.md)

**status**: Final

**code**: 395715009

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2021-06-22

**value**: L1

**method**: 8. Auflage



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "TNM-L-Observation-2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-l-kategorie"]
  },
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "395715009"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectiveDateTime" : "2021-06-22",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "L1"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
      "code" : "8",
      "display" : "8. Auflage"
    }]
  }
}

```
