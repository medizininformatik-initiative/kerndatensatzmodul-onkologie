# Example radiation therapy - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example radiation therapy**

## Example Procedure: Example radiation therapy

-------

**English**

-------

Profile: [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie.md) version: 2027.0.0-ballot.rc1

**MII EX Onko Strahlentherapie Intention**: palliativ

**MII EX Onko Strahlentherapie Stellung zur OP**: adjuvant

**status**: Completed

**category**: Radiotherapy (procedure)

**code**: Strahlentherapie

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**performed**: 2019-07-04 --> 2019-09-14



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-strahlentherapie-strahlentherapie-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "P"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-stellungzurop",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop",
        "code" : "A"
      }]
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1287742003",
      "display" : "Radiotherapy (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2019",
      "code" : "8-52"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "performedPeriod" : {
    "start" : "2019-07-04",
    "end" : "2019-09-14"
  }
}

```
