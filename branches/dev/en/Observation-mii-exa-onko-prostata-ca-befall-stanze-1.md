# mii-exa-onko-prostata-ca-befall-stanze-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-prostata-ca-befall-stanze-1**

## Example Observation: mii-exa-onko-prostata-ca-befall-stanze-1

-------

**English**

-------

Profile: [MII PR Onkologie Ca-Befall Stanze](StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.md) version: 2026.0.3

**status**: Final

**code**: Tissue involved by tumor in Prostate tumor

**subject**: [Peter ProstataCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-prostata-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-onko-prostata-diagnose.md)

**effective**: 2024-01-02

**value**: 80 %

**specimen**: [Specimen: accessionIdentifier = P-2024-000812](Specimen-mii-exa-onko-prostata-specimen-stanze.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-prostata-ca-befall-stanze-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-ca-befall-stanze|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "44654-2",
      "display" : "Tissue involved by tumor in Prostate tumor"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-prostata-diagnose"
  }],
  "effectiveDateTime" : "2024-01-02",
  "valueQuantity" : {
    "value" : 80,
    "unit" : "%"
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-onko-prostata-specimen-stanze"
  }
}

```
