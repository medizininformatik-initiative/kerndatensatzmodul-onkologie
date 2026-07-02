# mii-exa-onko-weitere-klassifikationen-2 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Observation: mii-exa-onko-weitere-klassifikationen-2

-------

**German**

-------

Profile: [MII PR Onkologie Weitere Klassifikationen](StructureDefinition-mii-pr-onko-weitere-klassifikationen.md) version: 2026.0.3

**status**: Final

**code**: Ann Arbor Klassifikation

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**focus**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

**effective**: 2024-01-12

**value**: Ann Arbor Stadium IIIX

**method**: Ann Arbor Hodgkin's disease tumor staging system



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-weitere-klassifikationen-2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "254372002",
      "display" : "Ann Arbor lymphoma staging system"
    }],
    "text" : "Ann Arbor Klassifikation"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "focus" : [{
    "reference" : "Condition/primaertumor-example"
  }],
  "effectiveDateTime" : "2024-01-12",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds",
      "code" : "ann-arbor-iiix"
    }],
    "text" : "Ann Arbor Stadium IIIX"
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "254373007",
      "display" : "Ann Arbor Hodgkin's disease tumor staging system"
    }]
  }
}

```
