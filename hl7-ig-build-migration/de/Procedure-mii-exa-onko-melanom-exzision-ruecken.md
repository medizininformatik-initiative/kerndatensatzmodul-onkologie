# Melanom Exzision Rücken Beispiel - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Procedure: Melanom Exzision Rücken Beispiel

-------

**German**

-------

Profile: [MII PR Onko Melanom Exzision](StructureDefinition-mii-pr-onko-melanom-exzision.md) version: 2026.0.3

**MII EX Onko Operation Intention**: kurativ

**status**: Completed

**category**: Surgical procedure

**code**: Lokale Exzision von erkranktem Gewebe an Haut und Unterhaut: Ohne primären Wundverschluss: Brustwand und Rücken

**subject**: [Maria Melanom (no stated gender), DoB Unknown](Patient-mii-exa-onko-melanom-bundle-patient.md)

**performed**: 2024-04-05

**reasonReference**: [Condition Bösartiges Melanom der Haut, nicht näher bezeichnet](Condition-mii-exa-onko-melanom-diagnose.md)

**bodySite**: Structure of posterior region of neck

**outcome**: Kein Residualtumor

**note**: 

> 

Nachexzision mit 2cm Sicherheitsabstand




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-melanom-exzision-ruecken",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-exzision|2026.0.3"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K",
        "display" : "kurativ"
      }]
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003",
      "display" : "Surgical procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2024",
      "code" : "5-894.0a",
      "display" : "Lokale Exzision von erkranktem Gewebe an Haut und Unterhaut: Ohne primären Wundverschluss: Brustwand und Rücken"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "177281002",
      "display" : "Excision of melanoma (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-melanom-bundle-patient"
  },
  "performedDateTime" : "2024-04-05",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-melanom-diagnose"
  }],
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "304036007",
      "display" : "Structure of posterior region of neck"
    }]
  }],
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
      "code" : "R0",
      "display" : "Kein Residualtumor"
    }]
  },
  "note" : [{
    "text" : "Nachexzision mit 2cm Sicherheitsabstand"
  }]
}

```
