# MII PR Onkologie Therapieempfehlung Kombinationstherapie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Therapieempfehlung Kombinationstherapie**

## Resource Profile: MII PR Onkologie Therapieempfehlung Kombinationstherapie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie | *Version*:2026.0.3 |
| Active as of 2026-09-02 | *Computable Name*:MII_PR_Onko_Therapieempfehlung_Kombinationstherapie |

 
Dieses Profil beschreibt eine Empfehlung für eine Kombinationstherapie im Rahmen der Tumorkonferenz 

This profile describes structured **therapy recommendations for combination therapies** using RequestGroup. It enables the detailed representation of multi-agent protocols and alternative therapy options for molecular tumor boards.

### Content

The RequestGroup profile serves as a "protocol coordinator" between **CarePlan recommendations** and **specific therapy resources** (SystemischeTherapie, MedicationRequest, etc.).

It enables the representation of complex therapy recommendations for **molecular tumor boards** and other tumor conferences that go beyond simple categorizations and require specific drug combinations or therapy options.

### Delineation from the oBDS standard recommendation

| | | |
| :--- | :--- | :--- |
| **Use** | Traditional tumor boards | Molecular tumor boards, complex protocols |
| **Therapy recommendation** | `activity.detail.code`(19.1 oBDS) | `activity.reference`→ RequestGroup |
| **Multi-agent therapies** | Single categorization | Detailed protocols with specific agents |
| **FHIR invariants** | `activity.detail`used | `activity.detail`disabled (0..0) |

**Reason**: The FHIR R4 invariant `cpl-3` prevents the simultaneous use of `activity.detail.code` and `activity.reference`. Both approaches are therefore kept as separate slices.

> Both variants are now represented in the Tumorkonferenz profile itself, as the slices `activity:obds` (with `activity.detail.code`, `activity.reference` set to 0..0) and `activity:extended` (with `activity.reference` 1..1, `activity.detail` set to 0..0); a separate "Detailed Recommendations" CarePlan profile no longer exists. The structure is described in the artefact view: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md).

### Use cases

#### Multi-agent therapy protocols

* **Anti-HER2 combination**: Trastuzumab + Pertuzumab
* **CDK4/6 + hormone therapy**: Palbociclib + Letrozole
* **Triplet therapies**: Tucatinib + Trastuzumab + Capecitabine

#### Alternative therapy options

* **Line therapy**: First-, second-, third-line options based on resistance
* **Biomarker-based**: Different options depending on mutation status
* **Class-based**: "Any CDK4/6 inhibitor" vs. specific selection

### Technical architecture

#### RequestGroup as protocol coordinator

```
CarePlan.activity.reference → RequestGroup
├── code: oBDS therapy type (ZS, CZ, IM, etc.)
├── basedOn: Reference(CarePlan) [traceability]
└── action[].resource: Reference(SystemischeTherapie)

```

#### Therapy type classification

The **RequestGroup.code** element contains the **oBDS therapy type classification**:

* **ZS**: Targeted substances
* **CZ**: Chemotherapy + targeted substances
* **IM**: Immune-/antibody therapy
* **CI**: Chemo- + immune-/antibody therapy
* **CIZ**: Chemo- + immune-/antibody therapy + targeted substances

**Important**: This classification was originally in `CarePlan.activity.detail.code` (oBDS 19.1), but is moved to the RequestGroup due to FHIR invariants.

### Implementation options

#### Option 1: Pharmaceutical classes

For **class-based recommendations** (e.g. "any CDK4/6 inhibitor"):

```
RequestGroup
├── code: "CZ" (Chemotherapy + targeted substances)
└── action[0].resource: Reference(SystemischeTherapie)
    └── code.text: "CDK4/6 inhibitor (class L01XE) - Palbociclib, Ribociclib or Abemaciclib"

```

**Application**: When a molecular tumor board recommends a **medication class** and leaves the final selection to the treating physician.

#### Option 2: Specific medication selection

For **specific options** with selection logic:

```
RequestGroup
├── code: "ZS" (Targeted substances)
├── action[0].selectionBehavior: #any
├── action[0].requiredBehavior: #must
├── action[0].action[0]: Reference(Trastuzumab) [priority: routine]
├── action[0].action[1]: Reference(T-DM1) [priority: asap]
└── action[0].action[2]: Reference(Tucatinib) [priority: stat]

```

**Application**: When a molecular tumor board recommends **specific alternatives** with clear preferences based on resistance patterns or clinical situation.

### FHIR invariant conformance

**Problem**: FHIR R4 invariant prevents simultaneous use of `code` and `action.resource` **Solution**: This profile **accepts both approaches** depending on the use case:

* **Option 1**: Uses `code` for therapy type, `action.resource` for class-level therapy
* **Option 2**: Uses `code` for therapy type, nested `action.action.resource` for specific options with `selectionBehavior`

### oBDS context

#### Mapping to oBDS 19.1

```
RequestGroup.code → "19.1" "Tumor board therapy recommendation type"

```

**Data fields**:

* **CH**: Chemotherapy
* **HO**: Hormone therapy
* **IM**: Immune-/antibody therapy
* **ZS**: Targeted substances
* **SZ**: Stem cell transplantation
* **Combinations**: CI, CZ, CIZ, IZ
* **Other**: OP, ST, WW, AS, SO

