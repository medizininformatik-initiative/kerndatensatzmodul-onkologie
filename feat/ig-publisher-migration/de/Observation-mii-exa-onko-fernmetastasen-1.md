# mii-exa-onko-fernmetastasen-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Observation: mii-exa-onko-fernmetastasen-1

-------

**German**

-------

Profile: [MII PR Onkologie Fernmetastasen](StructureDefinition-mii-pr-onko-fernmetastasen.md) version: 2026.0.3

**status**: Final

**code**: Site of distant metastasis

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**effective**: 2024-02-08

**value**: Lunge



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-fernmetastasen-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385421009"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-02-08",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-fernmetastasen",
      "code" : "PUL",
      "display" : "Lunge"
    }]
  }
}

```
