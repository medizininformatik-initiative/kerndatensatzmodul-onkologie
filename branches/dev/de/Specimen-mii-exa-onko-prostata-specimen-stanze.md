# MII EXA Onkologie Prostata Stanzbiopsie Specimen - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Onkologie Prostata Stanzbiopsie Specimen**

## Beispiel Specimen: MII EXA Onkologie Prostata Stanzbiopsie Specimen

-------

**German**

-------

Profile: [MII PR Onkologie Specimen](StructureDefinition-mii-pr-onko-specimen.md) version: 2027.0.0-ballot.rc1

**accessionIdentifier**: P-2024-000812

**subject**: [Peter ProstataCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-prostata-bundle-patient.md)

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2024-01-02 |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-onko-prostata-specimen-stanze",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen|2027.0.0-ballot.rc1"]
  },
  "accessionIdentifier" : {
    "value" : "P-2024-000812"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
  },
  "collection" : {
    "collectedDateTime" : "2024-01-02"
  }
}

```
