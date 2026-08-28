# Sigmaresektion Teil 2 - Lymphknotendissektion - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sigmaresektion Teil 2 - Lymphknotendissektion**

## Example Procedure: Sigmaresektion Teil 2 - Lymphknotendissektion

-------

**English**

-------

Profile: [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md)

**MII EX Onko Operation Intention**: Kurativ

**partOf**: [Procedure Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion](Procedure-mii-exa-onko-sigmoid-resection.md)

**status**: Completed

**category**: Surgical procedure

**code**: Radikale (systematische) Lymphadenektomie im Rahmen einer anderen Operation: Axillär

**subject**: [Hans Schmidt Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)](Patient-mii-exa-onko-folfox-patient.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP)](Encounter-mii-exa-onko-folfox-encounter-surgery.md)

**performed**: 2024-02-15

**reasonReference**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md)

**note**: 

> 

Regional lymph node dissection performed. 18 lymph nodes removed from mesenteric and para-aortic regions.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-sigmoid-resection-part2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
        "code" : "K",
        "display" : "Kurativ"
      }]
    }
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-onko-sigmoid-resection"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "387713003",
      "display" : "Surgical procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2024",
      "code" : "5-407.0",
      "display" : "Radikale (systematische) Lymphadenektomie im Rahmen einer anderen Operation: Axillär"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-folfox-patient"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-onko-folfox-encounter-surgery"
  },
  "performedDateTime" : "2024-02-15",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
  }],
  "note" : [{
    "text" : "Regional lymph node dissection performed. 18 lymph nodes removed from mesenteric and para-aortic regions."
  }]
}

```
