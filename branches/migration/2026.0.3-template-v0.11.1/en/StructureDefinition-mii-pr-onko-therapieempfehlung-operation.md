# MII PR Onkologie Therapieempfehlung Operation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Therapieempfehlung Operation**

## Resource Profile: MII PR Onkologie Therapieempfehlung Operation 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_PR_Onko_Therapieempfehlung_Operation |

 
Dieses Profil beschreibt eine Empfehlung für eine Operation im Rahmen der Tumorkonferenz 

This profile describes a **surgical therapy recommendation** in the context of the tumor board. It is based on FHIR ServiceRequest and enables the structured recording of surgical therapy recommendations.

### Content

The ServiceRequest profile enables the recording of surgical recommendations from the tumor board with:

* **Categorization**: type of the recommended operation
* **Tumor disease reference**: reference to the primary tumor diagnosis
* **Supporting information**: relevant findings and staging results

### Use cases

#### Primary tumor surgery

Recommendation for surgical removal of the primary tumor:

```
ServiceRequest
├── intent: #proposal
├── category: Surgical procedure
├── authoredOn: 2024-01-15
├── reasonReference: Reference(Primärtumor)
└── supportingInfo: Reference(TNM-Staging)

```

#### Metastasis surgery

Recommendation for resection of metastases:

```
ServiceRequest
├── intent: #proposal
├── category: Surgical procedure
├── authoredOn: 2024-01-15
├── reasonReference: Reference(Primärtumor)
└── supportingInfo: Reference(Fernmetastasen-Observation)

```

### Technical implementation

#### Intent

The `intent` element is fixed to `#proposal`, since this is a therapy recommendation.

#### Category

The `category` enables classification of the recommended operation (e.g. curative vs. palliative intent).

#### reasonReference

Reference to the underlying tumor disease:

```
reasonReference: Reference(MII_PR_Onko_Diagnose_Primaertumor)

```

#### supportingInfo

Optional references to supporting clinical information:

* **Staging results**: TNM classification
* **Imaging**: relevant diagnostic findings
* **Lab values**: tumor markers or other relevant parameters

### Use with Extended CarePlan

This profile is primarily designed for use with the **[Tumor board: detailed therapy recommendations (CarePlan)](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md)**:

* **Standard oBDS**: cancer registries only capture "operation planned" (therapy recommendation type "OP") without details on the type of operation
* **Extended CarePlan**: enables specific operation recommendations with SNOMED CT coding

**Integration**:

```
CarePlan (Detailed Recommendations)
└── activity.reference → ServiceRequest
    ├── code: SNOMED CT (spezifische OP)
    └── reasonReference: Reference(Primärtumor)

```

### oBDS context

This profile supports the recording of therapy recommendations according to oBDS chapter 19:

* **19.1 Therapy recommendation type**: "OP" (operation)

**Note**: standard oBDS recording is done via `CarePlan.activity.detail.code`. This ServiceRequest profile offers extended structuring for molecular tumor boards and specialized use cases.

The detailed planning and performance of the operation is recorded in the separate [Operation: Procedure](StructureDefinition-mii-pr-onko-operation.md).

### Distinction

| | | |
| :--- | :--- | :--- |
| **Therapieempfehlung Operation** | ServiceRequest | recommendation from the tumor board |
| **Operation** | Procedure | operation actually performed |

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Therapieempfehlung Operation](StructureDefinition-mii-pr-onko-therapieempfehlung-operation.md).

**Usages:**

* Refer to this Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-therapieempfehlung-operation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-therapieempfehlung-operation.csv), [Excel](../StructureDefinition-mii-pr-onko-therapieempfehlung-operation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-therapieempfehlung-operation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-therapieempfehlung-operation",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Therapieempfehlung_Operation",
  "title" : "MII PR Onkologie Therapieempfehlung Operation",
  "status" : "active",
  "date" : "2026-08-28T10:16:47+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt eine Empfehlung für eine Operation im Rahmen der Tumorkonferenz",
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.meta.profile",
      "path" : "ServiceRequest.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "patternCode" : "proposal",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.authoredOn",
      "path" : "ServiceRequest.authoredOn",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "mustSupport" : true
    }]
  }
}

```
