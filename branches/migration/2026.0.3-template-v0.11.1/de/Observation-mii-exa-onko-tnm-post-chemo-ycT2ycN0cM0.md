# mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0**

## Beispiel Observation: mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0

-------

**German**

-------

Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md)

**status**: Final

**code**: Clinical TNM stage grouping

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**effective**: 2024-05-20

**value**: Stadium IIA

**method**: 8. Auflage

**hasMember**: 

* [Observation cT category (observable entity)](Observation-mii-exa-onko-tnm-t-kategorie-ycT2.md)
* [Observation cN category (observable entity)](Observation-mii-exa-onko-tnm-n-kategorie-ycN0.md)
* [Observation cM category (observable entity)](Observation-mii-exa-onko-tnm-m-kategorie-cM0.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0",
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
  "effectiveDateTime" : "2024-05-20",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "IIA",
      "display" : "Stadium IIA"
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
    "reference" : "Observation/mii-exa-onko-tnm-t-kategorie-ycT2"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-n-kategorie-ycN0"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-m-kategorie-cM0"
  }]
}

```
