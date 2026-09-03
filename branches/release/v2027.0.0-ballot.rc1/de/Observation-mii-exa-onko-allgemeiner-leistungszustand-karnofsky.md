# mii-exa-onko-allgemeiner-leistungszustand-karnofsky - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-allgemeiner-leistungszustand-karnofsky**

## Beispiel Observation: mii-exa-onko-allgemeiner-leistungszustand-karnofsky

-------

**German**

-------

Profile: [MII PR Onkologie Allgemeiner Leistungszustand nach Karnofsky](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: KPS (Karnofsky Performance Status) score

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**value**: 30%



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-allgemeiner-leistungszustand-karnofsky",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky|2027.0.0-ballot.rc1"]
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
    },
    {
      "system" : "http://loinc.org",
      "code" : "LA29179-1",
      "display" : "Requires occasional assistance but is able to care for most needs"
    }]
  }
}

```
