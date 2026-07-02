# mii-exa-onko-prostata-psa-diagnose-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Example Observation: mii-exa-onko-prostata-psa-diagnose-1

-------

**English**

-------

Profile: [MII PR Onkologie PSA-Wert](StructureDefinition-mii-pr-onko-prostate-psa.md) version: 2026.0.3

**status**: Final

**code**: Prostate specific Ag [Mass/volume] in Serum or Plasma

**subject**: [Peter ProstataCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-prostata-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-onko-prostata-diagnose.md)

**effective**: 2024-01-02

**value**: 12 ng/ml



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-prostata-psa-diagnose-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-psa|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "2857-1",
      "display" : "Prostate specific Ag [Mass/volume] in Serum or Plasma"
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
    "value" : 12,
    "unit" : "ng/ml"
  }
}

```
