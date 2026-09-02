# mii-exa-onko-mamma-rezeptorstatus-estrogen-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-mamma-rezeptorstatus-estrogen-1**

## Beispiel Observation: mii-exa-onko-mamma-rezeptorstatus-estrogen-1

-------

**German**

-------

Profile: [MII PR Onkologie Rezeptorstatus Estrogen](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.md) version: 2026.0.3

**status**: Final

**code**: Estrogen receptor Ag [Presence] in Tissue by Immune stain

**subject**: [Martha MammaCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-mamma-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse](Condition-mii-exa-onko-mamma-diagnose.md)

**value**: Positive

> **component****code**: Percent of cells with estrogen receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)**value**: 5 %

> **component****code**: Intensity of stain of estrogen receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)**value**: Weak



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-mamma-rezeptorstatus-estrogen-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-rezeptorstatus-estrogen|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "40556-3",
      "display" : "Estrogen receptor Ag [Presence] in Tissue by Immune stain"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-mamma-bundle-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-mamma-diagnose"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA6576-8",
      "display" : "Positive"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1234804006",
        "display" : "Percent of cells with estrogen receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
      }]
    },
    "valueQuantity" : {
      "value" : 5,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1236874005",
        "display" : "Intensity of stain of estrogen receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA13034-6",
        "display" : "Weak"
      }]
    }
  }]
}

```
