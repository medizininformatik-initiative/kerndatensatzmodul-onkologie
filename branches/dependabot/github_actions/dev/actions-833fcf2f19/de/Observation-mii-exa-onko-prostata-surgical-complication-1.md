# mii-exa-onko-prostata-surgical-complication-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-prostata-surgical-complication-1**

## Beispiel Observation: mii-exa-onko-prostata-surgical-complication-1

-------

**German**

-------

Profile: [MII PR Onkologie Clavien Dindo](StructureDefinition-mii-pr-onko-prostate-clavien-dindo.md) version: 2026.0.3

**status**: Final

**code**: Clavien-Dindo classification grade (observable entity)

**subject**: [Peter ProstataCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-prostata-bundle-patient.md)

**focus**: 

* [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-onko-prostata-diagnose.md)
* [Procedure Radikale Prostatovesikulektomie](Procedure-mii-exa-onko-prostata-surgery-1.md)

**effective**: 2024-06-24

**value**: Clavien-Dindo classification grade IIIa (finding)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-prostata-surgical-complication-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-clavien-dindo|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "789279006",
      "display" : "Clavien-Dindo classification grade (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-prostata-diagnose"
  },
  {
    "reference" : "Procedure/mii-exa-onko-prostata-surgery-1"
  }],
  "effectiveDateTime" : "2024-06-24",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1367522003",
      "display" : "Clavien-Dindo classification grade IIIa (finding)"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-prostata-postsurgical-complications",
      "code" : "J",
      "display" : "Ja"
    }]
  }
}

```
