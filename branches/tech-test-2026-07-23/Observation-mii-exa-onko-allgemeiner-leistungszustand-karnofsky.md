# mii-exa-onko-allgemeiner-leistungszustand-karnofsky - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-allgemeiner-leistungszustand-karnofsky**

## Example Observation: mii-exa-onko-allgemeiner-leistungszustand-karnofsky

Profile: [MII PR Onkologie Allgemeiner Leistungszustand nach Karnofsky](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.md) version: 2026.0.3

**status**: Final

**code**: KPS (Karnofsky Performance Status) score

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**value**: 30%



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-allgemeiner-leistungszustand-karnofsky",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "761869008"
    },
    {
      "system" : "http://loinc.org",
      "code" : "89243-0"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-karnofsky",
      "code" : "30%",
      "display" : "30%"
    }]
  }
}

```
