# Strahlentherapie: Beispiel einer Strahlentherapie mit allgemeinem OPS-Code 8-52 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Strahlentherapie: Beispiel einer Strahlentherapie mit allgemeinem OPS-Code 8-52**

## Example Procedure: Strahlentherapie: Beispiel einer Strahlentherapie mit allgemeinem OPS-Code 8-52

-------

**English**

-------

Profile: [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.md) version: 2027.0.0-ballot.rc1

**Procedure Method**: perkutan mit Chemotherapie/Sensitizer

**MII EX Onko Strahlentherapie Bestrahlung Gesamtdosis**: 60 Gy

**MII EX Onko Strahlentherapie Bestrahlung Einzeldosis**: 12 Gy

**MII EX Onko Strahlentherapie Bestrahlung Boost**: simultan integrierter Boost

**status**: Completed

**category**: Radiotherapy (procedure)

**code**: Strahlentherapie

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**performed**: 2019-07-04 --> 2019-09-14

**bodySite**: Lunge (r, l)

**usedCode**: Protonen (leichte Wasserstoffionen/H1/Leichtionen)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/procedure-method",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart",
        "code" : "PRCJ"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis",
    "valueQuantity" : {
      "value" : 60,
      "unit" : "Gy"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis",
    "valueQuantity" : {
      "value" : 12,
      "unit" : "Gy"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-boost",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost",
        "code" : "SIB"
      }]
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1287742003",
      "display" : "Radiotherapy (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2019",
      "code" : "8-52"
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
      "code" : "3.4"
    }]
  }],
  "usedCode" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart",
      "code" : "PN"
    }]
  }]
}

```
