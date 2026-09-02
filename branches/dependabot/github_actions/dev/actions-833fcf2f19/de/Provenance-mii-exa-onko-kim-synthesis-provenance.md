# mii-exa-onko-kim-synthesis-provenance - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-kim-synthesis-provenance**

## Beispiel Provenance: mii-exa-onko-kim-synthesis-provenance

-------

**German**

-------

Provenance for: 

* [Observation Integrated TNM category](Observation-mii-exa-onko-kim-synth1.md)
* [Observation Integrated TNM category](Observation-mii-exa-onko-kim-synth2.md)
* [Observation Integrated TNM category](Observation-mii-exa-onko-kim-synth3.md)
* [Observation Integrated TNM category](Observation-mii-exa-onko-kim-synth4.md)

Summary

| | |
| :--- | :--- |
| Occurrence | 2021-06-25 --> 2022-01-15 |
| Recorded | 2026-05-06 14:00:00+0200 |
| Activity | wasDerivedFrom |

**Agents**

* **Type**: Performer
  * **who**: [ETL-Pipeline (synthesize_tnm v1.0.0)](Device-mii-exa-onko-kim-synthesis-device.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "mii-exa-onko-kim-synthesis-provenance",
  "target" : [{
    "reference" : "Observation/mii-exa-onko-kim-synth1"
  },
  {
    "reference" : "Observation/mii-exa-onko-kim-synth2"
  },
  {
    "reference" : "Observation/mii-exa-onko-kim-synth3"
  },
  {
    "reference" : "Observation/mii-exa-onko-kim-synth4"
  }],
  "occurredPeriod" : {
    "start" : "2021-06-25",
    "end" : "2022-01-15"
  },
  "recorded" : "2026-05-06T14:00:00+02:00",
  "activity" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/w3c-provenance-activity-type",
      "code" : "Derivation",
      "display" : "wasDerivedFrom"
    }]
  },
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
        "code" : "performer"
      }]
    },
    "who" : {
      "reference" : "Device/mii-exa-onko-kim-synthesis-device",
      "display" : "ETL-Pipeline (synthesize_tnm v1.0.0)"
    }
  }],
  "entity" : [{
    "role" : "source",
    "what" : {
      "reference" : "Library/mii-lib-onko-synthesize-tnm",
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Library/mii-lib-onko-synthesize-tnm",
        "value" : "1.0.0"
      },
      "display" : "synthesize_tnm v1.0.0"
    }
  },
  {
    "role" : "source",
    "what" : {
      "reference" : "Observation/mii-exa-onko-kim-klass1"
    }
  },
  {
    "role" : "source",
    "what" : {
      "reference" : "Observation/mii-exa-onko-kim-klass2"
    }
  },
  {
    "role" : "source",
    "what" : {
      "reference" : "Observation/mii-exa-onko-kim-klass3"
    }
  }]
}

```
