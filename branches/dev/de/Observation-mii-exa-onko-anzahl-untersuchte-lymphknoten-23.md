# mii-exa-onko-anzahl-untersuchte-lymphknoten-23 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-anzahl-untersuchte-lymphknoten-23**

## Beispiel Observation: mii-exa-onko-anzahl-untersuchte-lymphknoten-23

-------

**German**

-------

Profile: [MII PR Onkologie Anzahl der untersuchten Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-untersuchte-lymphknoten.md) version: 2026.0.3

**status**: Final

**category**: Laboratory

**code**: Regional lymph nodes examined [#] Specimen

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2024-01-11

**value**: 23 # (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-anzahl-untersuchte-lymphknoten-23",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-untersuchte-lymphknoten|2026.0.3"]
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
      "code" : "21894-1",
      "display" : "Regional lymph nodes examined [#] Specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-01-11",
  "valueQuantity" : {
    "value" : 23,
    "unit" : "#",
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  }
}

```
