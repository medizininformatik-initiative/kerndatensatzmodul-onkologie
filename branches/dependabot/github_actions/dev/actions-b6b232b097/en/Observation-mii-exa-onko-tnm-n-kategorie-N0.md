# mii-exa-onko-tnm-n-kategorie-N0 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-tnm-n-kategorie-N0**

## Example Observation: mii-exa-onko-tnm-n-kategorie-N0

-------

**English**

-------

Profile: [MII PR Onkologie TNM N-Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: cN category (observable entity)

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2024-01-11

**value**: N0

**method**: 8. Auflage



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-n-kategorie-N0",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "c",
          "display" : "c"
        }]
      }
    }],
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "399534004",
      "display" : "cN category (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-01-11",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "N0",
      "display" : "N0"
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
