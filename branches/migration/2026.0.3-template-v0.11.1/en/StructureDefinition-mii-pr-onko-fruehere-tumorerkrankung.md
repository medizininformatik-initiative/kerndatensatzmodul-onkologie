# MII PR Onkologie Frühere Tumorerkrankung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Frühere Tumorerkrankung**

## Resource Profile: MII PR Onkologie Frühere Tumorerkrankung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_PR_Onko_Fruehere_Tumorerkrankung |

 
Dieses Profil beschreibt frühere Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert/behandelt wurden. Basiert auf FHIR Condition, da historische Daten oft nur als Freitext vorliegen. 

### Content

This profile describes previous tumour diseases that were diagnosed or treated at an earlier point in time according to the patient history. It is based on the FHIR Condition resource, because historical anamnestic data are often only available as free text.

### Delimitation and direction of reference

This profile is intended for pre-existing conditions that are known **only from the patient history** (oBDS 5.9, frequently free text). The current diagnosis references them via the extension `occurredFollowing` (temporal axis "occurred after").

Two cases deliberately do **not** belong here:

1. **The previous disease is available as a registered oncological diagnosis**(e.g. documented in the same data integration centre): in that case the`occurredFollowing`of the new diagnosis references the registered[Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)directly — a free-text duplicate in this profile must not be created.
1. **The new diagnosis is a transformation of the same tumour lineage**(MDS → AML, CNS /0 → /3 — the registry keeps a new entity): in that case the extension`mii-ex-onko-transformation-von`(causal axis) is to be used on the new diagnosis — details and decision table can be found on the page[Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md).

-------

### Delimitation from the primary tumour diagnosis

In contrast to the profile "Diagnose Primärtumor" (MII_PR_Onko_Diagnose_Primaertumor), which describes the current oncological disease, this profile serves to record **previous** tumour diseases from the patient history.

**Key differences:**

* **Data source**: previous tumour diseases often originate from free-text entries in the patient history, whereas the primary tumour diagnosis is based on current diagnostic findings
* **Coding requirements**: code.text is mandatory, ICD-10-GM coding is optional (mandatory for the primary tumour)
* **Base profile**: based on FHIR Condition (not on MII Diagnose), in order to allow flexible free-text recording
* **Level of detail**: reduced requirements for diagnostic certainty, topography and further details

-------

### Usage notes

#### Mandatory data

* **code.text**: textual description of the previous tumour disease (e.g. "skin cancer on the back, approx. 2010")
* **category**: categorisation as an oncological diagnosis (SNOMED CT: 394593009 "Medical oncology")
* **subject**: reference to the patient

#### Optional data

* **code.coding[icd10-gm]**: ICD-10-GM coding, if it can be determined retrospectively
* **bodySite.coding[icd-o-3]**: ICD-O-3 topography, if known
* **extension[assertedDate]**: date of diagnosis of the previous tumour disease
* **clinicalStatus**: current clinical status (e.g. resolved, remission)
* **verificationStatus**: verification status (e.g. confirmed, unconfirmed)
* **note**: additional information on the previous tumour disease

-------

### Mapping to oBDS 5.9

The profile represents the oBDS requirement for "Frühere Tumorerkrankungen" (section 5.9):

| | | |
| :--- | :--- | :--- |
| Previous tumour disease, description | code.text | mandatory field |
| Previous tumour disease, ICD-10-GM code | code.coding[icd10-gm].code | optional |
| Previous tumour disease, ICD-10-GM version | code.coding[icd10-gm].version | optional |
| Previous tumour disease, date of diagnosis | extension[assertedDate].valueDateTime | optional |
| Previous tumour disease, ICD-O-3 topography | bodySite.coding[icd-o-3].code | optional |

-------

### Examples

**Example 1: with ICD-10-GM coding**

```
Code.text: "Mamma-Ca, links"
Code.coding[icd10-gm]: C50.9 (ICD-10-GM 2013)
BodySite.coding[icd-o-3]: C50.9 "Breast, NOS"
Extension[assertedDate]: 2013
ClinicalStatus: resolved

```

**Example 2: free text only (typical anamnestic entry)**

```
Code.text: "Hautkrebs am Rücken, ca. 2010"
Extension[assertedDate]: 2010
ClinicalStatus: resolved
Note: "Patient berichtet von operativ entferntem Hautkrebs vor ca. 14 Jahren"

```

Complete examples can be found in the instances:

