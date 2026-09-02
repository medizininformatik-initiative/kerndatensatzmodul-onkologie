# mii-exa-onko-weitere-klassifikationen-3 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-weitere-klassifikationen-3**

## Example Observation: mii-exa-onko-weitere-klassifikationen-3

-------

**English**

-------

Profile: [MII PR Onkologie Weitere Klassifikationen](StructureDefinition-mii-pr-onko-weitere-klassifikationen.md) version: 2026.0.3

**status**: Final

**code**: FIGO Grading für gynäkologische Tumore

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**focus**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

**effective**: 2024-01-11

**value**: FIGO Grad 2

**specimen**: [Specimen: accessionIdentifier = 357532265](Specimen-mii-exa-onko-specimen-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-weitere-klassifikationen-3",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1290294004",
      "display" : "International Federation of Gynecology and Obstetrics grading system (qualifier value)"
    }],
    "text" : "FIGO Grading für gynäkologische Tumore"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "focus" : [{
    "reference" : "Condition/primaertumor-example"
  }],
  "effectiveDateTime" : "2024-01-11",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1290303004",
      "display" : "International Federation of Gynecology and Obstetrics grading system grade 2 (qualifier value)"
    }],
    "text" : "FIGO Grad 2"
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-onko-specimen-1"
  }
}

```
