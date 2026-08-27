# mii-exa-onko-befund-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-befund-1**

## Beispiel DiagnosticReport: mii-exa-onko-befund-1

-------

**German**

-------

Profile: [MII PR Onkologie Befund](StructureDefinition-mii-pr-onko-befund.md) version: 2026.0.3

## Pathology report Cancer Narrative 

| | |
| :--- | :--- |
| Subject | Kim Musterperson (no stated gender), DoB: 1956-03-14 |

**Report Details**

Mäßig differenziertes invasiv duktales Karzinom (8500/3), Grading G2 an der rechten Mamma, ...



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "mii-exa-onko-befund-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund|2026.0.3"]
  },
  "basedOn" : [{
    "reference" : "CarePlan/example-tumorboard-1"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "22034-3"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "specimen" : [{
    "reference" : "Specimen/example-specimen-2"
  }],
  "conclusion" : "Mäßig differenziertes invasiv duktales Karzinom (8500/3), Grading G2 an der rechten Mamma, ..."
}

```
