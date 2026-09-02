# MII EXA Onko KRK Abstand Mesorektale Fascie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onko KRK Abstand Mesorektale Fascie**

## Example Observation: MII EXA Onko KRK Abstand Mesorektale Fascie

-------

**English**

-------

Profile: [MII PR Onkologie KRK MRT/CT Abstand Mesorektale Faszie](StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie.md)

**status**: Final

**code**: Distance to MRF

**subject**: [Klaus KolorektalCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-krk-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung des Kolons](Condition-mii-exa-onko-krk-diagnose.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP)](Encounter-mii-exa-onko-krk-bundle-encounter.md)

**effective**: 2024-03-12 16:00:00+0100

**value**: 3.2 mm (Details: UCUM codemm = 'mm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-krk-abstand-mesorektale-fascie",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-mrt-mesorektale-faszie"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://radelement.org",
      "code" : "RDE96",
      "display" : "Distance to MRF"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-krk-diagnose"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-onko-krk-bundle-encounter"
  },
  "effectiveDateTime" : "2024-03-12T16:00:00+01:00",
  "valueQuantity" : {
    "value" : 3.2,
    "unit" : "mm",
    "system" : "http://unitsofmeasure.org",
    "code" : "mm"
  }
}

```
