# mii-exa-onko-prostata-psa-verlauf-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Example Observation: mii-exa-onko-prostata-psa-verlauf-1

-------

**English**

-------

Profile: [MII PR Onkologie PSA-Wert](StructureDefinition-mii-pr-onko-prostate-psa.md) version: 2026.0.3

**status**: Final

**code**: Prostate specific Ag [Mass/volume] in Serum or Plasma

**subject**: [Peter ProstataCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-prostata-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-onko-prostata-diagnose.md)

**effective**: 2024-06-24

**value**: 3.4 ng/ml



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-prostata-psa-verlauf-1",
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
  "effectiveDateTime" : "2024-06-24",
  "valueQuantity" : {
    "value" : 3.4,
    "unit" : "ng/ml"
  }
}

```
