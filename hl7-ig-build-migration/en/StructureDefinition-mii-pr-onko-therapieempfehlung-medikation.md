# MII PR Onkologie Therapieempfehlung Medikation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Resource Profile: MII PR Onkologie Therapieempfehlung Medikation 

 
Dieses Profil beschreibt eine Medikations-Tumorempfehlung 

**Usages:**

* Refer to this Profile: [MII PR Onkologie Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md)
* Examples for this Profile: [MedicationRequest/mii-exa-onko-cdk46-class-medication](MedicationRequest-mii-exa-onko-cdk46-class-medication.md), [MedicationRequest/mii-exa-onko-folfox-5fu-request](MedicationRequest-mii-exa-onko-folfox-5fu-request.md), [MedicationRequest/mii-exa-onko-folfox-leucovorin-request](MedicationRequest-mii-exa-onko-folfox-leucovorin-request.md), [MedicationRequest/mii-exa-onko-folfox-oxaliplatin-request](MedicationRequest-mii-exa-onko-folfox-oxaliplatin-request.md)... Show 5 more, [MedicationRequest/mii-exa-onko-modification-5fu-request](MedicationRequest-mii-exa-onko-modification-5fu-request.md), [MedicationRequest/mii-exa-onko-modification-leucovorin-request](MedicationRequest-mii-exa-onko-modification-leucovorin-request.md), [MedicationRequest/mii-exa-onko-modification-oxaliplatin-request](MedicationRequest-mii-exa-onko-modification-oxaliplatin-request.md), [MedicationRequest/mii-exa-onko-tdm1-option](MedicationRequest-mii-exa-onko-tdm1-option.md) and [MedicationRequest/mii-exa-onko-tucatinib-option](MedicationRequest-mii-exa-onko-tucatinib-option.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.csv), [Excel](../StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-therapieempfehlung-medikation",
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Therapieempfehlung_Medikation",
  "title" : "MII PR Onkologie Therapieempfehlung Medikation",
  "status" : "active",
  "date" : "2026-07-02T12:18:38+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt eine Medikations-Tumorempfehlung",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "oBDS",
    "name" : "Mapping FHIR zu oBDS"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest"
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "short" : "proposal | option",
      "definition" : "Verwenden Sie 'proposal' für eigenständige Therapieempfehlungen. Verwenden Sie 'option' wenn die MedicationRequest Teil einer RequestGroup ist (z.B. Kombinationstherapie)."
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept",
      "path" : "MedicationRequest.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding",
      "path" : "MedicationRequest.medication[x].coding",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "MedicationRequest.supportingInformation",
      "path" : "MedicationRequest.supportingInformation",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this.resolve()"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
        "http://hl7.org/fhir/StructureDefinition/Condition",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    },
    {
      "id" : "MedicationRequest.reasonReference:Primaertumor",
      "path" : "MedicationRequest.reasonReference",
      "sliceName" : "Primaertumor",
      "short" : "Tumorerkrankung (Pflicht)",
      "definition" : "Referenz auf die Primärtumor-Diagnose, auf die sich diese Therapieempfehlung bezieht.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    }]
  }
}

```
