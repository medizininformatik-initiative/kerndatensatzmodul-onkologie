# Beispiel Strahlentherapie oBDS 2021 - Axilläre Lymphknoten - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel Strahlentherapie oBDS 2021 - Axilläre Lymphknoten**

## Beispiel Procedure: Beispiel Strahlentherapie oBDS 2021 - Axilläre Lymphknoten

-------

**German**

-------

Profile: [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.md) version: 2027.0.0-ballot.rc1

**MII EX Onko Strahlentherapie Bestrahlung Gesamtdosis**: 46 Gy (Details: UCUM codeGy = 'Gy')

**MII EX Onko Strahlentherapie Bestrahlung Einzeldosis**: 2 Gy (Details: UCUM codeGy = 'Gy')

**partOf**: [Procedure Hochvoltstrahlentherapie](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-primaer.md)

**status**: Completed

**category**: Radiotherapy (procedure)

**code**: Hochvoltstrahlentherapie

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB)](Encounter-example.md)

**performed**: 2023-03-15 --> 2023-04-20

**reasonReference**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

**bodySite**: Axilläre Lymphknoten (r, l)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie|2027.0.0-ballot.rc1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis",
    "valueQuantity" : {
      "value" : 46,
      "system" : "http://unitsofmeasure.org",
      "code" : "Gy"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis",
    "valueQuantity" : {
      "value" : 2,
      "system" : "http://unitsofmeasure.org",
      "code" : "Gy"
    }
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-onko-strahlentherapie-2021-mamma-primaer"
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
      "version" : "2024",
      "code" : "8-522",
      "display" : "Hochvoltstrahlentherapie"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "encounter" : {
    "reference" : "Encounter/example"
  },
  "performedPeriod" : {
    "start" : "2023-03-15",
    "end" : "2023-04-20"
  },
  "reasonReference" : [{
    "reference" : "Condition/primaertumor-example"
  }],
  "bodySite" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation",
          "code" : "R",
          "display" : "rechts"
        }]
      }
    }],
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet",
      "code" : "9.3",
      "display" : "Axilläre Lymphknoten (r, l)"
    }]
  }]
}

```
