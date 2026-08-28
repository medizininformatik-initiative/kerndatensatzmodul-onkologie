# MII PR Onkologie TNM-Klassifikation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie TNM-Klassifikation**

## Resource Profile: MII PR Onkologie TNM-Klassifikation 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_PR_Onko_TNM_Klassifikation |

 
TNM-Klassifikation: Grouper-Profil für Komponenten der TNM-Klassifikation. 

This profile is the grouping profile for a TNM classification in oncology.

The profile carries the reference date and serves as the anchor point for all further individual TNM observations at that point in time. The element `hasMember` contains references to all associated individual TNM observations.

In addition, the element `value` codes the UICC staging that is derived from the subordinate TNM observations.

### Manifestations of the TNM classification

A TNM classification occurs in different manifestations over the course of treatment. These are **not** distinguished by the oBDS reporting occasion, but exclusively by two axes of the FHIR representation:

1. the**code axis**of the grouping profile —`Observation.code`is bound to the value set[mii-vs-onko-tnm-klassifikation-typ](ValueSet-mii-vs-onko-tnm-klassifikation-typ.md)and carries SNOMED CT`399537006`"Clinical TNM stage grouping",`399588009`"Pathologic TNM stage grouping" or`399703000`"Integrated TNM category";
1. the**prefix modifiers of the individual categories**— the c/p/u prefix as an extension on`Observation.code`of the category observation, and the UICC prefixes y, r and a as modifierExtension on the respective T, N or M observation.

The reporting occasion is merely the typical trigger from which the manifestation results — it is not a distinguishing feature and is not represented in the resource.

**(1) Clinical staging** (typical trigger: diagnosis report). `code` = `399537006` "Clinical TNM stage grouping", the categories carry the c prefix. The UICC stage is present as a rule, because all three axes T, N and M are assessed clinically.

**(2) Pathological staging** (typical trigger: pathology or surgery report). `code` = `399588009` "Pathologic TNM stage grouping", the categories carry the p prefix, and in the case of neoadjuvant pretreatment additionally the y modifier (`ypT`, `ypN`). A UICC stage is typically **not** given here: `value` is deliberately modelled as 0..1 in the report panel, because a pathological staging alone cannot yield a stage — the M category usually originates from the clinical assessment.

**(3) Course of disease** (typical trigger: follow-up report). The manifestation is variable. Usually this is a renewed clinical re-staging (`code` = clinical), supplemented by the y modifier during or after ongoing therapy. In the case of a recurrence the r modifier is added — this depends on the **tumour status**, not on the reporting occasion, and can therefore also occur outside a follow-up report. If a further operation takes place during the course of disease, the classification may also be pathological.

**(4) Synthesised or integrated classification.** A separate profile [mii-pr-onko-tnm-klassifikation-synthetisiert](StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.md) exists for this, with a fixed `code` = `399703000` "Integrated TNM category". It merges the categories from several source classifications into a coherent state at the time of decision — including mixed cases, e.g. `ypT` and `ypN` from pathology together with `cM` from the clinical assessment. Here the UICC stage is **mandatory** (`value` 1..1), and `derivedFrom` mandatorily references the underlying source classifications.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Clinical staging | `399537006`clinical | c | usually present | `mii-pr-onko-tnm-klassifikation` |
| Pathological staging | `399588009`pathologic | p, yp | as a rule not present (0..1) | `mii-pr-onko-tnm-klassifikation` |
| Course of disease | clinical, possibly pathologic | c/p, y during/after therapy, r on recurrence | variable | `mii-pr-onko-tnm-klassifikation` |
| Synthesised / integrated | `399703000`integrated | mixed (e.g. ypT + cN) | mandatory (1..1) | `mii-pr-onko-tnm-klassifikation-synthetisiert` |

The prefixes y, r and a are modelled as a **modifierExtension**, because they change the interpretation of the category value: `ypT2` is not equivalent to `pT2`. Processing systems must know these extensions and must not interpret a category without evaluating the prefix.

-------

**Examples**

[mii-exa-onko-tnm-klassifikation-TisN0M0](Observation-mii-exa-onko-tnm-klassifikation-TisN0M0.md)

[mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1](Observation-mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1.md)

**Usages:**

