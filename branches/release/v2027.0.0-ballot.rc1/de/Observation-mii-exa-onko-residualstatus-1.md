# mii-exa-onko-residualstatus-1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-residualstatus-1**

## Beispiel Observation: mii-exa-onko-residualstatus-1

-------

**German**

-------

Profile: [MII PR Onkologie Residualstatus](StructureDefinition-mii-pr-onko-residualstatus.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Residual tumor classification [Type] in Cancer specimen

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2024-02-08

**value**: Kein Residualtumor



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-residualstatus-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-residualstatus|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "84892-9"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-02-08",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
      "code" : "R0"
    }]
  }
}

```
