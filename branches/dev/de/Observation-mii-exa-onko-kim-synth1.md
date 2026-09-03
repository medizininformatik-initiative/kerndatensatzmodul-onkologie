# mii-exa-onko-kim-synth1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-kim-synth1**

## Beispiel Observation: mii-exa-onko-kim-synth1

-------

**German**

-------

Profile: [MII PR Onkologie TNM-Klassifikation (synthetisiert)](StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Integrated TNM category

**subject**: [Kim Musterperson Female, DoB: 1956-03-14](Patient-mii-exa-onko-kim-synth-patient.md)

**focus**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-mii-exa-onko-kim-synth-diagnose.md)

**effective**: 2021-06-25

**value**: Stadium IV

**method**: 8. Auflage

**device**: [Device: status = active](Device-mii-exa-onko-kim-synthesis-device.md)

**hasMember**: 

* [Observation cT category (observable entity)](Observation-mii-exa-onko-kim-klass1-cT3c.md)
* [Observation cN category (observable entity)](Observation-mii-exa-onko-kim-klass1-cN1.md)
* [Observation cM category (observable entity)](Observation-mii-exa-onko-kim-klass1-cM1.md)

**derivedFrom**: [Observation Clinical TNM stage grouping](Observation-mii-exa-onko-kim-klass1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-kim-synth1",
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
    "reference" : "Patient/mii-exa-onko-kim-synth-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-kim-synth-diagnose"
  }],
  "effectiveDateTime" : "2021-06-25",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "IV",
      "display" : "Stadium IV"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
      "code" : "8",
      "display" : "8. Auflage"
    }]
  },
  "device" : {
    "reference" : "Device/mii-exa-onko-kim-synthesis-device"
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-onko-kim-klass1-cT3c"
  },
  {
    "reference" : "Observation/mii-exa-onko-kim-klass1-cN1"
  },
  {
    "reference" : "Observation/mii-exa-onko-kim-klass1-cM1"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/mii-exa-onko-kim-klass1"
  }]
}

```
