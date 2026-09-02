# mii-exa-onko-allgemeiner-leistungszustand-ecog - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-onko-allgemeiner-leistungszustand-ecog**

## Example Observation: mii-exa-onko-allgemeiner-leistungszustand-ecog

-------

**English**

-------

Profile: [MII PR Onkologie Allgemeiner Leistungszustand ECOG](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog.md) version: 2026.0.3

**status**: Final

**code**: ECOG performance status

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**value**: Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50 % der Wachzeit aufstehen (50 - 60 % nach Karnofsky)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-allgemeiner-leistungszustand-ecog",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog|2026.0.3"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "423740007"
    },
    {
      "system" : "http://loinc.org",
      "code" : "89262-0"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog",
      "code" : "2",
      "display" : "Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50 % der Wachzeit aufstehen (50 - 60 % nach Karnofsky)"
    },
    {
      "system" : "http://loinc.org",
      "code" : "LA9623-5",
      "display" : "Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, e.g., light house work, office work"
    }]
  }
}

```
