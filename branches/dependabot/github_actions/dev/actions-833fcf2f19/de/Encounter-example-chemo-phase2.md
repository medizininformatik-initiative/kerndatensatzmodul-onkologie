# Beispiel-Kontakt Chemotherapie Phase 2 (Anker) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel-Kontakt Chemotherapie Phase 2 (Anker)**

## Beispiel Encounter: Beispiel-Kontakt Chemotherapie Phase 2 (Anker)

-------

**German**

-------

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**subject**: [Martin Beispiel Male, DoB: 1958-11-03](Patient-example-modification.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "example-chemo-phase2",
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
