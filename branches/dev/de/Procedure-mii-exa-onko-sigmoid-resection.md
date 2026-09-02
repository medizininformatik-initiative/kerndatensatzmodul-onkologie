# Sigmaresektion - Haupteingriff - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Sigmaresektion - Haupteingriff**

## Beispiel Procedure: Sigmaresektion - Haupteingriff

-------

**German**

-------

Profile: [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md)

**MII EX Onko Operation Intention**: Kurativ

**status**: Completed

**category**: Surgical procedure

**code**: Laparoskopische Sigmaresektion mit TME und Lymphknotendissektion

**subject**: [Hans Schmidt Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)](Patient-mii-exa-onko-folfox-patient.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP)](Encounter-mii-exa-onko-folfox-encounter-surgery.md)

**performed**: 2024-02-15

**reasonReference**: [Condition Bösartige Neubildung: Colon sigmoideum](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md)

**outcome**: Kein Residualtumor

**note**: 

> 

Laparoscopic sigmoid resection with TME and lymphadenectomy. No intraoperative complications. Tumor completely resected with clear margins (R0). 18 lymph nodes removed, 3 positive. Surgery performed in 3 components: resection, anastomosis, and lymph node dissection.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-sigmoid-resection",
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
    }],
    "text" : "Laparoskopische Sigmaresektion mit TME und Lymphknotendissektion"
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
  "outcome" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
      "code" : "R0",
      "display" : "Kein Residualtumor"
    }]
  },
  "note" : [{
    "text" : "Laparoscopic sigmoid resection with TME and lymphadenectomy. No intraoperative complications. Tumor completely resected with clear margins (R0). 18 lymph nodes removed, 3 positive. Surgery performed in 3 components: resection, anastomosis, and lymph node dissection."
  }]
}

```
