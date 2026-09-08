# mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0**

## Example Observation: mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0

-------

**English**

-------

Profile: [MII PR Onkologie Anzahl der untersuchten Sentinel-Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten.md) version: 2027.0.0-ballot.rc1

**status**: Final

**category**: Laboratory

**code**: Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2024-01-11

**value**: 2 # (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten|2027.0.0-ballot.rc1"]
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
      "code" : "85347-3",
      "display" : "Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-01-11",
  "valueQuantity" : {
    "value" : 2,
    "unit" : "#",
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  }
}

```
