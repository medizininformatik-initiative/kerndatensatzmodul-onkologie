# Sigmaresektion Teil 1 - Resektion und Anastomose - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sigmaresektion Teil 1 - Resektion und Anastomose**

## Example Procedure: Sigmaresektion Teil 1 - Resektion und Anastomose

-------

**English**

-------

Profile: [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md)

**MII EX Onko Operation Intention**: Kurativ

**partOf**: [Procedure Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion](Procedure-mii-exa-onko-sigmoid-resection.md)

**status**: Completed

**category**: Surgical procedure

**code**: Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion

**subject**: [Hans Schmidt Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)](Patient-mii-exa-onko-folfox-patient.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP)](Encounter-mii-exa-onko-folfox-encounter-surgery.md)

**performed**: 2024-02-15

**reasonReference**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md)

**note**: 

> 

Sigmoid colon resected including tumor. End-to-end anastomosis created.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-sigmoid-resection-part1",
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
      "code" : "5-484.5",
      "display" : "Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion"
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
    "text" : "Sigmoid colon resected including tumor. End-to-end anastomosis created."
  }]
}

```
