# TNM M-Kategorie - cM0 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TNM M-Kategorie - cM0**

## Example Observation: TNM M-Kategorie - cM0

-------

**English**

-------

Profile: [MII PR Onkologie TNM M-Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: cM category (observable entity)

**subject**: [Hans Schmidt Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)](Patient-mii-exa-onko-folfox-patient.md)

**focus**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md)

**effective**: 2024-02-20

**value**: M0

**method**: 8. Auflage



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-colorectal-tnm-m",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "c"
        }]
      }
    }],
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "399387003",
      "display" : "cM category (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-folfox-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
  }],
  "effectiveDateTime" : "2024-02-20",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "M0"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
      "code" : "8"
    }]
  }
}

```
