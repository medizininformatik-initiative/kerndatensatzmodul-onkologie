# mii-exa-onko-asa-klassifikation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-asa-klassifikation**

## Beispiel Observation: mii-exa-onko-asa-klassifikation

-------

**German**

-------

Profile: [MII PR Onkologie ASA-Klassifikation](StructureDefinition-mii-pr-onko-asa-klassifikation.md)

**status**: Final

**code**: American society of anesthesiologists morbidity state

**subject**: [Klaus KolorektalCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-krk-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung des Kolons](Condition-mii-exa-onko-krk-diagnose.md)

**effective**: 2024-03-15 08:30:00+0100

**value**: ASA II



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-asa-klassifikation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-asa-klassifikation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "97816-3",
      "display" : "American society of anesthesiologists morbidity state"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-krk-diagnose"
  }],
  "effectiveDateTime" : "2024-03-15T08:30:00+01:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-asa-obds",
      "code" : "2",
      "display" : "ASA II"
    }]
  }
}

```
