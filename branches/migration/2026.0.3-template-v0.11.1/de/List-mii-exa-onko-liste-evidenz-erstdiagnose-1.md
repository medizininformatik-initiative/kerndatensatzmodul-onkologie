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
| Subject:[Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example) | |

* **Items**: [Observation/example-ecog-zustand](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/example-ecog-zustand)
* **Items**: [Observation/example-tnm-klassifikation](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/example-tnm-klassifikation)
* **Items**: [Observation/example-tnm-t-kategorie](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/example-tnm-t-kategorie)
* **Items**: [Observation/example-tnm-n-kategorie](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/example-tnm-n-kategorie)
* **Items**: [Observation/example-tnm-m-kategorie](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/example-tnm-m-kategorie)
* **Items**: [Observation/example-tnm-l-kategorie](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/example-tnm-l-kategorie)
* **Items**: [Observation/example-fernmetastase-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/example-fernmetastase-1)
* **Items**: [Observation/example-fernmetastase-2](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/example-fernmetastase-2)
* **Items**: [DiagnosticReport/example-pathobefund-1](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/DiagnosticReport/example-pathobefund-1)



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
      "reference" : "Observation/example-ecog-zustand"
    }
  },
  {
    "item" : {
      "reference" : "Observation/example-tnm-klassifikation"
    }
  },
  {
    "item" : {
      "reference" : "Observation/example-tnm-t-kategorie"
    }
  },
  {
    "item" : {
      "reference" : "Observation/example-tnm-n-kategorie"
    }
  },
  {
    "item" : {
      "reference" : "Observation/example-tnm-m-kategorie"
    }
  },
  {
    "item" : {
      "reference" : "Observation/example-tnm-l-kategorie"
    }
  },
  {
    "item" : {
      "reference" : "Observation/example-fernmetastase-1"
    }
  },
  {
    "item" : {
      "reference" : "Observation/example-fernmetastase-2"
    }
  },
  {
    "item" : {
      "reference" : "DiagnosticReport/example-pathobefund-1"
    }
  }]
}

```
