# mii-exa-onko-tnm-pn-kategorie-Pn1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-tnm-pn-kategorie-Pn1**

## Beispiel Observation: mii-exa-onko-tnm-pn-kategorie-Pn1

-------

**German**

-------

Profile: [MII PR Onkologie TNM Pn-Kategorie](StructureDefinition-mii-pr-onko-tnm-pn-kategorie.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Presence of direct invasion by primary malignant neoplasm to nerve (observable entity)

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2024-01-12

**value**: Pn1

**method**: 8. Auflage



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tnm-pn-kategorie-Pn1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-pn-kategorie|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "371513001",
      "display" : "Presence of direct invasion by primary malignant neoplasm to nerve (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2024-01-12",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "Pn1",
      "display" : "Pn1"
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
