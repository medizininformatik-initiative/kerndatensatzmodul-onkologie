# MII PR Onkologie Systemische Therapie Medikation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Systemische Therapie Medikation**

## Resource Profile: MII PR Onkologie Systemische Therapie Medikation 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_PR_Onko_Systemische_Therapie_Medikation |

 
Medikation der Systemische Therapie. Dieses Profil beschreibt die konkreten Medikationen, die im Rahmen der systemische Therapie für den oBDS dokumentiert werden. Da im oBDS systemische und abwartende Therapie in einem Feld gruppiert sind, werden die Daten für die Systemische und abwartende Therapie sowohl über eine FHIR-Prozedur (systemisch und abwartend) als auch als FHIR-Medikation abgedeckt. 

This profile describes the specific medications documented for the oBDS within the context of systemic therapy.

Since systemic therapy and watchful waiting are grouped in one field in the oBDS, the data for systemic therapy and watchful waiting are covered both via a FHIR procedure (systemic and watchful waiting) and as FHIR medication.

The information on systemic oncological medication in the oBDS is mapped using the following data points. In the medication profile of systemic therapy, these are specifically:

* Start and end of the medication
* Name of the treatment regimen
* Active ingredients (ATC-coded)

-------

### Conformance

This profiling is compatible with the procedure profile of the ISiK base modules level 4. https://simplifier.net/isik-medikation-v4/isikmedikationsinformation

This profiling is currently **not** compatible with the EPA MedicationStatement, since it explicitly requires a reference to a Medication resource under MedicationStatement.medication, whereas the present oncology MedicationStatement prefers coding via ATC. https://simplifier.net/epa-medication/epamedicationstatement

-------

Mapping dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md).

