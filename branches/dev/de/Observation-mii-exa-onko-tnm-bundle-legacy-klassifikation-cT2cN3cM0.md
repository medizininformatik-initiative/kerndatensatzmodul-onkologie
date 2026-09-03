# mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0**

## Beispiel Observation: mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0

-------

**German**

-------

Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Clinical TNM stage grouping

**subject**: [Tobias TNMLegacy Male, DoB: 1962-04-18](Patient-mii-exa-onko-tnm-bundle-legacy-patient.md)

**focus**: [Condition Bösartige Neubildung des Rektums](Condition-mii-exa-onko-tnm-bundle-legacy-diagnose.md)

**effective**: 2024-01-11

**value**: Stadium IIIB

**method**: 8. Auflage

**hasMember**: 

* [Observation cT category (observable entity)](Observation-mii-exa-onko-tnm-bundle-legacy-t-cT2.md)
* [Observation cN category (observable entity)](Observation-mii-exa-onko-tnm-bundle-legacy-n-cN3.md)
* [Observation cM category (observable entity)](Observation-mii-exa-onko-tnm-bundle-legacy-m-cM0.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation|2027.0.0-ballot.rc1"]
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
    "reference" : "Patient/mii-exa-onko-tnm-bundle-legacy-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-tnm-bundle-legacy-diagnose"
  }],
  "effectiveDateTime" : "2024-01-11",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "IIIB",
      "display" : "Stadium IIIB"
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
    "reference" : "Observation/mii-exa-onko-tnm-bundle-legacy-t-cT2"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-bundle-legacy-n-cN3"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-bundle-legacy-m-cM0"
  }]
}

```
