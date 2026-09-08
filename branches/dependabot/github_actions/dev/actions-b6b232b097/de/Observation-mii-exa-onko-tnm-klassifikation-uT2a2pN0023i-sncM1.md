# mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1**

## Beispiel Observation: mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1

-------

**German**

-------

Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Pathologic TNM stage grouping

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2024-01-11

**value**: Stadium IVC

**method**: 8. Auflage

**hasMember**: 

* [Observation cT category (observable entity)](Observation-mii-exa-onko-tnm-t-kategorie-uT2a2.md)
* [Observation pN category (observable entity)](Observation-mii-exa-onko-tnm-n-kategorie-pN0i-sn.md)
* [Observation Regional lymph nodes positive [#] Specimen](Observation-mii-exa-onko-anzahl-befallene-lymphknoten-0.md)
* [Observation Regional lymph nodes examined [#] Specimen](Observation-mii-exa-onko-anzahl-untersuchte-lymphknoten-23.md)
* [Observation pN category (observable entity)](Observation-mii-exa-onko-tnm-n-kategorie-pN0i-sn.md)
* [Observation cM category (observable entity)](Observation-mii-exa-onko-tnm-m-kategorie-cM1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation|2027.0.0-ballot.rc1"]
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
  "effectiveDateTime" : "2024-01-11",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "IVC",
      "display" : "Stadium IVC"
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
    "reference" : "Observation/mii-exa-onko-tnm-t-kategorie-uT2a2"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-n-kategorie-pN0i-sn"
  },
  {
    "reference" : "Observation/mii-exa-onko-anzahl-befallene-lymphknoten-0"
  },
  {
    "reference" : "Observation/mii-exa-onko-anzahl-untersuchte-lymphknoten-23"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-n-kategorie-pN0i-sn"
  },
  {
    "reference" : "Observation/mii-exa-onko-tnm-m-kategorie-cM1"
  }]
}

```
