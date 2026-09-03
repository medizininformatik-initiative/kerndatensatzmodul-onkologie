# mii-exa-onko-anzahl-befallene-lymphknoten-0 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-anzahl-befallene-lymphknoten-0**

## Beispiel Observation: mii-exa-onko-anzahl-befallene-lymphknoten-0

-------

**German**

-------

Profile: [MII PR Onkologie Anzahl der befallenen Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-befallene-lymphknoten.md) version: 2027.0.0-ballot.rc1

**status**: Final

**category**: Laboratory

**code**: Regional lymph nodes positive [#] Specimen

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2024-01-11

**value**: 0 # (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-anzahl-befallene-lymphknoten-0",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-befallene-lymphknoten|2027.0.0-ballot.rc1"]
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
      "code" : "21893-3",
      "display" : "Regional lymph nodes positive [#] Specimen"
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
