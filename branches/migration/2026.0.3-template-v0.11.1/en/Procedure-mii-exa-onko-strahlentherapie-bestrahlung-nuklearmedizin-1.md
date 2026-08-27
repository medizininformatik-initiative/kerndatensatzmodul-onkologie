# Strahlentherapie: Beispiel einer Nuklearmedizinischen Bestrahlungstherapie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Strahlentherapie: Beispiel einer Nuklearmedizinischen Bestrahlungstherapie**

## Example Procedure: Strahlentherapie: Beispiel einer Nuklearmedizinischen Bestrahlungstherapie

-------

**English**

-------

Profile: [MII PR Onkologie Strahlentherapie Nuklearmedizin](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.md) version: 2026.0.3

**MII EX Onko Strahlentherapie Bestrahlung Gesamtdosis**: 30 GBq

**MII EX Onko Strahlentherapie Bestrahlung Boost**: nein, ohne Boost

**Procedure Method**: PSMA-Therapie

**status**: Completed

**category**: Radionuclide therapy

**code**: Therapie mit offenen Radionukliden: Intravenöse Radioliganden-Therapie: Therapie mit Lutetium-177-PSMA-Liganden

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**performed**: 2019-07-04 --> 2019-09-14

**bodySite**: Becken (r, l)

**usedCode**: Lu-177



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin|2026.0.3"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis",
    "valueQuantity" : {
      "value" : 30,
      "unit" : "GBq"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-boost",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost",
        "code" : "N"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/procedure-method",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart",
        "code" : "MPSMA"
      }]
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "399315003",
      "display" : "Radionuclide therapy"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2019",
      "code" : "8-530.d0",
      "display" : "Therapie mit offenen Radionukliden: Intravenöse Radioliganden-Therapie: Therapie mit Lutetium-177-PSMA-Liganden"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "performedPeriod" : {
    "start" : "2019-07-04",
    "end" : "2019-09-14"
  },
  "bodySite" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation",
          "code" : "L"
        }]
      }
    }],
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet",
      "code" : "6.14",
      "display" : "Becken (r, l)"
    }]
  }],
  "usedCode" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart",
      "code" : "Lu-177"
    }]
  }]
}

```