* [mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.md) - cervical carcinoma in situ
* [mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.md) - breast carcinoma
* [mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.md) - prostate carcinoma
* [mii-exa-onko-fruehere-tumorerkrankung-freetext](Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.md) - free text only, without ICD coding

-------

### Conformance

The profile is compatible with the FHIR Condition resource R4.

-------

**Examples**

Example 1: previous tumour disease breast (with ICD-10-GM and ICD-O-3 coding) — [mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.md)

Example 2: previous tumour disease cervix in situ (with ICD-10-GM coding) — [mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.md)

Example 3: previous tumour disease prostate (with ICD-10-GM and ICD-O-3 coding) — [mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.md)

Example 4: previous tumour disease, free text only (typical anamnestic entry without coding) — [mii-exa-onko-fruehere-tumorerkrankung-freetext](Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* Examples for this Profile: [Condition/mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-freetext](Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.md) and [Condition/mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.csv), [Excel](../StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-fruehere-tumorerkrankung",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Fruehere_Tumorerkrankung",
  "title" : "MII PR Onkologie Frühere Tumorerkrankung",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Frühere Tumorerkrankung"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2026-08-28T19:18:26+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt frühere Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert/behandelt wurden. Basiert auf FHIR Condition, da historische Daten oft nur als Freitext vorliegen.",
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankungen"
      }]
    },
    {
      "id" : "Condition.meta.profile",
      "path" : "Condition.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension",
      "path" : "Condition.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:assertedDate",
      "path" : "Condition.extension",
      "sliceName" : "assertedDate",
      "short" : "Diagnosedatum der früheren Tumorerkrankung",
      "definition" : "Datum der früheren Tumorerkrankung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/condition-assertedDate"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:assertedDate.value[x]",
      "path" : "Condition.extension.value[x]",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung Diagnosedatum"
      }]
    },
    {
      "id" : "Condition.extension:morphology-behavior-icdo3",
      "path" : "Condition.extension",
      "sliceName" : "morphology-behavior-icdo3",
      "short" : "ICD-O-Morphologie",
      "definition" : "Morphologie der früheren Tumorerkrankung nach ICD-O-3",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-clinical"
      }
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-ver-status"
      }
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Condition.category:oncology",
      "path" : "Condition.category",
      "sliceName" : "oncology",
      "short" : "Kategorisierung als onkologische Diagnose",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kategorisierung als onkologische Diagnose"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "394593009",
          "display" : "Medical oncology (qualifier value)"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.category:onkologie",
      "path" : "Condition.category",
      "sliceName" : "onkologie",
      "short" : "Onkologie-Kennzeichnung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Onkologie-Kennzeichnung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Kennzeichnet die Diagnose als onkologische Diagnose des KDS-Moduls Onkologie und macht sie über die category-Suche auffindbar",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "55342001",
          "display" : "Neoplastic disease"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.code.coding:icd10-gm",
      "path" : "Condition.code.coding",
      "sliceName" : "icd10-gm",
      "short" : "ICD-10-GM Kodierung (optional)",
      "definition" : "ICD-10-GM Kodierung der früheren Tumorerkrankung, falls verfügbar",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:icd10-gm.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "patternUri" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:icd10-gm.version",
      "path" : "Condition.code.coding.version",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung ICD-10-GM Version"
      }]
    },
    {
      "id" : "Condition.code.coding:icd10-gm.code",
      "path" : "Condition.code.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung ICD-10-GM Code"
      }]
    },
    {
      "id" : "Condition.code.text",
      "path" : "Condition.code.text",
      "short" : "Textuelle Beschreibung der früheren Tumorerkrankung (Pflichtfeld)",
      "definition" : "Freitextbeschreibung der früheren Tumorerkrankung",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung Beschreibung"
      }]
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite.coding",
      "path" : "Condition.bodySite.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.bodySite.coding:icd-o-3",
      "path" : "Condition.bodySite.coding",
      "sliceName" : "icd-o-3",
      "short" : "ICD-O-3 Topographie",
      "definition" : "Anatomische Lokalisation nach ICD-O-3",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-topographie"
      }
    },
    {
      "id" : "Condition.bodySite.coding:icd-o-3.system",
      "path" : "Condition.bodySite.coding.system",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite.coding:icd-o-3.code",
      "path" : "Condition.bodySite.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung ICD-O-3 Topographie"
      }]
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "mustSupport" : true
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "mustSupport" : true
    }]
  }
}

```
