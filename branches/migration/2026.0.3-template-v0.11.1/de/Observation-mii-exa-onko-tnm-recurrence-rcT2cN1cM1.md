# mii-exa-onko-tnm-recurrence-rcT2cN1cM1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tnm-recurrence-rcT2cN1cM1**

## Beispiel Observation: mii-exa-onko-tnm-recurrence-rcT2cN1cM1

-------

**German**

-------

Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md)

**status**: Final

**code**: Clinical TNM stage grouping

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2027-06-20

**value**: Stadium IV

**method**: 8. Auflage

**hasMember**: 

* [Observation cT category (observable entity)](Observation-mii-exa-onko-tnm-t-kategorie-rcT2.md)
* [Observation cN category (observable entity)](Observation-mii-exa-onko-tnm-n-kategorie-rcN1.md)
* [Observation cM category (observable entity)](Observation-mii-exa-onko-tnm-m-kategorie-rcM1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-recurrence-rcT2cN1cM1",
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
  "effectiveDateTime" : "2027-06-20",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "IV",
      "display" : "Stadium IV"
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
    "reference" : "Observation/mii-exa-onko-tnm-t-kategorie-rcT2"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-n-kategorie-rcN1"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-m-kategorie-rcM1"
  }]
}

```
