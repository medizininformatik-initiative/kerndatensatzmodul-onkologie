# mii-exa-onko-tnm-bundle-n-kategorie-cN3 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tnm-bundle-n-kategorie-cN3**

## Beispiel Observation: mii-exa-onko-tnm-bundle-n-kategorie-cN3

-------

**German**

-------

Profile: [MII PR Onkologie TNM N-Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: cN category (observable entity)

**subject**: [Tobias TNMBeispiel Male, DoB: 1962-04-18](Patient-mii-exa-onko-tnm-bundle-patient.md)

**effective**: 2024-01-11

**value**: N3

**method**: 8. Auflage



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-bundle-n-kategorie-cN3",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie|2027.0.0-ballot.rc1"]
  },
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
    "reference" : "Patient/mii-exa-onko-tnm-bundle-patient"
  },
  "effectiveDateTime" : "2024-01-11",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "N3",
      "display" : "N3"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "1353045000",
      "display" : "Union for International Cancer Control cN3 (qualifier value)"
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
