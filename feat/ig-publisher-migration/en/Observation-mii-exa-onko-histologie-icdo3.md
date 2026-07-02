# mii-exa-onko-histologie-icdo3 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Example Observation: mii-exa-onko-histologie-icdo3

-------

**English**

-------

Profile: [MII PR Onkologie Histologie ICD-O-3](StructureDefinition-mii-pr-onko-histologie-icdo3.md) version: 2026.0.3

**status**: Final

**code**: Histology and Behavior ICD-O-3 Cancer

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**value**: Invasives duktales Karzinom o.n.A.

**bodySite**: Oberer äußerer Quadrant der Brust

**specimen**: [Specimen/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Specimen/example)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-histologie-icdo3",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-histologie-icdo3|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "59847-4"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "8500/3",
      "display" : "Invasives duktales Karzinom o.n.A."
    }]
  },
  "bodySite" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C50.4",
      "display" : "Oberer äußerer Quadrant der Brust"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/example"
  }
}

```
