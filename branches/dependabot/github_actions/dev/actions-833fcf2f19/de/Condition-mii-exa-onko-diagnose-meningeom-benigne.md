# MII EXA Onkologie Diagnose benignes Meningeom (Ursprungsdiagnose) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Onkologie Diagnose benignes Meningeom (Ursprungsdiagnose)**

## Beispiel Condition: MII EXA Onkologie Diagnose benignes Meningeom (Ursprungsdiagnose)

-------

**German**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md) version: 2026.0.3

**Condition Asserted Date**: 2022-09-05

**MII EX Onko Histology Morphology Behavior ICDO3**: Meningeom o.n.A.

**clinicalStatus**: Active

**verificationStatus**: histologische Untersuchung eines Primärtumors

**category**: Neoplastic disease

**code**: Gutartige Neubildung: Hirnhäute

**bodySite**: Hirnhäute

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**recordedDate**: 2022-09-05



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-diagnose-meningeom-benigne",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2026.0.3"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2022-09-05"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "version" : "2019",
        "code" : "9530/0",
        "display" : "Meningeom o.n.A."
      }]
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
      "version" : "2022",
      "code" : "D32.0",
      "display" : "Gutartige Neubildung: Hirnhäute"
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
  "recordedDate" : "2022-09-05"
}

```
