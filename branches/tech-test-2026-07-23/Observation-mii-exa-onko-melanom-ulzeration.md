# MII EXA Onko Melanom Ulzeration - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onko Melanom Ulzeration**

## Example Observation: MII EXA Onko Melanom Ulzeration

Profile: [MII PR Onkologie Melanom Ulzeration](StructureDefinition-mii-pr-onko-melanom-ulzeration.md)

**status**: Final

**code**: Presence of ulcer in primary malignant melanoma of skin (observable entity)

**subject**: [Maria Melanom (no stated gender), DoB Unknown](Patient-mii-exa-onko-melanom-bundle-patient.md)

**focus**: [Condition Bösartiges Melanom der Haut, nicht näher bezeichnet](Condition-mii-exa-onko-melanom-diagnose.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP)](Encounter-mii-exa-onko-melanom-bundle-encounter.md)

**effective**: 2024-03-20 14:30:00+0100

**value**: Ja

**method**: Immunohistochemistry procedure



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-melanom-ulzeration",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-ulzeration"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "6270001000004106",
      "display" : "Presence of ulcer in primary malignant melanoma of skin (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-melanom-bundle-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-melanom-diagnose"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-onko-melanom-bundle-encounter"
  },
  "effectiveDateTime" : "2024-03-20T14:30:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-melanom-ulzeration",
      "code" : "J",
      "display" : "Ja"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "117617002",
      "display" : "Immunohistochemistry procedure"
    }]
  }
}

```
