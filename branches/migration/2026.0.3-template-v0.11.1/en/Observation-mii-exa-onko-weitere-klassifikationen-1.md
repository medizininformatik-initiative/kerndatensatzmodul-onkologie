# mii-exa-onko-weitere-klassifikationen-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-weitere-klassifikationen-1**

## Example Observation: mii-exa-onko-weitere-klassifikationen-1

-------

**English**

-------

Profile: [MII PR Onkologie Weitere Klassifikationen](StructureDefinition-mii-pr-onko-weitere-klassifikationen.md) version: 2026.0.3

**status**: Final

**code**: FIGO Klassifikation für ovariale Tumore

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**focus**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

**effective**: 2024-01-11

**value**: FIGO Stadium IVB

**method**: International Federation of Gynecology and Obstetrics ovarian tumor staging system (tumor staging)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-weitere-klassifikationen-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385361009",
      "display" : "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"
    }],
    "text" : "FIGO Klassifikation für ovariale Tumore"
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
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "code" : "figo-ivb",
      "display" : "FIGO IVB"
    }],
    "text" : "FIGO Stadium IVB"
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "254386003",
      "display" : "International Federation of Gynecology and Obstetrics ovarian tumor staging system (tumor staging)"
    }]
  }
}

```
