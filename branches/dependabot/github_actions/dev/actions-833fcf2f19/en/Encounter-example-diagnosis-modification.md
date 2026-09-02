# Beispiel-Kontakt Diagnosestellung FOLFOX-Modifikation (Anker) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel-Kontakt Diagnosestellung FOLFOX-Modifikation (Anker)**

## Example Encounter: Beispiel-Kontakt Diagnosestellung FOLFOX-Modifikation (Anker)

-------

**English**

-------

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**subject**: [Martin Beispiel Male, DoB: 1958-11-03](Patient-example-modification.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "example-diagnosis-modification",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "subject" : {
    "reference" : "Patient/example-modification"
  }
}

```
