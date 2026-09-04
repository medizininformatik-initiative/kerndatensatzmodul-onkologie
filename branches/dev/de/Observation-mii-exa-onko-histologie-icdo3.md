# mii-exa-onko-histologie-icdo3 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-histologie-icdo3**

## Beispiel Observation: mii-exa-onko-histologie-icdo3

-------

**German**

-------

Profile: [MII PR Onkologie Histologie ICD-O-3](StructureDefinition-mii-pr-onko-histologie-icdo3.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: 59847-4

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**value**: Invasives duktales Karzinom o.n.A.

**bodySite**: Oberer äußerer Quadrant der Brust

**specimen**: [Specimen: accessionIdentifier = 357532265](Specimen-mii-exa-onko-specimen-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-histologie-icdo3",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-histologie-icdo3|2027.0.0-ballot.rc1"]
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
    "reference" : "Specimen/mii-exa-onko-specimen-1"
  }
}

```
