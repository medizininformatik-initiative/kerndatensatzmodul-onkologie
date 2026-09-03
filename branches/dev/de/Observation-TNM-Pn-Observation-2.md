# TNM-Pn-Observation-2 - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **TNM-Pn-Observation-2**

## Beispiel Observation: TNM-Pn-Observation-2

-------

**German**

-------

Profile: [MII PR Onkologie TNM Pn-Kategorie](StructureDefinition-mii-pr-onko-tnm-pn-kategorie.md)

**partOf**: [Procedure Laparotomy (procedure)](Procedure-PatientKimMusterperson-Procedure-4.md)

**status**: Final

**code**: Presence of direct invasion by primary malignant neoplasm to nerve

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2021-06-22

**value**: Pn0

**method**: 8. Auflage



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "TNM-Pn-Observation-2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-pn-kategorie"]
  },
  "partOf" : [{
    "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "371513001"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectiveDateTime" : "2021-06-22",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "code" : "Pn0"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
      "code" : "8",
      "display" : "8. Auflage"
    }]
  }
}

```
