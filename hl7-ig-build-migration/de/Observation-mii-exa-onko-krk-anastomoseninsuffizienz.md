# MII EXA Onko KRK Anastomoseninsuffizienz - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Observation: MII EXA Onko KRK Anastomoseninsuffizienz

-------

**German**

-------

Profile: [MII PR Onkologie KRK Anastomoseninsuffizienz](StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz.md)

**status**: Final

**code**: Large intestine anastomotic leak (disorder)

**subject**: [Klaus KolorektalCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-krk-bundle-patient.md)

**focus**: [Procedure Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion: Laparoskopisch mit Anastomose](Procedure-mii-exa-onko-krk-operation.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP)](Encounter-mii-exa-onko-krk-bundle-encounter.md)

**effective**: 2024-03-25 08:00:00+0100

**value**: Anastomoseninsuffizienz Grad B



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-krk-anastomoseninsuffizienz",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-anastomoseninsuffizienz"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "236091002",
      "display" : "Large intestine anastomotic leak (disorder)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
  },
  "focus" : [{
    "reference" : "Procedure/mii-exa-onko-krk-operation"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-onko-krk-bundle-encounter"
  },
  "effectiveDateTime" : "2024-03-25T08:00:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-anastomoseninsuffizienz",
      "code" : "B",
      "display" : "Anastomoseninsuffizienz Grad B"
    }]
  }
}

```