* Derived from this Profile: [MII PR Onkologie TNM-Klassifikation (synthetisiert)](StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.md)
* Refer to this Profile: [MII PR Onkologie TNM-Klassifikation (synthetisiert)](StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.md) and [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.md)
* Examples for this Profile: [Observation/TNM-Klassifikation-Observation-2](Observation-TNM-Klassifikation-Observation-2.md), [Observation/mii-exa-onko-ascending-colon-tnm](Observation-mii-exa-onko-ascending-colon-tnm.md), [Observation/mii-exa-onko-colorectal-tnm](Observation-mii-exa-onko-colorectal-tnm.md), [Observation/mii-exa-onko-cup-tnm-klassifikation](Observation-mii-exa-onko-cup-tnm-klassifikation.md)... Show 14 more, [Observation/mii-exa-onko-kim-klass1](Observation-mii-exa-onko-kim-klass1.md), [Observation/mii-exa-onko-kim-klass2](Observation-mii-exa-onko-kim-klass2.md), [Observation/mii-exa-onko-kim-klass3](Observation-mii-exa-onko-kim-klass3.md), [Observation/mii-exa-onko-tnm-biopsy-cT4cN1cM0](Observation-mii-exa-onko-tnm-biopsy-cT4cN1cM0.md), [Observation/mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0](Observation-mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0.md), [Observation/mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0](Observation-mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0.md), [Observation/mii-exa-onko-tnm-clinical-cT3cN1cM0](Observation-mii-exa-onko-tnm-clinical-cT3cN1cM0.md), [Observation/mii-exa-onko-tnm-klassifikation-TisN0M0](Observation-mii-exa-onko-tnm-klassifikation-TisN0M0.md), [Observation/mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1](Observation-mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1.md), [Observation/mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0](Observation-mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0.md), [Observation/mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0](Observation-mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0.md), [Observation/mii-exa-onko-tnm-recurrence-rcT2cN1cM1](Observation-mii-exa-onko-tnm-recurrence-rcT2cN1cM1.md), [Observation/mii-exa-onko-tnm-synth-meldung1-klassifikation](Observation-mii-exa-onko-tnm-synth-meldung1-klassifikation.md) and [Observation/mii-exa-onko-tnm-synth-meldung2-klassifikation](Observation-mii-exa-onko-tnm-synth-meldung2-klassifikation.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-tnm-klassifikation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-tnm-klassifikation.csv), [Excel](../StructureDefinition-mii-pr-onko-tnm-klassifikation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-tnm-klassifikation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-tnm-klassifikation",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_TNM_Klassifikation",
  "title" : "MII PR Onkologie TNM-Klassifikation",
  "status" : "active",
  "date" : "2026-08-28T14:57:41+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "TNM-Klassifikation: Grouper-Profil für Komponenten der TNM-Klassifikation.",
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
      "path" : "Observation"
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-klassifikation-typ"
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
      "short" : "TNM-Datum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TNM-Datum"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum der TNM-Klassifikation nach 8.1 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der TNM-Klassifikation nach 8.1 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "dateTime"
      }],
      "constraint" : [{
        "key" : "tnm-datum",
        "severity" : "error",
        "human" : "TNM Datum: Ein exaktes (taggenaues) Datum ist anzugeben.",
        "expression" : "$this.toString().length() >= 8",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "8.1",
        "comment" : "TNM Datum"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-uicc-stadium"
      }
    },
    {
      "id" : "Observation.value[x].coding",
      "path" : "Observation.value[x].coding",
      "short" : "UICC Stadium",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "UICC-Staging"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Stadium nach aktuell gültiger TNM-Klassifikation.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "UICC-Staging nach 8.17 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.value[x].coding.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "8.17",
        "comment" : "UICC Stadium"
      }]
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "TNM Version",
      "definition" : "Gibt an, nach welcher Version des TNM klassifiziert wurde.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-version"
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "8.2",
        "comment" : "TNM Version"
      }]
    },
    {
      "id" : "Observation.method.coding",
      "path" : "Observation.method.coding",
      "short" : "TNM-Version",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TNM-Version"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "TNM-Version nach 8.2 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TNM-Version nach 8.2 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen",
        "http://hl7.org/fhir/StructureDefinition/Specimen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-l-kategorie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-symbol",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-pn-kategorie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-s-kategorie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-v-kategorie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-a-symbol",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-r-symbol",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-y-symbol"]
      }],
      "mustSupport" : true
    }]
  }
}

```
