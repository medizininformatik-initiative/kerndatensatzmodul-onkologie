# Frühere Tumorerkrankung Cervix in situ - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Frühere Tumorerkrankung Cervix in situ**

## Beispiel Condition: Frühere Tumorerkrankung Cervix in situ

-------

**German**

-------

Profile: [MII PR Onkologie Frühere Tumorerkrankung](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md) version: 2026.0.3

**Condition Asserted Date**: 2013

**clinicalStatus**: Resolved

**verificationStatus**: Confirmed

**category**: Medical oncology (qualifier value)

**code**: Cervix-Ca in situ

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**recordedDate**: 2024-06-14



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-onko-fruehere-tumorerkrankung-cervix",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung|2026.0.3"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2013"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "resolved"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394593009",
      "display" : "Medical oncology (qualifier value)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2013",
      "code" : "D06.9",
      "display" : "Carcinoma in situ: Cervix uteri, nicht näher bezeichnet"
    }],
    "text" : "Cervix-Ca in situ"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "recordedDate" : "2024-06-14"
}

```
