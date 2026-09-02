# Example surgical therapy - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Example surgical therapy**

## Beispiel Procedure: Example surgical therapy

-------

**German**

-------

Profile: [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md) version: 2026.0.3

**MII EX Onko Operation Intention**: kurativ

**basedOn**: [CarePlan: identifier = Tumorkonferenz_1; status = active; intent = plan; category = postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie); created = 2024-01-11](CarePlan-mii-exa-onko-tumorkonferenz-01.md)

**status**: Completed

**category**: Surgical procedure (procedure)

**code**: Partielle (brusterhaltende) Exzision der Mamma und Destruktion von Mammagewebe

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB)](Encounter-example.md)

**performed**: 2021-12-04

**outcome**: Mikroskopischer Residualtumor

**complication**: Hautnekrose im Operationsbereich



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-operation-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation|2026.0.3"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K"
      }]
    }
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-01"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003",
      "display" : "Surgical procedure (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2021",
      "code" : "5-870",
      "display" : "Partielle (brusterhaltende) Exzision der Mamma und Destruktion von Mammagewebe"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "encounter" : {
    "reference" : "Encounter/example"
  },
  "performedDateTime" : "2021-12-04",
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
      "code" : "R1",
      "display" : "Mikroskopischer Residualtumor"
    }]
  },
  "complication" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-komplikation",
      "code" : "HNK",
      "display" : "Hautnekrose im Operationsbereich"
    }]
  }]
}

```
