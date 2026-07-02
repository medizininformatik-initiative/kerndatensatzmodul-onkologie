# Sigmaresektion Teil 3 - Port-Anlage - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Example Procedure: Sigmaresektion Teil 3 - Port-Anlage

-------

**English**

-------

Profile: [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md)

**MII EX Onko Operation Intention**: Kurativ

**partOf**: [Procedure Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion](Procedure-mii-exa-onko-sigmoid-resection.md)

**status**: Completed

**category**: Surgical procedure

**code**: Minimalinvasive Technik: Sonstige

**subject**: [Hans Schmidt Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)](Patient-mii-exa-onko-folfox-patient.md)

**encounter**: [Encounter/example-surgery](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Encounter/example-surgery)

**performed**: 2024-02-15

**reasonReference**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md)

**note**: 

> 

Four laparoscopic ports placed for minimally invasive approach.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-sigmoid-resection-part3",
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
      "code" : "5-986.x",
      "display" : "Minimalinvasive Technik: Sonstige"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-folfox-patient"
  },
  "encounter" : {
    "reference" : "Encounter/example-surgery"
  },
  "performedDateTime" : "2024-02-15",
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
  }],
  "note" : [{
    "text" : "Four laparoscopic ports placed for minimally invasive approach."
  }]
}

```