#### Extended structuring

While the oBDS only captures the **therapy type**, RequestGroup additionally enables:

* **Specific medications** per recommendation
* **Alternative options** with priorities
* **Combination logic** for multi-agent protocols

### Terminology binding

**RequestGroup.code**:

* **ValueSet**: `mii-vs-onko-therapieempfehlung-typ`
* **Binding**: Preferred
* **Source**: oBDS therapy types from `mii-cs-onko-therapie-typ`

> The codes it contains are listed in the artefact view: [MII VS Onkologie Therapieempfehlung Typ](ValueSet-mii-vs-onko-therapieempfehlung-typ.md).

-------

Mapping [Uniform Oncological Base Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md).

**Examples**

* Class-based recommendation (CDK4/6 inhibitor): [mii-exa-onko-molecular-cdk46-protocol](RequestGroup-mii-exa-onko-molecular-cdk46-protocol.md), referenced from [mii-exa-onko-tumorkonferenz-mixed-approach](CarePlan-mii-exa-onko-tumorkonferenz-mixed-approach.md)
* Specific drug selection (HER2 alternatives): [mii-exa-onko-molecular-her2-alternatives](RequestGroup-mii-exa-onko-molecular-her2-alternatives.md), referenced from [mii-exa-onko-tumorkonferenz-pure-molecular](CarePlan-mii-exa-onko-tumorkonferenz-pure-molecular.md)
* Protocol-based recommendation (FOLFOX): [mii-exa-onko-folfox-requestgroup](RequestGroup-mii-exa-onko-folfox-requestgroup.md) and [mii-exa-onko-folfox-requestgroup-modification](RequestGroup-mii-exa-onko-folfox-requestgroup-modification.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md)
* Examples for this Profile: [RequestGroup/mii-exa-onko-folfox-requestgroup-modification](RequestGroup-mii-exa-onko-folfox-requestgroup-modification.md), [RequestGroup/mii-exa-onko-folfox-requestgroup](RequestGroup-mii-exa-onko-folfox-requestgroup.md), [RequestGroup/mii-exa-onko-molecular-cdk46-protocol](RequestGroup-mii-exa-onko-molecular-cdk46-protocol.md) and [RequestGroup/mii-exa-onko-molecular-her2-alternatives](RequestGroup-mii-exa-onko-molecular-her2-alternatives.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.csv), [Excel](../StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-therapieempfehlung-kombinationstherapie",
  "meta" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-license",
      "valueCode" : "CC-BY-4.0"
    },
    {
      "extension" : [{
        "url" : "packageId",
        "valueId" : "de.medizininformatikinitiative.kerndatensatz.onkologie"
      },
      {
        "url" : "version",
        "valueString" : "2026.0.3"
      },
      {
        "url" : "uri",
        "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
    }],
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
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2026"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Therapieempfehlung_Kombinationstherapie",
  "title" : "MII PR Onkologie Therapieempfehlung Kombinationstherapie",
  "status" : "active",
  "date" : "2026-09-02T03:26:39+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt eine Empfehlung für eine Kombinationstherapie im Rahmen der Tumorkonferenz",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RequestGroup",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RequestGroup",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RequestGroup",
      "path" : "RequestGroup"
    },
    {
      "id" : "RequestGroup.meta.profile",
      "path" : "RequestGroup.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.identifier",
      "path" : "RequestGroup.identifier",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.status",
      "path" : "RequestGroup.status",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.intent",
      "path" : "RequestGroup.intent",
      "patternCode" : "proposal",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.code",
      "path" : "RequestGroup.code",
      "short" : "Type of therapy recommendation",
      "definition" : "Classification of the therapy recommendation using oBDS therapy types (CH, HO, IM, ZS, etc.) to specify the kind of therapy being recommended.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-therapieempfehlung-typ"
      }
    },
    {
      "id" : "RequestGroup.subject",
      "path" : "RequestGroup.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.encounter",
      "path" : "RequestGroup.encounter",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.authoredOn",
      "path" : "RequestGroup.authoredOn",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.reasonReference",
      "path" : "RequestGroup.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.action",
      "path" : "RequestGroup.action",
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.action.code",
      "path" : "RequestGroup.action.code",
      "short" : "Empfohlenes Therapieprotokoll",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Empfohlenes Therapieprotokoll"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Empfohlenes Therapieprotokoll gemäß Tumorkonferenz",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Spezifisches Therapieprotokoll empfohlen durch Tumorkonferenz. Bei Kombinationstherapien repräsentiert dies das Gesamtprotokoll mit einzelnen Medikamenten als Sub-Actions."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-protokolle"
      }
    },
    {
      "id" : "RequestGroup.action.action",
      "path" : "RequestGroup.action.action",
      "short" : "Individual medications in protocol",
      "definition" : "For combination therapy protocols, each sub-action references an individual MedicationRequest with ATC/UNII coding",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "RequestGroup.action.action.resource",
      "path" : "RequestGroup.action.action.resource",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation"]
      }],
      "mustSupport" : true
    }]
  }
}

```
