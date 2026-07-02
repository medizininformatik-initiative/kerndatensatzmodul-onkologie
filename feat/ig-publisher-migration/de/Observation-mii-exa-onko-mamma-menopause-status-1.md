# mii-exa-onko-mamma-menopause-status-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Observation: mii-exa-onko-mamma-menopause-status-1

-------

**German**

-------

Profile: [MII PR Onkologie Menopausenstatus Mamma](StructureDefinition-mii-pr-onko-mamma-menopause-status.md) version: 2026.0.3

**status**: Final

**code**: Menopause, function (observable entity)

**subject**: [Martha MammaCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-mamma-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse](Condition-mii-exa-onko-mamma-diagnose.md)

**value**: Premenopausal state (finding)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-mamma-menopause-status-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-menopause-status|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "161712005",
      "display" : "Menopause, function (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-mamma-bundle-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-mamma-diagnose"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "22636003",
      "display" : "Premenopausal state (finding)"
    }]
  }
}

```
