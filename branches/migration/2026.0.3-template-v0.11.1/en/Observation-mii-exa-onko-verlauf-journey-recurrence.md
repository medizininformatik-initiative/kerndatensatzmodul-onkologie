# mii-exa-onko-verlauf-journey-recurrence - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-verlauf-journey-recurrence**

## Example Observation: mii-exa-onko-verlauf-journey-recurrence

-------

**English**

-------

Profile: [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.md)

**status**: Final

**code**: Status of regression of tumor (observable entity)

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**focus**: [Condition/exampleOncologicCondition](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Condition/exampleOncologicCondition)

**effective**: 2027-06-20

**value**: Progression

> **component****code**: Status of residual neoplasm (observable entity)**value**: Lokalrezidiv

> **component****code**: Presence of metastatic neoplasm in regional lymph node (observable entity)**value**: neu aufgetretenes Lymphknotenrezidiv

> **component****code**: Status of distant metastasis (observable entity)**value**: neu aufgetretene Fernmetastase(n) bzw. Metastasenrezidiv



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-verlauf-journey-recurrence",
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
    "reference" : "Condition/exampleOncologicCondition"
  }],
  "effectiveDateTime" : "2027-06-20",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung",
      "code" : "P",
      "display" : "Progression"
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
        "code" : "R",
        "display" : "Lokalrezidiv"
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
        "code" : "R",
        "display" : "neu aufgetretenes Lymphknotenrezidiv"
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
        "code" : "R",
        "display" : "neu aufgetretene Fernmetastase(n) bzw. Metastasenrezidiv"
      }]
    }
  }]
}

```
