# MII EXA Onko Melanom Sicherheitsabstand - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onko Melanom Sicherheitsabstand**

## Example Observation: MII EXA Onko Melanom Sicherheitsabstand

-------

**English**

-------

Profile: [MII PR Onkologie Melanom Sicherheitsabstand](StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand.md)

**status**: Final

**code**: Distance of in situ melanoma from closest lateral surgical margin in excised specimen of skin (observable entity)

**subject**: [Maria Melanom (no stated gender), DoB Unknown](Patient-mii-exa-onko-melanom-bundle-patient.md)

**focus**: [Condition Bösartiges Melanom der Haut, nicht näher bezeichnet](Condition-mii-exa-onko-melanom-diagnose.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP)](Encounter-mii-exa-onko-melanom-bundle-encounter.md)

**effective**: 2024-03-25 10:00:00+0100

**value**: 5 mm (Details: UCUM codemm = 'mm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-onko-melanom-sicherheitsabstand",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-sicherheitsabstand"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "396511007",
      "display" : "Distance of in situ melanoma from closest lateral surgical margin in excised specimen of skin (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-melanom-bundle-patient"
  },
  "focus" : [{
    "reference" : "Condition/mii-exa-onko-melanom-diagnose"
  }],
  "encounter" : {
    "reference" : "Encounter/mii-exa-onko-melanom-bundle-encounter"
  },
  "effectiveDateTime" : "2024-03-25T10:00:00+01:00",
  "valueQuantity" : {
    "value" : 5,
    "unit" : "mm",
    "system" : "http://unitsofmeasure.org",
    "code" : "mm"
  }
}

```
