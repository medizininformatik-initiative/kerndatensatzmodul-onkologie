# mii-exa-onko-tnm-l-kategorie-L1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tnm-l-kategorie-L1**

## Beispiel Observation: mii-exa-onko-tnm-l-kategorie-L1

-------

**German**

-------

Profile: [MII PR Onkologie TNM L-Kategorie](StructureDefinition-mii-pr-onko-tnm-l-kategorie.md) version: 2026.0.3

**status**: Final

**code**: Status of lymphatic (small vessel) invasion by tumor (observable entity)

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**effective**: 2024-01-12

**value**: L1

**method**: 8. Auflage



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-l-kategorie-L1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-l-kategorie|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "395715009",
      "display" : "Status of lymphatic (small vessel) invasion by tumor (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-01-12",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "L1",
      "display" : "L1"
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
