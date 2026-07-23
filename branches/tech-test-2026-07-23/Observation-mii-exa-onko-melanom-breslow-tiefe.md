# MII EXA Onko Melanom Breslow Tiefe - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onko Melanom Breslow Tiefe**

## Example Observation: MII EXA Onko Melanom Breslow Tiefe

Profile: [MII PR Onkologie Melanom Breslow Tiefe](StructureDefinition-mii-pr-onko-melanom-breslow-tiefe.md)

**status**: Final

**code**: Breslow depth staging for melanoma of skin (observable entity)

**subject**: [Maria Melanom (no stated gender), DoB Unknown](Patient-mii-exa-onko-melanom-bundle-patient.md)

**focus**: [Condition Bösartiges Melanom der Haut, nicht näher bezeichnet](Condition-mii-exa-onko-melanom-diagnose.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP)](Encounter-mii-exa-onko-melanom-bundle-encounter.md)

**effective**: 2024-03-20 14:30:00+0100

**value**: 2.1 mm (Details: UCUM codemm = 'mm')

**method**: Immunohistochemistry procedure



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-melanom-breslow-tiefe",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-breslow-tiefe"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "106243009",
      "display" : "Breslow depth staging for melanoma of skin (observable entity)"
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
  "valueQuantity" : {
    "value" : 2.1,
    "unit" : "mm",
    "system" : "http://unitsofmeasure.org",
    "code" : "mm"
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
