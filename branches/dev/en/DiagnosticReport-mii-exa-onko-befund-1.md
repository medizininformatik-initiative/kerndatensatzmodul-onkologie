# mii-exa-onko-befund-1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-befund-1**

## Example DiagnosticReport: mii-exa-onko-befund-1

-------

**English**

-------

Profile: [MII PR Onkologie Befund](StructureDefinition-mii-pr-onko-befund.md) version: 2027.0.0-ballot.rc1

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
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund|2027.0.0-ballot.rc1"]
  },
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-01"
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
    "reference" : "Specimen/mii-exa-onko-specimen-1"
  }],
  "conclusion" : "Mäßig differenziertes invasiv duktales Karzinom (8500/3), Grading G2 an der rechten Mamma, ..."
}

```
