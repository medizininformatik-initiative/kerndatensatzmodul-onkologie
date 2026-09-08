# mii-exa-onko-tod-u - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tod-u**

## Beispiel Observation: mii-exa-onko-tod-u

-------

**German**

-------

Profile: [MII PR Onkologie Tod](StructureDefinition-mii-pr-onko-tod.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: 184305005

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2024-02-06

**value**: Sonstige bösartige Neubildungen: Haut sonstiger und nicht näher bezeichneter Teile des Gesichtes

**interpretation**: unbekannt



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tod-u",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "184305005"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-02-06",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2022",
      "code" : "C44.3",
      "display" : "Sonstige bösartige Neubildungen: Haut sonstiger und nicht näher bezeichneter Teile des Gesichtes"
    }]
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tod",
      "code" : "U",
      "display" : "unbekannt"
    }]
  }]
}

```
