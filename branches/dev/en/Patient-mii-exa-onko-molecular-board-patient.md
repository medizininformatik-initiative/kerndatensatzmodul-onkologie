# Molecular Tumor Board Patient - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Molecular Tumor Board Patient**

## Example Patient: Molecular Tumor Board Patient

-------

**English**

-------

Maria Müller Female, DoB: 1968-07-22 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#MTB-2024-001)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "mii-exa-onko-molecular-board-patient",
  "identifier" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/sid/patienten",
    "value" : "MTB-2024-001"
  }],
  "name" : [{
    "family" : "Müller",
    "given" : ["Maria"]
  }],
  "gender" : "female",
  "birthDate" : "1968-07-22"
}

```
