# Beispiel-Kontakt (Anker) - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel-Kontakt (Anker)**

## Beispiel Encounter: Beispiel-Kontakt (Anker)

-------

**German**

-------

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "example",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "subject" : {
    "reference" : "Patient/example"
  }
}

```
