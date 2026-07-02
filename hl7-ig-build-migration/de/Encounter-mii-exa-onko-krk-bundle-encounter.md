# mii-exa-onko-krk-bundle-encounter - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Encounter: mii-exa-onko-krk-bundle-encounter

-------

**German**

-------

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**subject**: [Klaus KolorektalCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-krk-bundle-patient.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-onko-krk-bundle-encounter",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP",
    "display" : "inpatient encounter"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
  }
}

```
