# mii-exa-onko-prostata-anzahl-positiver-stanzen-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Observation: mii-exa-onko-prostata-anzahl-positiver-stanzen-1

-------

**German**

-------

Profile: [MII PR Onkologie Prostata Anzahl positiver Stanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.md) version: 2026.0.3

**status**: Final

**code**: Tissue cores.positive.carcinoma in Tissue core

**subject**: [Peter ProstataCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-prostata-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-onko-prostata-diagnose.md)

**effective**: 2024-01-02

**value**: 8



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-prostata-anzahl-positiver-stanzen-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "44651-8",
      "display" : "Tissue cores.positive.carcinoma in Tissue core"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-prostata-diagnose"
  }],
  "effectiveDateTime" : "2024-01-02",
  "valueInteger" : 8
}

```
