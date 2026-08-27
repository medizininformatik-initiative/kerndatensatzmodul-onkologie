# mii-exa-onko-genetische-variante-braf - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-genetische-variante-braf**

## Beispiel Observation: mii-exa-onko-genetische-variante-braf

-------

**German**

-------

Profile: [MII PR Onkologie Genetische Variante](StructureDefinition-mii-pr-onko-genetische-variante.md) version: 2026.0.3

**status**: Final

**category**: Laboratory, Genetik

**code**: Genetic variant assessment

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**effective**: 2022-02-08

**interpretation**: Mutation/positiv

**note**: 

> 

BRAF1 Class II Mutation




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-genetische-variante-braf",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante|2026.0.3"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  },
  {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "GE"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "69548-6"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2022-02-08",
  "interpretation" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-genetische-variante-auspraegung",
      "code" : "M"
    }]
  }],
  "note" : [{
    "text" : "BRAF1 Class II Mutation"
  }]
}

```
