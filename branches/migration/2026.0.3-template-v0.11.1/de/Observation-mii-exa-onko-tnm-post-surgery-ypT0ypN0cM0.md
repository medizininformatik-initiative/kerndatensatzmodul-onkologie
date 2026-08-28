# mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0**

## Beispiel Observation: mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0

-------

**German**

-------

Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md)

**status**: Final

**code**: Pathologic TNM stage grouping

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2024-06-15

**value**: Stadium X

**method**: 8. Auflage

**hasMember**: 

* [Observation pT category (observable entity)](Observation-mii-exa-onko-tnm-t-kategorie-ypT0.md)
* [Observation pN category (observable entity)](Observation-mii-exa-onko-tnm-n-kategorie-ypN0.md)
* [Observation cM category (observable entity)](Observation-mii-exa-onko-tnm-m-kategorie-cM0.md)
* [Observation Status of lymphatic (small vessel) invasion by tumor (observable entity)](Observation-mii-exa-onko-tnm-journey-l-kategorie-L0.md)
* [Observation Status of venous (large vessel) invasion by tumor (observable entity)](Observation-mii-exa-onko-tnm-journey-v-kategorie-V0.md)
* [Observation Presence of direct invasion by primary malignant neoplasm to nerve (observable entity)](Observation-mii-exa-onko-tnm-journey-pn-kategorie-Pn0.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "399588009",
      "display" : "Pathologic TNM stage grouping"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-06-15",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "okk",
      "display" : "Stadium X"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
      "code" : "8",
      "display" : "8. Auflage"
    }]
  },
  "hasMember" : [{
    "reference" : "Observation/mii-exa-onko-tnm-t-kategorie-ypT0"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-n-kategorie-ypN0"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-m-kategorie-cM0"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-journey-l-kategorie-L0"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-journey-v-kategorie-V0"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-journey-pn-kategorie-Pn0"
  }]
}

```
