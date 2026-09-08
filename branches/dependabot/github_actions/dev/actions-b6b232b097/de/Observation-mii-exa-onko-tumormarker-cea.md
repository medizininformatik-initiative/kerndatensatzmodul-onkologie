# MII EXA Onkologie Tumormarker CEA - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Onkologie Tumormarker CEA**

## Beispiel Observation: MII EXA Onkologie Tumormarker CEA

-------

**German**

-------

Profile: [MII PR Onkologie Tumormarker](StructureDefinition-mii-pr-onko-tumormarker.md) version: 2027.0.0-ballot.rc1

**identifier**: Observation Instance Identifier/2039-6_M2026-0042

**status**: Final

**category**: Laboratory studies (set)

**code**: CEA

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**focus**: [Condition Bösartige Neubildung: Oberer äußerer Quadrant der Brustdrüse](Condition-mii-exa-onko-diagnose.md)

**effective**: 2026-03-12 09:30:00+0100

**value**: 4.2 µg/L (Details: UCUM codeug/L = 'ug/L')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-tumormarker-cea",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumormarker|2027.0.0-ballot.rc1"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "OBI"
      }]
    },
    "system" : "https://example.org/fhir/sid/onko-tumormarker-befunde",
    "value" : "2039-6_M2026-0042",
    "assigner" : {
      "identifier" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "DIZ-ID"
      }
    }
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "26436-6",
      "display" : "Laboratory studies (set)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "2039-6",
      "display" : "Carcinoembryonic Ag [Mass/volume] in Serum or Plasma"
    }],
    "text" : "CEA"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-diagnose"
  }],
  "effectiveDateTime" : "2026-03-12T09:30:00+01:00",
  "valueQuantity" : {
    "value" : 4.2,
    "unit" : "µg/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "ug/L"
  }
}

```
