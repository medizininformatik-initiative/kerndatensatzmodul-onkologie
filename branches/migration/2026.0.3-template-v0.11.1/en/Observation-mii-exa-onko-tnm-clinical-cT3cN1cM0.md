# mii-exa-onko-tnm-clinical-cT3cN1cM0 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-tnm-clinical-cT3cN1cM0**

## Example Observation: mii-exa-onko-tnm-clinical-cT3cN1cM0

-------

**English**

-------

Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md)

**status**: Final

**code**: Clinical TNM stage grouping

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2024-01-11

**value**: Stadium IIIA

**method**: 8. Auflage

**hasMember**: 

* [Observation cT category (observable entity)](Observation-mii-exa-onko-tnm-t-kategorie-cT3.md)
* [Observation cN category (observable entity)](Observation-mii-exa-onko-tnm-n-kategorie-cN1.md)
* [Observation cM category (observable entity)](Observation-mii-exa-onko-tnm-m-kategorie-cM0.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-clinical-cT3cN1cM0",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "399537006",
      "display" : "Clinical TNM stage grouping"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-01-11",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "IIIA",
      "display" : "Stadium IIIA"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
      "code" : "8",
      "display" : "8. Auflage"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-onko-tnm-t-kategorie-cT3"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-n-kategorie-cN1"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-m-kategorie-cM0"
  }]
}

```
