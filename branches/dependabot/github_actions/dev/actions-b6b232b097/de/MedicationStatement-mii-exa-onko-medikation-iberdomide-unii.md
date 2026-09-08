# Medikation Iberdomide (UNII) - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Medikation Iberdomide (UNII)**

## Beispiel MedicationStatement: Medikation Iberdomide (UNII)

-------

**German**

-------

Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md) version: 2027.0.0-ballot.rc1

**basedOn**: [CarePlan: identifier = Tumorkonferenz_1; status = active; intent = plan; category = postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie); created = 2024-01-11](CarePlan-mii-exa-onko-tumorkonferenz-01.md)

**partOf**: [Procedure Chemotherapie](Procedure-mii-exa-onko-systemische-therapie-1.md)

**status**: Completed

**medication**: Iberdomide (experimenteller Immunmodulator)

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**effective**: 2024-06-01 --> 2024-08-30

**note**: 

> 

Experimentelles Protokoll




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-onko-medikation-iberdomide-unii",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation|2027.0.0-ballot.rc1"]
  },
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-01"
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-onko-systemische-therapie-1"
  }],
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fdasis.nlm.nih.gov",
      "code" : "8V66F27X44",
      "display" : "IBERDOMIDE"
    }],
    "text" : "Iberdomide (experimenteller Immunmodulator)"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectivePeriod" : {
    "start" : "2024-06-01",
    "end" : "2024-08-30"
  },
  "note" : [{
    "text" : "Experimentelles Protokoll"
  }]
}

```
