# PatientKimMusterperson-Specimen-1 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientKimMusterperson-Specimen-1**

## Example Specimen: PatientKimMusterperson-Specimen-1

-------

**English**

-------

**identifier**: 12345678

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2021-09-30 |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "PatientKimMusterperson-Specimen-1",
  "identifier" : [{
    "value" : "12345678"
  }],
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "collection" : {
    "collectedDateTime" : "2021-09-30"
  }
}

```
