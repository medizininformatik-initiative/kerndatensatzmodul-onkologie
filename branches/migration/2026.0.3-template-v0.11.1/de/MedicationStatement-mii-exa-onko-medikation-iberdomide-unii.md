# Medikation Iberdomide (UNII) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Medikation Iberdomide (UNII)**

## Beispiel MedicationStatement: Medikation Iberdomide (UNII)

-------

**German**

-------

Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md) version: 2026.0.3

**basedOn**: [CarePlan/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/CarePlan/example)

**partOf**: [Procedure/systemische-therapie-example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/systemische-therapie-example)

**status**: Completed

**medication**: Iberdomide (experimenteller Immunmodulator)

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**effective**: 2024-06-01 --> 2024-08-30

**note**: 

> 

Experimentelles Protokoll




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-onko-medikation-iberdomide-unii",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation|2026.0.3"]
  },
  "basedOn" : [{
    "reference" : "CarePlan/example"
  }],
  "partOf" : [{
    "reference" : "Procedure/systemische-therapie-example"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fdasis.nlm.nih.gov",
      "code" : "8V66F27X44",
      "display" : "IBERDOMIDE"
    }],
    "text" : "Iberdomide (experimenteller Immunmodulator)"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectivePeriod" : {
    "start" : "2024-06-01",
    "end" : "2024-08-30"
  },
  "note" : [{
    "text" : "Experimentelles Protokoll"
  }]
}

```
