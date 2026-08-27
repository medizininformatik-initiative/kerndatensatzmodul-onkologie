# mii-exa-onko-mamma-rezeptorstatus-progesteron-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-mamma-rezeptorstatus-progesteron-1**

## Beispiel Observation: mii-exa-onko-mamma-rezeptorstatus-progesteron-1

-------

**German**

-------

Profile: [MII PR Onkologie Rezeptorstatus Progesteron](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron.md) version: 2026.0.3

**status**: Final

**code**: Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain

**subject**: [Martha MammaCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-mamma-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse](Condition-mii-exa-onko-mamma-diagnose.md)

**value**: Positive

> **component****code**: Percent of cells with progesterone receptor in primary malignant neoplasm of breast by immunohistochemistry**value**: 25 %

> **component****code**: Intensity of stain of progesterone receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)**value**: Weak



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-mamma-rezeptorstatus-progesteron-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-rezeptorstatus-progesteron|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "85339-0",
      "display" : "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
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
        "code" : "1234803000",
        "display" : "Percent of cells with progesterone receptor in primary malignant neoplasm of breast by immunohistochemistry"
      }]
    },
    "valueQuantity" : {
      "value" : 25,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "1237278006",
        "display" : "Intensity of stain of progesterone receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
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
