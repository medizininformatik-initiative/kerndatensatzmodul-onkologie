# MII EXA Onkologie Diagnose malignes Meningeom (Transformation /0 → /3) - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onkologie Diagnose malignes Meningeom (Transformation /0 → /3)**

## Example Condition: MII EXA Onkologie Diagnose malignes Meningeom (Transformation /0 → /3)

-------

**English**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2026-04-14

**MII EX Onko Histology Morphology Behavior ICDO3**: Malignes Meningeom

**MII EX Onkologie Transformation von**: [Condition Gutartige Neubildung: Hirnhäute](Condition-mii-exa-onko-diagnose-meningeom-benigne.md)

**clinicalStatus**: Active

**verificationStatus**: histologische Untersuchung eines Primärtumors

**category**: Neoplastic disease

**code**: Bösartige Neubildung: Hirnhäute

**bodySite**: Hirnhäute

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**recordedDate**: 2026-04-14



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-diagnose-meningeom-maligne-transformation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2026-04-14"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "version" : "2019",
        "code" : "9530/3",
        "display" : "Malignes Meningeom"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-transformation-von",
    "valueReference" : {
      "reference" : "Condition/mii-exa-onko-diagnose-meningeom-benigne"
    }
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung",
      "code" : "7",
      "display" : "histologische Untersuchung eines Primärtumors"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "55342001",
      "display" : "Neoplastic disease"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "code" : "C70.0",
      "display" : "Bösartige Neubildung: Hirnhäute"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C70.0",
      "display" : "Hirnhäute"
    }]
  }],
  "subject" : {
    "reference" : "Patient/example"
  },
  "recordedDate" : "2026-04-14"
}

```
