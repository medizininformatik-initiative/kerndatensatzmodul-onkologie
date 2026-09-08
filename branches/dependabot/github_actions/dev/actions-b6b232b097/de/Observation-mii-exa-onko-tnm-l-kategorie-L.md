# mii-exa-onko-tnm-l-kategorie-L - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tnm-l-kategorie-L**

## Beispiel Observation: mii-exa-onko-tnm-l-kategorie-L

-------

**German**

-------

Profile: [MII PR Onkologie TNM L-Kategorie](StructureDefinition-mii-pr-onko-tnm-l-kategorie.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Status of lymphatic (small vessel) invasion by tumor (observable entity)

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2024-01-11

**value**: L0

**method**: 8. Auflage



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-l-kategorie-L",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-l-kategorie|2027.0.0-ballot.rc1"]
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
  "effectiveDateTime" : "2024-01-11",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "L0",
      "display" : "L0"
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
