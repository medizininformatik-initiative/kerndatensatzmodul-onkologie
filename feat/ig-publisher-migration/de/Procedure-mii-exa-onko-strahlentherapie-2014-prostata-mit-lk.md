# Migration Beispiel: Prostata mit Lymphknoten (oBDS 2014 → 2021) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Procedure: Migration Beispiel: Prostata mit Lymphknoten (oBDS 2014 → 2021)

-------

**German**

-------

Profile: [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.md) version: 2026.0.3

**MII EX Onko Strahlentherapie Bestrahlung Gesamtdosis**: 78 Gy (Details: UCUM codeGy = 'Gy')

**MII EX Onko Strahlentherapie Bestrahlung Einzeldosis**: 2 Gy (Details: UCUM codeGy = 'Gy')

**status**: Completed

**category**: Radiotherapy (procedure)

**code**: Hochvoltstrahlentherapie

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**encounter**: [Encounter/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Encounter/example)

**performed**: 2023-05-10 --> 2023-07-15

**reasonReference**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

**bodySite**: Prostata mit Lk



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-strahlentherapie-2014-prostata-mit-lk",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie|2026.0.3"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis",
    "valueQuantity" : {
      "value" : 78,
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
    "start" : "2023-05-10",
    "end" : "2023-07-15"
  },
  "reasonReference" : [{
    "reference" : "Condition/primaertumor-example"
  }],
  "bodySite" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet-2014",
      "code" : "5.4.+",
      "display" : "Prostata mit Lk"
    }]
  }]
}

```
