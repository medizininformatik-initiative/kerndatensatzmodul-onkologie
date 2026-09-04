# mii-exa-onko-tod-j - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-tod-j**

## Example Observation: mii-exa-onko-tod-j

-------

**English**

-------

Profile: [MII PR Onkologie Tod](StructureDefinition-mii-pr-onko-tod.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: 184305005

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2024-02-08

**value**: Bösartige Neubildung: Bronchus oder Lunge, nicht näher bezeichnet

**interpretation**: Ja, die Person ist an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tod-j",
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
  "effectiveDateTime" : "2024-02-08",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2024",
      "code" : "C34.9",
      "display" : "Bösartige Neubildung: Bronchus oder Lunge, nicht näher bezeichnet"
    }]
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tod",
      "code" : "J",
      "display" : "Ja, die Person ist an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben."
    }]
  }]
}

```
