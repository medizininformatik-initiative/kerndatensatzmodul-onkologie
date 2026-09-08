# mii-exa-onko-tnm-synth-klassifikation - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tnm-synth-klassifikation**

## Beispiel Observation: mii-exa-onko-tnm-synth-klassifikation

-------

**German**

-------

Profile: [MII PR Onkologie TNM-Klassifikation (synthetisiert)](StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Integrated TNM category

**subject**: [Tobias TNMSynth Male, DoB: 1962-04-18](Patient-mii-exa-onko-tnm-synth-patient.md)

**focus**: [Condition Bösartige Neubildung des Rektums](Condition-mii-exa-onko-tnm-synth-diagnose.md)

**effective**: 2024-04-02

**value**: Stadium IIIA

**method**: 8. Auflage

**hasMember**: 

* [Observation pT category (observable entity)](Observation-mii-exa-onko-tnm-synth-meldung2-t-pT2.md)
* [Observation pN category (observable entity)](Observation-mii-exa-onko-tnm-synth-meldung2-n-pN1.md)
* [Observation cM category (observable entity)](Observation-mii-exa-onko-tnm-synth-meldung1-m-cM0.md)

**derivedFrom**: 

* [Observation Clinical TNM stage grouping](Observation-mii-exa-onko-tnm-synth-meldung1-klassifikation.md)
* [Observation Pathologic TNM stage grouping](Observation-mii-exa-onko-tnm-synth-meldung2-klassifikation.md)

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | TNM-Formel | pT2 pN1 cM0 |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-synth-klassifikation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "399703000",
      "display" : "Integrated TNM category"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-tnm-synth-diagnose"
  }],
  "effectiveDateTime" : "2024-04-02",
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
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-synth-meldung1-m-cM0"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-onko-tnm-synth-meldung1-klassifikation"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-synth-meldung2-klassifikation"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-formel",
        "code" : "tnm-formel",
        "display" : "TNM-Formel"
      }]
    },
    "valueString" : "pT2 pN1 cM0"
  }]
}

```
