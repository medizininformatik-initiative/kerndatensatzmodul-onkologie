# Tumorkonferenz - FOLFOX Empfehlung bei Kolorektalkarzinom - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tumorkonferenz - FOLFOX Empfehlung bei Kolorektalkarzinom**

## Example CarePlan: Tumorkonferenz - FOLFOX Empfehlung bei Kolorektalkarzinom

Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md) version: 2026.0.3

**identifier**: Tumorkonferenz_FOLFOX_001

**status**: Active

**intent**: Plan

**category**: prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)

**subject**: [Hans Schmidt Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)](Patient-mii-exa-onko-folfox-patient.md)

**created**: 2024-03-10

**addresses**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md)

### Activities

| | | |
| :--- | :--- | :--- |
| - | **Progress** | **Reference** |
| * | > Tumor board recommends FOLFOX chemotherapy protocol for stage III colon cancer, adjuvant setting | [RequestGroup Chemotherapie](RequestGroup-mii-exa-onko-folfox-requestgroup.md) |



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-onko-tumorkonferenz-folfox",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz|2026.0.3"]
  },
  "identifier" : [{
    "value" : "Tumorkonferenz_FOLFOX_001"
  }],
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "praeth",
      "display" : "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-onko-folfox-patient"
  },
  "created" : "2024-03-10",
  "addresses" : [{
    "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
  }],
  "activity" : [{
    "progress" : [{
      "text" : "Tumor board recommends FOLFOX chemotherapy protocol for stage III colon cancer, adjuvant setting"
    }],
    "reference" : {
      "reference" : "RequestGroup/mii-exa-onko-folfox-requestgroup"
    }
  }]
}

```
