# MII EXA Onko KRK Abstand Circumferelle Resektionsebene - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Observation: MII EXA Onko KRK Abstand Circumferelle Resektionsebene

-------

**German**

-------

Profile: [MII PR Onkologie Abstand Circumferelle Resektionsebene](StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene.md)

**status**: Final

**code**: Distance of tumor from circumferential resection margin [Length] in Specimen by Macroscopy

**subject**: [Klaus KolorektalCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-krk-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung des Kolons](Condition-mii-exa-onko-krk-diagnose.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP)](Encounter-mii-exa-onko-krk-bundle-encounter.md)

**effective**: 2024-03-20 10:15:00+0100

**value**: 2.5 mm (Details: UCUM codemm = 'mm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-krk-abstand-circumferelle-resektionsebene",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-circumferelle-resektionsebene"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "81176-0",
      "display" : "Distance of tumor from circumferential resection margin [Length] in Specimen by Macroscopy"
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
  "effectiveDateTime" : "2024-03-20T10:15:00+01:00",
  "valueQuantity" : {
    "value" : 2.5,
    "unit" : "mm",
    "system" : "http://unitsofmeasure.org",
    "code" : "mm"
  }
}

```
