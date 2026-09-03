# mii-exa-onko-specimen-1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-onko-specimen-1**

## Beispiel Specimen: mii-exa-onko-specimen-1

-------

**German**

-------

Profile: [MII PR Onkologie Specimen](StructureDefinition-mii-pr-onko-specimen.md) version: 2027.0.0-ballot.rc1

**accessionIdentifier**: 357532265

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

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
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen|2027.0.0-ballot.rc1"]
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
