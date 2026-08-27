# mii-exa-onko-tnm-n-kategorie-rcN1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-tnm-n-kategorie-rcN1**

## Example Observation: mii-exa-onko-tnm-n-kategorie-rcN1

-------

**English**

-------

Profile: [MII PR Onkologie TNM N-Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md)

**MII EX Onkologie TNM r-Präfix**: r

**status**: Final

**code**: cN category (observable entity)

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**effective**: 2027-06-20

**value**: N1

**method**: 8. Auflage



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-n-kategorie-rcN1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie"]
  },
  "modifierExtension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-r-praefix",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.uicc.org/resources/tnm",
        "code" : "r",
        "display" : "r"
      }]
    }
  }],
  "status" : "final",
  "code" : {
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "c",
          "display" : "c"
        }]
      }
    }],
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "399534004",
      "display" : "cN category (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2027-06-20",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "N1",
      "display" : "N1"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "1353043007",
      "display" : "Union for International Cancer Control cN1 (qualifier value)"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
      "code" : "8",
      "display" : "8. Auflage"
    }]
  }
}

```
