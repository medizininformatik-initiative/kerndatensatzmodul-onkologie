# PatientKimMusterperson-SystemicTherapy-1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-SystemicTherapy-1**

## Example Procedure: PatientKimMusterperson-SystemicTherapy-1

-------

**English**

-------

Profile: [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md)

**MII EX Onko Systemische Therapie Intention**: kurativ

**MII EX Onko Systemische Therapie Stellung zur OP**: neoadjuvant

**basedOn**: [CarePlan: status = completed; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2021-06-25](CarePlan-PatientKimMusterperson-Tumorkonferenz-1.md)

**status**: Completed

**category**: Administration of medication

**code**: Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**performed**: 2021-07-05 --> 2021-09-05



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "PatientKimMusterperson-SystemicTherapy-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellungzurop",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop",
        "code" : "N",
        "display" : "neoadjuvant"
      }]
    }
  }],
  "basedOn" : [{
    "reference" : "CarePlan/PatientKimMusterperson-Tumorkonferenz-1"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "18629005"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2021",
      "code" : "8-54",
      "display" : "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "performedPeriod" : {
    "start" : "2021-07-05",
    "end" : "2021-09-05"
  }
}

```
