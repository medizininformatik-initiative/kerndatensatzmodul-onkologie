# TNM Klassifikation - Stadium IIIB - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TNM Klassifikation - Stadium IIIB**

## Example Observation: TNM Klassifikation - Stadium IIIB

-------

**English**

-------

Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md)

**status**: Final

**code**: Pathologic TNM stage grouping

**subject**: [Martin Beispiel Male, DoB: 1958-11-03](Patient-example-modification.md)

**focus**: [Condition Bösartige Neubildung: Colon ascendens](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md)

**effective**: 2024-02-25

**value**: Stadium IIIB

**method**: 8. Auflage

**hasMember**: 

* [Observation pT category (observable entity)](Observation-mii-exa-onko-ascending-colon-tnm-t.md)
* [Observation pN category (observable entity)](Observation-mii-exa-onko-ascending-colon-tnm-n.md)
* [Observation cM category (observable entity)](Observation-mii-exa-onko-ascending-colon-tnm-m.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-ascending-colon-tnm",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"]
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
    "reference" : "Patient/example-modification"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-ascending-colon-cancer-diagnosis"
  }],
  "effectiveDateTime" : "2024-02-25",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "IIIB"
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
    "reference" : "Observation/mii-exa-onko-ascending-colon-tnm-t"
  },
  {
    "reference" : "Observation/mii-exa-onko-ascending-colon-tnm-n"
  },
  {
    "reference" : "Observation/mii-exa-onko-ascending-colon-tnm-m"
  }]
}

```
