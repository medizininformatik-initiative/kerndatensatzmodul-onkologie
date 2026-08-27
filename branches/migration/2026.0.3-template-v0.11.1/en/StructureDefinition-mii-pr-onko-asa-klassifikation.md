# MII PR Onkologie ASA-Klassifikation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie ASA-Klassifikation**

## Resource Profile: MII PR Onkologie ASA-Klassifikation 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-asa-klassifikation | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_PR_Onko_ASA_Klassifikation |

 
Dieses Profil beschreibt die ASA-Klassifikation (American Society of Anesthesiologists Physical Status Classification) in der Onkologie. Die ASA-Klassifikation dient primär der präoperativen Risikobewertung, kann aber auch als Komorbidätsindex für systemische Therapieentscheidungen verwendet werden. Ursprünglich aus oBDS KR9 (Kolorektales Karzinom), nun generalisiert für alle onkologischen Indikationen. 

### Content

This profile describes the ASA classification (American Society of Anesthesiologists Physical Status Classification) in oncology. The ASA classification primarily serves preoperative risk assessment and is used to estimate the general physical condition of patients before surgical interventions. It can, however, also be used as a comorbidity index for systemic therapy decisions.

Originally taken from oBDS KR9 (colorectal carcinoma module), this profile was generalised for all oncological indications, because the ASA classification is a universal preoperative assessment tool.

The profile is based on a FHIR Observation resource and uses LOINC for the standardised coding of the ASA classification. The specific ASA classes (ASA I to VI) are defined via a dedicated oBDS value set.

-------

### Links to other resources

The ASA classification is an important preoperative assessment:

* references the primary diagnosis via `Observation.focus` (MII_PR_Onko_Diagnose_Primaertumor)
* references the patient via `Observation.subject` (Patient resource)
* can be linked to a specific encounter via `Observation.encounter`

-------

### oBDS context

The ASA classification corresponds to the oBDS data field KR9 "ASA-Klassifikation" and comprises the assessment levels ASA I to VI as well as "unknown" (U). The classification also takes brain-dead patients for organ donation into account (ASA VI).

### Terminology binding

The value set for the ASA classification is bound as **required**. This means that exclusively the codes from the defined oBDS value set MUST be used.

#### Value set: MII VS Onko ASA oBDS

> The metadata and the expansion of the value set are shown on the page [mii-vs-onko-asa-obds](ValueSet-mii-vs-onko-asa-obds.md).

-------

**Examples**

[mii-exa-onko-asa-klassifikation](Observation-mii-exa-onko-asa-klassifikation.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-asa-klassifikation](Observation-mii-exa-onko-asa-klassifikation.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-asa-klassifikation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-asa-klassifikation.csv), [Excel](../StructureDefinition-mii-pr-onko-asa-klassifikation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-asa-klassifikation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-asa-klassifikation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-asa-klassifikation",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_ASA_Klassifikation",
  "title" : "MII PR Onkologie ASA-Klassifikation",
  "status" : "active",
  "date" : "2026-08-27T11:29:36+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt die ASA-Klassifikation (American Society of Anesthesiologists Physical Status Classification) in der Onkologie. Die ASA-Klassifikation dient primär der präoperativen Risikobewertung, kann aber auch als Komorbidätsindex für systemische Therapieentscheidungen verwendet werden. Ursprünglich aus oBDS KR9 (Kolorektales Karzinom), nun generalisiert für alle onkologischen Indikationen.",
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
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "KR9",
        "comment" : "ASA-Klassifikation (ursprünglich Kolorektales Karzinom Modul, generalisiert für alle Entitäten)"
      }]
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "ASA-Klassifikation",
      "definition" : "ASA-Klassifikation zur Bewertung des präoperativen Risikos gemäß American Society of Anesthesiologists Physical Status Classification System. oBDS KR9",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "97816-3",
        "display" : "American society of anesthesiologists morbidity state"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "KR9",
        "comment" : "Datum der ASA-Bewertung"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "ASA-Klassifikation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ASA-Klassifikation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "ASA-Klassifikation zur präoperativen Risikobewertung - ASA I-VI",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ASA-Klassifikation zur präoperativen Risikobewertung gemäß oBDS KR9"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-asa-obds"
      }
    },
    {
      "id" : "Observation.value[x].coding.code",
      "path" : "Observation.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "KR9",
        "comment" : "ASA-Klassifikation (ASA I bis VI, U = Unbekannt)"
      }]
    }]
  }
}

```
