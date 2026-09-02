# mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0**

## Example Observation: mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0

-------

**English**

-------

Profile: [MII PR Onkologie Anzahl der befallenen Sentinel-Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-befallene-sentinel-lymphknoten.md) version: 2026.0.3

**status**: Final

**category**: Laboratory

**code**: Sentinel lymph nodes with metastasis [#] in Cancer specimen

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2024-01-11

**value**: 0 # (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-befallene-sentinel-lymphknoten|2026.0.3"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "92832-5",
      "display" : "Sentinel lymph nodes with metastasis [#] in Cancer specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-01-11",
  "valueQuantity" : {
    "value" : 0,
    "unit" : "#",
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  }
}

```
