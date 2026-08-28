# Medikation Imatinib (ATC Versionsübergang) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Medikation Imatinib (ATC Versionsübergang)**

## Beispiel MedicationStatement: Medikation Imatinib (ATC Versionsübergang)

-------

**German**

-------

Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md) version: 2026.0.3

**basedOn**: [CarePlan: identifier = Tumorkonferenz_1; status = active; intent = plan; category = postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie); created = 2024-01-11](CarePlan-mii-exa-onko-tumorkonferenz-01.md)

**partOf**: [Procedure Chemotherapie](Procedure-mii-exa-onko-systemische-therapie-1.md)

**status**: Completed

**medication**: Imatinib (BCR-ABL Tyrosinkinase-Inhibitor)

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2020-12-01 --> 2024-08-30

**note**: 

> 

CML-Protokoll mit Imatinib




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-onko-medikation-imatinib-atc-version-transition",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation|2026.0.3"]
  },
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-01"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-onko-systemische-therapie-1"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2020",
      "code" : "L01XE01",
      "display" : "Imatinib"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2021",
      "code" : "L01EA01",
      "display" : "Imatinib"
    }],
    "text" : "Imatinib (BCR-ABL Tyrosinkinase-Inhibitor)"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectivePeriod" : {
    "start" : "2020-12-01",
    "end" : "2024-08-30"
  },
  "note" : [{
    "text" : "CML-Protokoll mit Imatinib"
  }]
}

```
