# Liste der Evidenz zum Erstdiagnosezeitpunkt - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Liste der Evidenz zum Erstdiagnosezeitpunkt**

## Beispiel List: Liste der Evidenz zum Erstdiagnosezeitpunkt

-------

**German**

-------

Profile: [MII PR Onkologie Evidenz Diagnose Primärtumor](StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose.md) version: 2026.0.3

## Liste der Evidenz zum Erstdiagnosezeitpunkt

| | |
| :--- | :--- |
| Mode: Snapshot List | Status: Current |
| Subject:[Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md) | |

* **Items**: [Observation 423740007](Observation-mii-exa-onko-allgemeiner-leistungszustand-ecog.md)
* **Items**: [Observation Clinical TNM stage grouping](Observation-mii-exa-onko-tnm-klassifikation-TisN0M0.md)
* **Items**: [Observation cT category (observable entity)](Observation-mii-exa-onko-tnm-t-kategorie-Tis.md)
* **Items**: [Observation cN category (observable entity)](Observation-mii-exa-onko-tnm-n-kategorie-N0.md)
* **Items**: [Observation cM category (observable entity)](Observation-mii-exa-onko-tnm-m-kategorie-M0.md)
* **Items**: [Observation Status of lymphatic (small vessel) invasion by tumor (observable entity)](Observation-mii-exa-onko-tnm-l-kategorie-L1.md)
* **Items**: [Observation 385421009](Observation-mii-exa-onko-fernmetastasen-1.md)
* **Items**: [Observation 385421009](Observation-mii-exa-onko-cup-fernmetastase-hep.md)
* **Items**: [Diagnostic Report for 'Pathology report Cancer Narrative' for '->Kim Musterperson (no stated gender), DoB: 1956-03-14'](DiagnosticReport-mii-exa-onko-befund-1.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-onko-liste-evidenz-erstdiagnose-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose|2026.0.3"]
  },
  "status" : "current",
  "mode" : "snapshot",
  "title" : "Liste der Evidenz zum Erstdiagnosezeitpunkt",
  "subject" : {
    "reference" : "Patient/example"
  },
  "entry" : [{
    "item" : {
      "reference" : "Observation/mii-exa-onko-allgemeiner-leistungszustand-ecog"
    }
  },
  {
    "item" : {
      "reference" : "Observation/mii-exa-onko-tnm-klassifikation-TisN0M0"
    }
  },
  {
    "item" : {
      "reference" : "Observation/mii-exa-onko-tnm-t-kategorie-Tis"
    }
  },
  {
    "item" : {
      "reference" : "Observation/mii-exa-onko-tnm-n-kategorie-N0"
    }
  },
  {
    "item" : {
      "reference" : "Observation/mii-exa-onko-tnm-m-kategorie-M0"
    }
  },
  {
    "item" : {
      "reference" : "Observation/mii-exa-onko-tnm-l-kategorie-L1"
    }
  },
  {
    "item" : {
      "reference" : "Observation/mii-exa-onko-fernmetastasen-1"
    }
  },
  {
    "item" : {
      "reference" : "Observation/mii-exa-onko-cup-fernmetastase-hep"
    }
  },
  {
    "item" : {
      "reference" : "DiagnosticReport/mii-exa-onko-befund-1"
    }
  }]
}

```
