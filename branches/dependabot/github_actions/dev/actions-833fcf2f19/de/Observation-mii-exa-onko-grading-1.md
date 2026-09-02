# mii-exa-onko-grading-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-grading-1**

## Beispiel Observation: mii-exa-onko-grading-1

-------

**German**

-------

Profile: [MII PR Onkologie Grading](StructureDefinition-mii-pr-onko-grading.md) version: 2026.0.3

**status**: Final

**category**: Laboratory

**code**: Histology grade [Identifier] in Cancer specimen

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2022-04-21

**value**: schlecht differenziert

**specimen**: [Specimen: accessionIdentifier = 357532265](Specimen-mii-exa-onko-specimen-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-grading-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-grading|2026.0.3"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "33732-9",
      "display" : "Histology grade [Identifier] in Cancer specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2022-04-21",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-grading",
      "code" : "3"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-onko-specimen-1"
  }
}

```