-------

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter `_id` MUST be supported:Examples:`GET [base]/MedicationStatement?_id=1234`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter `_profile` MUST be supported:Examples:`GET [base]/MedicationStatement?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation`Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter `medicationCodeableConcept` MUST be supported: Examples:`GET [base]/MedicationStatement?code=http://fhir.de/CodeSystem/bfarm/atc|L01AA01`Usage notes: Further information on searching by "token" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter `partOf` MUST be supported:Examples:`GET [base]/MedicationStatement?part-of=Procedure/123`Usage notes: `MedicationStatement.partOf` refers to the associated procedure of the systemic therapy, so `Procedure/[id]` must be specified as the reference. Further information on searching by "part-of" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter `effective` MUST be supported:Examples:`GET [base]/MedicationStatement?effective=gt2019-01-01``GET [base]/MedicationStatement?effective=ge2019-01-01&effective=le2019-12-01`Usage notes: The search parameter "effective" evaluates the period of the medication (`MedicationStatement.effectivePeriod`). Further information on searching by "effective" can be found in the [FHIR base specification - section "date"](http://hl7.org/fhir/R4/search.html#all).

**Examples**

[mii-exa-onko-systemische-therapie-medikation1](MedicationStatement-mii-exa-onko-systemische-therapie-medikation1.md)

**Usages:**

* Examples for this Profile: [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-1a](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-1a.md), [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-1b](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-1b.md), [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-2a](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-2a.md), [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-2b](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-2b.md)... Show 13 more, [MedicationStatement/PatientKimMusterperson-SystemicTherapyMedication-3](MedicationStatement-PatientKimMusterperson-SystemicTherapyMedication-3.md), [MedicationStatement/mii-exa-onko-folfox-5fu-statement](MedicationStatement-mii-exa-onko-folfox-5fu-statement.md), [MedicationStatement/mii-exa-onko-folfox-leucovorin-statement](MedicationStatement-mii-exa-onko-folfox-leucovorin-statement.md), [MedicationStatement/mii-exa-onko-folfox-oxaliplatin-statement](MedicationStatement-mii-exa-onko-folfox-oxaliplatin-statement.md), [MedicationStatement/mii-exa-onko-medikation-iberdomide-unii](MedicationStatement-mii-exa-onko-medikation-iberdomide-unii.md), [MedicationStatement/mii-exa-onko-medikation-imatinib-atc-version-transition](MedicationStatement-mii-exa-onko-medikation-imatinib-atc-version-transition.md), [MedicationStatement/mii-exa-onko-modification-5fu-phase1](MedicationStatement-mii-exa-onko-modification-5fu-phase1.md), [MedicationStatement/mii-exa-onko-modification-5fu-phase2](MedicationStatement-mii-exa-onko-modification-5fu-phase2.md), [MedicationStatement/mii-exa-onko-modification-leucovorin-phase1](MedicationStatement-mii-exa-onko-modification-leucovorin-phase1.md), [MedicationStatement/mii-exa-onko-modification-leucovorin-phase2](MedicationStatement-mii-exa-onko-modification-leucovorin-phase2.md), [MedicationStatement/mii-exa-onko-modification-oxaliplatin-phase1](MedicationStatement-mii-exa-onko-modification-oxaliplatin-phase1.md), [MedicationStatement/mii-exa-onko-systemische-therapie-medikation1](MedicationStatement-mii-exa-onko-systemische-therapie-medikation1.md) and [MedicationStatement/mii-exa-onko-systemische-therapie-medikation2](MedicationStatement-mii-exa-onko-systemische-therapie-medikation2.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-systemische-therapie-medikation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-systemische-therapie-medikation.csv), [Excel](../StructureDefinition-mii-pr-onko-systemische-therapie-medikation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-systemische-therapie-medikation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-systemische-therapie-medikation",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Systemische_Therapie_Medikation",
  "title" : "MII PR Onkologie Systemische Therapie Medikation",
  "status" : "active",
  "date" : "2026-08-27T12:06:00+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Medikation der Systemische Therapie. Dieses Profil beschreibt die konkreten Medikationen, die im Rahmen der systemische Therapie für den oBDS dokumentiert werden.  Da im oBDS systemische und abwartende Therapie in einem Feld gruppiert sind, werden die Daten für die Systemische und abwartende Therapie sowohl über eine FHIR-Prozedur (systemisch und abwartend) als auch als FHIR-Medikation abgedeckt. ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "oBDS",
    "name" : "Mapping FHIR zu oBDS"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationStatement",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationStatement",
      "path" : "MedicationStatement"
    },
    {
      "id" : "MedicationStatement.basedOn",
      "path" : "MedicationStatement.basedOn",
      "short" : "Therapieplan oder Therapieempfehlung",
      "definition" : "Referenz auf den CarePlan (Therapieplan) oder MedicationRequest (Therapieempfehlung) auf dem diese Medikation basiert.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CarePlan",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest"]
      }]
    },
    {
      "id" : "MedicationStatement.partOf",
      "path" : "MedicationStatement.partOf",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "MedicationStatement.partOf:systemischeTherapie",
      "path" : "MedicationStatement.partOf",
      "sliceName" : "systemischeTherapie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"]
      }]
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationReference",
      "path" : "MedicationStatement.medication[x]",
      "sliceName" : "medicationReference",
      "short" : "Referenz auf Medication (Alternative zur Inline-Codierung)",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Referenz auf Medication als Alternative zur Inline-Codierung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Medication Reference"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Alternative zur Inline-Codierung: Referenz auf eine Medication-Ressource gemäß MII-Modul Medikation. Die Substanz ist dort über Medication.code (ATC/UNII) bzw. Medication.ingredient codiert.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"]
      }]
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept",
      "path" : "MedicationStatement.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding",
      "path" : "MedicationStatement.medication[x].coding",
      "short" : "Wirkstoff der systemischen Medikation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Wirkstoff/ Substanz der systemischen Medikation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Wirkstoff der systemischen onkologischen Medikation. Nach Möglichkeit als ATC-kodiert anzugeben. Wirkstoffe sind einzeln zu kodieren. Kombinationstherapien können über MedicationStatement.partOf in übergeordneten MedicationStatements gruppiert werden - in diesem Fall ist bei jedem Wirkstoff unter `MedicationStatement.note.text` das Kürzel des (z.B. chemotherapeutischen) Protokolls zu hinterlegen.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Wirkstoff / Substanz der systemischen onkologischen Medikation gemäß 16.6 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding.code",
      "path" : "MedicationStatement.medication[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "16.6",
        "comment" : "Systemische Therapie Substanz"
      }]
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept.coding:UNII",
      "path" : "MedicationStatement.medication[x].coding",
      "sliceName" : "UNII",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-unii"
      }
    },
    {
      "id" : "MedicationStatement.subject",
      "path" : "MedicationStatement.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "MedicationStatement.effective[x]:effectivePeriod",
      "path" : "MedicationStatement.effective[x]",
      "sliceName" : "effectivePeriod",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "MedicationStatement.effective[x]:effectivePeriod.start",
      "path" : "MedicationStatement.effective[x].start",
      "short" : "Startdatum der systemischen Medikation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Startdatum der systemischen Medikation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Startdatum der systemischen Medikation gemäß 16.5 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Startdatum der systemischen Medikation gemäß 16.5 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.effective[x]:effectivePeriod.end",
      "path" : "MedicationStatement.effective[x].end",
      "short" : "Enddatum der systemischen Medikation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Enddatum der systemischen Medikation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Enddatum der systemischen Medikation gemäß 16.8 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Enddatum der systemischen Medikation gemäß 16.8 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationStatement.note.text",
      "path" : "MedicationStatement.note.text",
      "short" : "Protokoll",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Protokoll der systemischen Medikation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Protokoll der systemischen Medikation. Bei Angabe eines Schemas sind alle Wirkstoffe in einzelnen Ressourcen unter MedicationStatement.medication[x] gesondert zu kodieren ",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Protokoll der systemischen Medikation gemäß 16.4 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "16.4",
        "comment" : "Systemische Therapie Protokoll"
      }]
    }]
  }
}

```
