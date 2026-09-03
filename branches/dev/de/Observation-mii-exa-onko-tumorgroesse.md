# mii-exa-onko-tumorgroesse - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tumorgroesse**

## Beispiel Observation: mii-exa-onko-tumorgroesse

-------

**German**

-------

Profile: [MII PR Onkologie Tumorgröße](StructureDefinition-mii-pr-onko-tumorgroesse.md)

**status**: Final

**code**: Size Tumor

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**focus**: [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)

**effective**: 2024-03-15

**value**: 25 mm (Details: UCUM codemm = 'mm')

**bodySite**: Left breast structure (body structure)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tumorgroesse",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorgroesse"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "21889-1",
      "display" : "Size Tumor"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "371479009",
      "display" : "Tumor size, largest dimension (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "focus" : [{
    "reference" : "Condition/primaertumor-example"
  }],
  "effectiveDateTime" : "2024-03-15",
  "valueQuantity" : {
    "value" : 25,
    "unit" : "mm",
    "system" : "http://unitsofmeasure.org",
    "code" : "mm"
  },
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80248007",
      "display" : "Left breast structure (body structure)"
    }]
  }
}

```
