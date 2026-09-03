# mii-exa-onko-verlauf-journey-post-chemo - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-verlauf-journey-post-chemo**

## Example Observation: mii-exa-onko-verlauf-journey-post-chemo

-------

**English**

-------

Profile: [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.md)

**status**: Final

**code**: Status of regression of tumor (observable entity)

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**focus**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

**effective**: 2024-05-20

**value**: Teilremission (partial remission, PR)

> **component****code**: Status of residual neoplasm (observable entity)**value**: Tumorreste (Residualtumor)

> **component****code**: Presence of metastatic neoplasm in regional lymph node (observable entity)**value**: kein Lymphknotenbefall nachweisbar

> **component****code**: Status of distant metastasis (observable entity)**value**: keine Fernmetastasen nachweisbar



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-verlauf-journey-post-chemo",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "396432002",
      "display" : "Status of regression of tumor (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "focus" : [{
    "reference" : "Condition/primaertumor-example"
  }],
  "effectiveDateTime" : "2024-05-20",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung",
      "code" : "T",
      "display" : "Teilremission (partial remission, PR)"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "445200009",
        "display" : "Status of residual neoplasm (observable entity)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor",
        "code" : "T",
        "display" : "Tumorreste (Residualtumor)"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "399656008",
        "display" : "Presence of metastatic neoplasm in regional lymph node (observable entity)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten",
        "code" : "K",
        "display" : "kein Lymphknotenbefall nachweisbar"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "399608002",
        "display" : "Status of distant metastasis (observable entity)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen",
        "code" : "K",
        "display" : "keine Fernmetastasen nachweisbar"
      }]
    }
  }]
}

```
