# mii-exa-onko-tod-n - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-tod-n**

## Example Observation: mii-exa-onko-tod-n

Profile: [MII PR Onkologie Tod](StructureDefinition-mii-pr-onko-tod.md) version: 2026.0.3

**status**: Final

**code**: Cause of death

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**effective**: 2024-02-07

**value**: Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse

**interpretation**: Nein, die Person ist nicht an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tod-n",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "184305005"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-02-07",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2019",
      "code" : "C50.3",
      "display" : "Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse"
    }]
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tod",
      "code" : "N",
      "display" : "Nein, die Person ist nicht an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben."
    }]
  }]
}

```
