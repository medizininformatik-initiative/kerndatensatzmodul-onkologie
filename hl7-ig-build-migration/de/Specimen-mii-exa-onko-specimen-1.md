# mii-exa-onko-specimen-1 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Specimen: mii-exa-onko-specimen-1

-------

**German**

-------

Profile: [MII PR Onkologie Specimen](StructureDefinition-mii-pr-onko-specimen.md) version: 2026.0.3

**accessionIdentifier**: 357532265

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2021-03-14 |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-onko-specimen-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen|2026.0.3"]
  },
  "accessionIdentifier" : {
    "value" : "357532265"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "collection" : {
    "collectedDateTime" : "2021-03-14"
  }
}

```
