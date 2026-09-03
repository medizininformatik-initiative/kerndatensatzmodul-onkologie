# mii-exa-onko-mamma-tumorgroesse-1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-mamma-tumorgroesse-1**

## Example Observation: mii-exa-onko-mamma-tumorgroesse-1

-------

**English**

-------

Profile: [MII PR Onkologie Tumorgröße](StructureDefinition-mii-pr-onko-tumorgroesse.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Size Tumor

**subject**: [Martha MammaCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-mamma-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse](Condition-mii-exa-onko-mamma-diagnose.md)

**effective**: 2024-01-02 10:00:00+0000

**value**: 25 mm (Details: UCUM codemm = 'mm')

**bodySite**: Structure of upper inner quadrant of right breast (body structure)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-mamma-tumorgroesse-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorgroesse|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "21889-1",
      "display" : "Size Tumor"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "371479009",
      "display" : "Tumor size, largest dimension (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-mamma-bundle-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-mamma-diagnose"
  }],
  "effectiveDateTime" : "2024-01-02T10:00:00Z",
  "valueQuantity" : {
    "value" : 25,
    "unit" : "mm",
    "system" : "http://unitsofmeasure.org",
    "code" : "mm"
  },
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "110494001",
      "display" : "Structure of upper inner quadrant of right breast (body structure)"
    }]
  }
}

```
