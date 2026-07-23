# MII EXA Onko Melanom LDH - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onko Melanom LDH**

## Example Observation: MII EXA Onko Melanom LDH

Profile: [MII PR Onkologie Melanom LDH](StructureDefinition-mii-pr-onko-melanom-ldh.md)

**status**: Final

**category**: Laboratory

**code**: Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Lactate to pyruvate reaction

**subject**: [Maria Melanom (no stated gender), DoB Unknown](Patient-mii-exa-onko-melanom-bundle-patient.md)

**focus**: [Condition Bösartiges Melanom der Haut, nicht näher bezeichnet](Condition-mii-exa-onko-melanom-diagnose.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP)](Encounter-mii-exa-onko-melanom-bundle-encounter.md)

**effective**: 2024-03-18 08:30:00+0100

**value**: 280 U/L (Details: UCUM codeU/L = 'U/L')

**interpretation**: High

### ReferenceRanges

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Text** |
| * | 135 U/L (Details: UCUM codeU/L = 'U/L') | 250 U/L (Details: UCUM codeU/L = 'U/L') | 135-250 U/L |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-melanom-ldh",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-ldh"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "14804-9",
      "display" : "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Lactate to pyruvate reaction"
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
  "effectiveDateTime" : "2024-03-18T08:30:00+01:00",
  "valueQuantity" : {
    "value" : 280,
    "unit" : "U/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "U/L"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "referenceRange" : [{
    "low" : {
      "value" : 135,
      "unit" : "U/L",
      "system" : "http://unitsofmeasure.org",
      "code" : "U/L"
    },
    "high" : {
      "value" : 250,
      "unit" : "U/L",
      "system" : "http://unitsofmeasure.org",
      "code" : "U/L"
    },
    "text" : "135-250 U/L"
  }]
}

```
