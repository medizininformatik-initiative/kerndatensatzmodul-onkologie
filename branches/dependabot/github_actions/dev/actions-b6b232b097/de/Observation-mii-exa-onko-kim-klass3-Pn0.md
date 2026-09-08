# mii-exa-onko-kim-klass3-Pn0 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-kim-klass3-Pn0**

## Beispiel Observation: mii-exa-onko-kim-klass3-Pn0

-------

**German**

-------

Profile: [MII PR Onkologie TNM Pn-Kategorie](StructureDefinition-mii-pr-onko-tnm-pn-kategorie.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Presence of direct invasion by primary malignant neoplasm to nerve (observable entity)

**subject**: [Kim Musterperson Female, DoB: 1956-03-14](Patient-mii-exa-onko-kim-synth-patient.md)

**effective**: 2021-10-15

**value**: Pn0

**method**: 8. Auflage



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-kim-klass3-Pn0",
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
    "reference" : "Patient/mii-exa-onko-kim-synth-patient"
  },
  "effectiveDateTime" : "2021-10-15",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "Pn0",
      "display" : "Pn0"
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
