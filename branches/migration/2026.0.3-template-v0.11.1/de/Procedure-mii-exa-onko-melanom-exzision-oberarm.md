# Melanom Exzision Oberarm Beispiel - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Melanom Exzision Oberarm Beispiel**

## Beispiel Procedure: Melanom Exzision Oberarm Beispiel

-------

**German**

-------

Profile: [MII PR Onko Melanom Exzision](StructureDefinition-mii-pr-onko-melanom-exzision.md) version: 2026.0.3

**MII EX Onko Operation Intention**: kurativ

**status**: Completed

**category**: Surgical procedure

**code**: Lokale Exzision von erkranktem Gewebe an Haut und Unterhaut: Ohne primären Wundverschluss: Schulter und Axilla

**subject**: [Maria Melanom (no stated gender), DoB Unknown](Patient-mii-exa-onko-melanom-bundle-patient.md)

**performed**: 2024-03-20

**reasonReference**: [Condition Bösartiges Melanom der Haut, nicht näher bezeichnet](Condition-mii-exa-onko-melanom-diagnose.md)

**bodySite**: Left upper arm structure

**outcome**: Kein Residualtumor



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-melanom-exzision-oberarm",
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
      "code" : "5-894.06",
      "display" : "Lokale Exzision von erkranktem Gewebe an Haut und Unterhaut: Ohne primären Wundverschluss: Schulter und Axilla"
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
  "performedDateTime" : "2024-03-20",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-melanom-diagnose"
  }],
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "368208006",
      "display" : "Left upper arm structure"
    }]
  }],
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
      "code" : "R0",
      "display" : "Kein Residualtumor"
    }]
  }
}

```
