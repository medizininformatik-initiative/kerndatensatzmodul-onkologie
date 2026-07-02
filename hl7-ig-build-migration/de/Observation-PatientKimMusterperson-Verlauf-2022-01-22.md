# PatientKimMusterperson-Verlauf-2022-01-22 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Observation: PatientKimMusterperson-Verlauf-2022-01-22

-------

**German**

-------

Profile: [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.md)

**status**: Final

**code**: Status of regression of tumor (observable entity)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**focus**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md)

**effective**: 2022-01-22

**value**: Vollremission (complete remission, CR)

> **component****code**: Status of residual neoplasm (observable entity)**value**: Tumorreste (Residualtumor)

> **component****code**: Status of distant metastasis (observable entity)**value**: Keine Fernmetastasen nachweisbar



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-Verlauf-2022-01-22",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "396432002",
      "display" : "Status of regression of tumor (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "focus" : [{
    "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
  }],
  "effectiveDateTime" : "2022-01-22",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung",
      "code" : "V",
      "display" : "Vollremission (complete remission, CR)"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "445200009",
        "display" : "Status of residual neoplasm (observable entity)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor",
        "code" : "T",
        "display" : "Tumorreste (Residualtumor)"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "399608002",
        "display" : "Status of distant metastasis (observable entity)"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen",
        "code" : "K",
        "display" : "Keine Fernmetastasen nachweisbar"
      }]
    }
  }]
}

```
