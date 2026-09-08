# mii-exa-onko-tnm-synth-meldung2-klassifikation - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tnm-synth-meldung2-klassifikation**

## Beispiel Observation: mii-exa-onko-tnm-synth-meldung2-klassifikation

-------

**German**

-------

Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Pathologic TNM stage grouping

**subject**: [Tobias TNMSynth Male, DoB: 1962-04-18](Patient-mii-exa-onko-tnm-synth-patient.md)

**focus**: [Condition Bösartige Neubildung des Rektums](Condition-mii-exa-onko-tnm-synth-diagnose.md)

**effective**: 2024-03-15

**value**: Stadium IIIA

**method**: 8. Auflage

**hasMember**: 

* [Observation pT category (observable entity)](Observation-mii-exa-onko-tnm-synth-meldung2-t-pT2.md)
* [Observation pN category (observable entity)](Observation-mii-exa-onko-tnm-synth-meldung2-n-pN1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-synth-meldung2-klassifikation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "399588009",
      "display" : "Pathologic TNM stage grouping"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-tnm-synth-diagnose"
  }],
  "effectiveDateTime" : "2024-03-15",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "IIIA",
      "display" : "Stadium IIIA"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
      "code" : "8",
      "display" : "8. Auflage"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-onko-tnm-synth-meldung2-t-pT2"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-synth-meldung2-n-pN1"
  }]
}

```
