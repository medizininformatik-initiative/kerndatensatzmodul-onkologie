# mii-exa-onko-prostata-ca-befall-stanze-1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-prostata-ca-befall-stanze-1**

## Beispiel Observation: mii-exa-onko-prostata-ca-befall-stanze-1

-------

**German**

-------

Profile: [MII PR Onkologie Ca-Befall Stanze](StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.md) version: 2027.0.0-ballot.rc1

**status**: Final

**code**: Tissue involved by tumor in Prostate tumor

**subject**: [Peter ProstataCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-prostata-bundle-patient.md)

**focus**: [Condition Bösartige Neubildung der Prostata](Condition-mii-exa-onko-prostata-diagnose.md)

**effective**: 2024-01-02

**value**: 80 %

**specimen**: [Specimen: accessionIdentifier = P-2024-000812](Specimen-mii-exa-onko-prostata-specimen-stanze.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-prostata-ca-befall-stanze-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-ca-befall-stanze|2027.0.0-ballot.rc1"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "44654-2",
      "display" : "Tissue involved by tumor in Prostate tumor"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-prostata-diagnose"
  }],
  "effectiveDateTime" : "2024-01-02",
  "valueQuantity" : {
    "value" : 80,
    "unit" : "%"
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-onko-prostata-specimen-stanze"
  }
}

```
