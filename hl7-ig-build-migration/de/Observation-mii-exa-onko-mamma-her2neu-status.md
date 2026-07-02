# MII EXA Onko Mamma Her2neu Status - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Observation: MII EXA Onko Mamma Her2neu Status

-------

**German**

-------

Profile: [MII PR Onkologie Her2neu Status](StructureDefinition-mii-pr-onko-mamma-her2neu-status.md) version: 2026.0.3

**status**: Final

**code**: HER2 [Interpretation] in Tissue

**subject**: [Martha MammaCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-mamma-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse](Condition-mii-exa-onko-mamma-diagnose.md)

**effective**: 2024-01-10 10:00:00+0000

**value**: positiv

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | HER2 [Presence] in Breast cancer specimen by Immune stain | 3+ |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-mamma-her2neu-status",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-her2neu-status|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "48676-1",
      "display" : "HER2 [Interpretation] in Tissue"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-mamma-bundle-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-mamma-diagnose"
  }],
  "effectiveDateTime" : "2024-01-10T10:00:00Z",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-obds",
      "code" : "P",
      "display" : "positiv"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-leitlinie",
      "code" : "positiv",
      "display" : "HER2-positiv"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "85319-2",
        "display" : "HER2 [Presence] in Breast cancer specimen by Immune stain"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA11843-2",
        "display" : "3+"
      }]
    }
  }]
}

```
