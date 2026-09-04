# MII EXA Onkologie Diagnose radiogenes Angiosarkom nach Strahlentherapie (dueTo) - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Onkologie Diagnose radiogenes Angiosarkom nach Strahlentherapie (dueTo)**

## Beispiel Condition: MII EXA Onkologie Diagnose radiogenes Angiosarkom nach Strahlentherapie (dueTo)

-------

**German**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md) version: 2027.0.0-ballot.rc1

**Condition Asserted Date**: 2026-07-01

**MII EX Onko Histology Morphology Behavior ICDO3**: Hämangiosarkom

**Condition Due To**: [Procedure Strahlentherapie](Procedure-mii-exa-onko-strahlentherapie-strahlentherapie-1.md)

**clinicalStatus**: Active

**verificationStatus**: histologische Untersuchung eines Primärtumors

**category**: Neoplastic disease

**code**: Bösartige Neubildung: Bindegewebe und andere Weichteilgewebe des Thorax

**bodySite**: Bindegewebe des Thorax

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**recordedDate**: 2026-07-01



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-diagnose-angiosarkom-nach-radiatio",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2026-07-01"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "version" : "2019",
        "code" : "9120/3",
        "display" : "Hämangiosarkom"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-dueTo",
    "valueReference" : {
      "reference" : "Procedure/mii-exa-onko-strahlentherapie-strahlentherapie-1"
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
      "code" : "C49.3",
      "display" : "Bösartige Neubildung: Bindegewebe und andere Weichteilgewebe des Thorax"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C49.3",
      "display" : "Bindegewebe des Thorax"
    }]
  }],
  "subject" : {
    "reference" : "Patient/example"
  },
  "recordedDate" : "2026-07-01"
}

```
