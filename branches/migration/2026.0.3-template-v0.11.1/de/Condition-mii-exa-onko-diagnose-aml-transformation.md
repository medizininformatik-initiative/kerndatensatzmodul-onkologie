# MII EXA Onkologie Diagnose sekundäre AML (Transformation aus MDS) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Onkologie Diagnose sekundäre AML (Transformation aus MDS)**

## Beispiel Condition: MII EXA Onkologie Diagnose sekundäre AML (Transformation aus MDS)

-------

**German**

-------

Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md) version: 2026.0.3

**Condition Asserted Date**: 2025-06-02

**MII EX Onko Histology Morphology Behavior ICDO3**: Akute myeloische Leukämie mit myelodysplasieassoziierten Veränderungen

**MII EX Onkologie Transformation von**: [Condition Myelodysplastisches Syndrom: Refraktäre Anämie mit Ringsideroblasten](Condition-mii-exa-onko-diagnose-mds.md)

**Condition Occurred Following**: [Condition Myelodysplastisches Syndrom: Refraktäre Anämie mit Ringsideroblasten](Condition-mii-exa-onko-diagnose-mds.md)

**clinicalStatus**: Active

**verificationStatus**: histologische Untersuchung eines Primärtumors

**code**: Akute myeloblastische Leukämie [AML]

**bodySite**: Knochenmark

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**recordedDate**: 2025-06-02



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-diagnose-aml-transformation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2026.0.3"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2025-06-02"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "version" : "2019",
        "code" : "9895/3",
        "display" : "Akute myeloische Leukämie mit myelodysplasieassoziierten Veränderungen"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-transformation-von",
    "valueReference" : {
      "reference" : "Condition/mii-exa-onko-diagnose-mds"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing",
    "valueReference" : {
      "reference" : "Condition/mii-exa-onko-diagnose-mds"
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
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2025",
      "code" : "C92.0",
      "display" : "Akute myeloblastische Leukämie [AML]"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "code" : "C42.1",
      "display" : "Knochenmark"
    }]
  }],
  "subject" : {
    "reference" : "Patient/example"
  },
  "recordedDate" : "2025-06-02"
}

```
