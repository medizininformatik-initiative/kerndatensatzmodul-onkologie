# TNM Klassifikation - pT3 pN1 cM0, UICC Stage IIIB - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TNM Klassifikation - pT3 pN1 cM0, UICC Stage IIIB**

## Example Observation: TNM Klassifikation - pT3 pN1 cM0, UICC Stage IIIB

Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md)

**status**: Final

**code**: Pathologic TNM stage grouping

**subject**: [Hans Schmidt Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)](Patient-mii-exa-onko-folfox-patient.md)

**focus**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md)

**effective**: 2024-02-20

**value**: Stadium IIIB

**method**: 8. Auflage

**hasMember**: 

* [Observation pT category (observable entity)](Observation-mii-exa-onko-colorectal-tnm-t.md)
* [Observation pN category (observable entity)](Observation-mii-exa-onko-colorectal-tnm-n.md)
* [Observation cM category (observable entity)](Observation-mii-exa-onko-colorectal-tnm-m.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-colorectal-tnm",
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
    "reference" : "Patient/mii-exa-onko-folfox-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
  }],
  "effectiveDateTime" : "2024-02-20",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "IIIB"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
      "code" : "8"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-onko-colorectal-tnm-t"
  },
  {
    "reference" : "Observation/mii-exa-onko-colorectal-tnm-n"
  },
  {
    "reference" : "Observation/mii-exa-onko-colorectal-tnm-m"
  }]
}

```
