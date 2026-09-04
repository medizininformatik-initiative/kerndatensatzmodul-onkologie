# mii-exa-onko-kim-klass3 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-kim-klass3**

## Example Observation: mii-exa-onko-kim-klass3

-------

**English**

-------

Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Pathologic TNM stage grouping

**subject**: [Kim Musterperson Female, DoB: 1956-03-14](Patient-mii-exa-onko-kim-synth-patient.md)

**focus**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-mii-exa-onko-kim-synth-diagnose.md)

**effective**: 2021-10-15

**value**: Stadium IV

**method**: 8. Auflage

**hasMember**: 

* [Observation pT category (observable entity)](Observation-mii-exa-onko-kim-klass3-ypT3c.md)
* [Observation pM category (observable entity)](Observation-mii-exa-onko-kim-klass3-ypM1b.md)
* [Observation Status of lymphatic (small vessel) invasion by tumor (observable entity)](Observation-mii-exa-onko-kim-klass3-L1.md)
* [Observation Status of venous (large vessel) invasion by tumor (observable entity)](Observation-mii-exa-onko-kim-klass3-V0.md)
* [Observation Presence of direct invasion by primary malignant neoplasm to nerve (observable entity)](Observation-mii-exa-onko-kim-klass3-Pn0.md)
* [Observation 101658-3](Observation-mii-exa-onko-kim-klass3-ysym.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-kim-klass3",
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
    "reference" : "Patient/mii-exa-onko-kim-synth-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-kim-synth-diagnose"
  }],
  "effectiveDateTime" : "2021-10-15",
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
  "hasMember" : [{
    "reference" : "Observation/mii-exa-onko-kim-klass3-ypT3c"
  },
  {
    "reference" : "Observation/mii-exa-onko-kim-klass3-ypM1b"
  },
  {
    "reference" : "Observation/mii-exa-onko-kim-klass3-L1"
  },
  {
    "reference" : "Observation/mii-exa-onko-kim-klass3-V0"
  },
  {
    "reference" : "Observation/mii-exa-onko-kim-klass3-Pn0"
  },
  {
    "reference" : "Observation/mii-exa-onko-kim-klass3-ysym"
  }]
}

```
