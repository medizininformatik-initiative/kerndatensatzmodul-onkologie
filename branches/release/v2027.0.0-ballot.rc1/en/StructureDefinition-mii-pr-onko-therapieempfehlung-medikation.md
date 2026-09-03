# MII PR Onkologie Therapieempfehlung Medikation - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Therapieempfehlung Medikation**

## Resource Profile: MII PR Onkologie Therapieempfehlung Medikation 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-03 | *Computable Name*:MII_PR_Onko_Therapieempfehlung_Medikation |

 
Dieses Profil beschreibt eine Medikations-Tumorempfehlung 

This profile describes a **medication therapy recommendation** within the context of the tumor board. It is based on FHIR MedicationRequest and is typically used as part of a combination therapy (RequestGroup) or as a standalone recommendation.

### Content

The MedicationRequest profile enables the structured recording of medication recommendations with:

* **Medication coding**: PZN (medicinal product) and/or ATC-DE (active ingredients)
* **Tumor disease reference**: mandatory reference to the primary tumor diagnosis
* **Additional reasons**: optional references to further Conditions or Observations

### Use cases

#### Standalone medication recommendation

For single-substance recommendations without a combination protocol:

```
MedicationRequest
├── intent: #proposal
├── medicationCodeableConcept: ATC L01XE27 (Ibrutinib)
├── authoredOn: 2024-01-15
└── reasonReference: Reference(Primärtumor)

```

#### Part of a combination therapy

As a component of a RequestGroup-based combination therapy:

```
RequestGroup (FOLFOX-Protokoll)
├── action[0].resource: MedicationRequest (5-FU)
├── action[1].resource: MedicationRequest (Oxaliplatin)
└── action[2].resource: MedicationRequest (Leucovorin)

```

### Technical implementation

#### Intent semantics

* **`#proposal`**: standalone therapy recommendation from the tumor board
* **`#option`**: part of a RequestGroup (combination therapy)

#### Medication coding

The `medicationCodeableConcept` element supports:

* **ATC-DE**: for substance-based recommendations
* **PZN**: for specific medicinal product recommendations
* **Free text**: for experimental or non-codable substances

#### reasonReference extension

In addition to the mandatory reference to the primary tumor, the profile also allows:

* **Condition**: further relevant diseases as a reason
* **Observation**: supporting findings (e.g. biomarkers, staging)

```
reasonReference (Slicing: open, profile-based)
├── Primaertumor (1..1 MS): Reference(MII_PR_Onko_Diagnose_Primaertumor)
└── [weitere]: Reference(Condition or Observation)

```

### Usage with extended CarePlan

This profile is primarily designed for use with the **[Tumor board: detailed therapy recommendations (CarePlan)](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md)** and the **[Combination Therapy Recommendation (RequestGroup)](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md)**:

* **Standard oBDS**: cancer registries only record the therapy type (e.g. "CH" for chemotherapy) without details on specific medications
* **Extended CarePlan**: enables specific medication recommendations with ATC/PZN coding

**Integration with RequestGroup (combination therapy)**:

```
CarePlan (Detailed Recommendations)
└── activity.reference → RequestGroup
    ├── code: "CZ" (Chemo + zielgerichtete Substanzen)
    └── action.action.resource → MedicationRequest
        ├── medication: ATC L01XE (Trastuzumab)
        └── reasonReference: Reference(Primärtumor)

```

### oBDS context

This profile supports the recording of therapy recommendations according to oBDS chapter 19:

* **19.1 Therapy recommendation type**: via RequestGroup.code (for combination therapies)
* **Medication details**: structured recording via MedicationRequest

**Note**: Standard oBDS recording is done via `CarePlan.activity.detail.code` (therapy type only). This MedicationRequest profile provides extended structuring for molecular tumor boards, combination therapy protocols and specialized use cases.

### Terminology binding

**medicationCodeableConcept.coding**:

* At least one coding required (1..*)
* ATC-DE or PZN recommended
* Free text possible via `.text`

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Therapieempfehlung Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md).

**Usages:**

* Refer to this Profile: [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md), [MII PR Onkologie Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md) and [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md)
* Examples for this Profile: [MedicationRequest/mii-exa-onko-cdk46-class-medication](MedicationRequest-mii-exa-onko-cdk46-class-medication.md), [MedicationRequest/mii-exa-onko-folfox-5fu-request](MedicationRequest-mii-exa-onko-folfox-5fu-request.md), [MedicationRequest/mii-exa-onko-folfox-leucovorin-request](MedicationRequest-mii-exa-onko-folfox-leucovorin-request.md), [MedicationRequest/mii-exa-onko-folfox-oxaliplatin-request](MedicationRequest-mii-exa-onko-folfox-oxaliplatin-request.md)... Show 5 more, [MedicationRequest/mii-exa-onko-modification-5fu-request](MedicationRequest-mii-exa-onko-modification-5fu-request.md), [MedicationRequest/mii-exa-onko-modification-leucovorin-request](MedicationRequest-mii-exa-onko-modification-leucovorin-request.md), [MedicationRequest/mii-exa-onko-modification-oxaliplatin-request](MedicationRequest-mii-exa-onko-modification-oxaliplatin-request.md), [MedicationRequest/mii-exa-onko-tdm1-option](MedicationRequest-mii-exa-onko-tdm1-option.md) and [MedicationRequest/mii-exa-onko-tucatinib-option](MedicationRequest-mii-exa-onko-tucatinib-option.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.csv), [Excel](../StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-therapieempfehlung-medikation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-01-03"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C3262"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Onko_Therapieempfehlung_Medikation",
  "title" : "MII PR Onkologie Therapieempfehlung Medikation",
  "status" : "active",
  "date" : "2026-09-03T10:10:01+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt eine Medikations-Tumorempfehlung",
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
