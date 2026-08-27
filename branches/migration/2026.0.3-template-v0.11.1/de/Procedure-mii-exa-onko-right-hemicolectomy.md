# Hemikolektomie rechts - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Hemikolektomie rechts**

## Beispiel Procedure: Hemikolektomie rechts

-------

**German**

-------

Profile: [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md)

**MII EX Onko Operation Intention**: Kurativ

**status**: Completed

**category**: Surgical procedure

**code**: Laparoskopische Hemikolektomie rechts mit Lymphknotendissektion

**subject**: [Patient/example-modification](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example-modification)

**encounter**: [Encounter/example-surgery-modification](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Encounter/example-surgery-modification)

**performed**: 2024-02-20

**reasonReference**: [Condition Bösartige Neubildung: Colon ascendens](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md)

**outcome**: Kein Residualtumor

**note**: 

> 

Laparoscopic right hemicolectomy performed. Tumor completely resected with clear margins (R0). 22 lymph nodes removed, 4 positive.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-right-hemicolectomy",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K",
        "display" : "Kurativ"
      }]
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003",
      "display" : "Surgical procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2024",
      "code" : "5-455.75",
      "display" : "Partielle Resektion des Dickdarmes: Sigmaresektion: Laparoskopisch mit Anastomose"
    }],
    "text" : "Laparoskopische Hemikolektomie rechts mit Lymphknotendissektion"
  },
  "subject" : {
    "reference" : "Patient/example-modification"
  },
  "encounter" : {
    "reference" : "Encounter/example-surgery-modification"
  },
  "performedDateTime" : "2024-02-20",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-ascending-colon-cancer-diagnosis"
  }],
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
      "code" : "R0",
      "display" : "Kein Residualtumor"
    }]
  },
  "note" : [{
    "text" : "Laparoscopic right hemicolectomy performed. Tumor completely resected with clear margins (R0). 22 lymph nodes removed, 4 positive."
  }]
}

```
