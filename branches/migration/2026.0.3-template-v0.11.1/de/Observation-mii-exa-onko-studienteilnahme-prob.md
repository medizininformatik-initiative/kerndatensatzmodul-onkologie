# Studienteilnahme PRO-B - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Studienteilnahme PRO-B**

## Beispiel Observation: Studienteilnahme PRO-B

-------

**German**

-------

Profile: [MII PR Onkologie Studienteilnahme](StructureDefinition-mii-pr-onko-studienteilnahme.md) version: 2026.0.3

**status**: Final

**code**: Enrollment in clinical trial (procedure)

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**focus**: 

* [Condition Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet](Condition-primaertumor-example.md)
* [ResearchStudy PRO-B: Evaluating the effect of an alarm-based patient-reported outcome monitoring compared with usual care in metastatic breast cancer patients](ResearchStudy-mii-exa-onko-studie-prob.md)

**effective**: 2021-06-20

**value**: Patientin wurde in PRO-B Studie eingeschlossen

**note**: 

> 

Patientin mit metastasiertem Mammakarzinom in PRO-B Studie randomisiert. Teilnahme am alarm-basierten PROMs-Monitoring zur Erfassung von Symptomen und Nebenwirkungen.




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-studienteilnahme-prob",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-studienteilnahme|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "709491003",
      "display" : "Enrollment in clinical trial (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "focus" : [{
    "reference" : "Condition/primaertumor-example"
  },
  {
    "reference" : "ResearchStudy/mii-exa-onko-studie-prob"
  }],
  "effectiveDateTime" : "2021-06-20",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-studienteilnahme",
      "code" : "J",
      "display" : "Ja"
    }],
    "text" : "Patientin wurde in PRO-B Studie eingeschlossen"
  },
  "note" : [{
    "text" : "Patientin mit metastasiertem Mammakarzinom in PRO-B Studie randomisiert. Teilnahme am alarm-basierten PROMs-Monitoring zur Erfassung von Symptomen und Nebenwirkungen."
  }]
}

```
