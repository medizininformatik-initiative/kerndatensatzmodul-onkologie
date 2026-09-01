# MII PR Onkologie TNM T-Kategorie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie TNM T-Kategorie**

## Resource Profile: MII PR Onkologie TNM T-Kategorie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie | *Version*:2026.0.3 |
| Active as of 2026-09-01 | *Computable Name*:MII_PR_Onko_TNM_T_Kategorie |

 
TNM-Klassifikation: TNM T-Kategorie. Ausbreitung des Primärtumors, erfolgt gemäß Tumorentität nach TNM. 

This profile describes the T category of the TNM classification. The T category codes the tumour size and is coded entity-specifically.

> **UICC prefixes y/r/a (modifierExtension):** The prefixes y (during/after multimodal therapy), r (recurrence) and a (autopsy) are represented at category level as a **modifierExtension** (`mii-ex-onko-tnm-y-praefix`, `…-r-praefix`, `…-a-praefix`), because they change the interpretation of the category value — ypT2 is not prognostically comparable with pT2. Processing systems must know these extensions. The c/p/u prefix remains a normal extension on `code`, because this information is redundantly contained in the observable code and in the SNOMED CT value. The symbol observations (y/r/a symbol) at the level of the TNM classification are retained for the oBDS mapping (8.3–8.5); mixed prefix situations (e.g. ypT2 cN0) are represented via the category prefixes.

-------

**Examples**

[mii-exa-onko-tnm-t-kategorie-Tis](Observation-mii-exa-onko-tnm-t-kategorie-Tis.md)

[mii-exa-onko-tnm-t-kategorie-uT2a2](Observation-mii-exa-onko-tnm-t-kategorie-uT2a2.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md)
* Examples for this Profile: [Observation/TNM-T-Observation-2](Observation-TNM-T-Observation-2.md), [Observation/mii-exa-onko-ascending-colon-tnm-t](Observation-mii-exa-onko-ascending-colon-tnm-t.md), [Observation/mii-exa-onko-colorectal-tnm-t](Observation-mii-exa-onko-colorectal-tnm-t.md), [Observation/mii-exa-onko-cup-tnm-t-cTX](Observation-mii-exa-onko-cup-tnm-t-cTX.md)... Show 14 more, [Observation/mii-exa-onko-kim-klass1-cT3c](Observation-mii-exa-onko-kim-klass1-cT3c.md), [Observation/mii-exa-onko-kim-klass2-ycT3c](Observation-mii-exa-onko-kim-klass2-ycT3c.md), [Observation/mii-exa-onko-kim-klass3-ypT3c](Observation-mii-exa-onko-kim-klass3-ypT3c.md), [Observation/mii-exa-onko-tnm-bundle-legacy-t-cT2](Observation-mii-exa-onko-tnm-bundle-legacy-t-cT2.md), [Observation/mii-exa-onko-tnm-bundle-t-kategorie-cT2](Observation-mii-exa-onko-tnm-bundle-t-kategorie-cT2.md), [Observation/mii-exa-onko-tnm-synth-meldung1-t-cT3](Observation-mii-exa-onko-tnm-synth-meldung1-t-cT3.md), [Observation/mii-exa-onko-tnm-synth-meldung2-t-pT2](Observation-mii-exa-onko-tnm-synth-meldung2-t-pT2.md), [Observation/mii-exa-onko-tnm-t-kategorie-Tis](Observation-mii-exa-onko-tnm-t-kategorie-Tis.md), [Observation/mii-exa-onko-tnm-t-kategorie-cT3](Observation-mii-exa-onko-tnm-t-kategorie-cT3.md), [Observation/mii-exa-onko-tnm-t-kategorie-cT4](Observation-mii-exa-onko-tnm-t-kategorie-cT4.md), [Observation/mii-exa-onko-tnm-t-kategorie-rcT2](Observation-mii-exa-onko-tnm-t-kategorie-rcT2.md), [Observation/mii-exa-onko-tnm-t-kategorie-uT2a2](Observation-mii-exa-onko-tnm-t-kategorie-uT2a2.md), [Observation/mii-exa-onko-tnm-t-kategorie-ycT2](Observation-mii-exa-onko-tnm-t-kategorie-ycT2.md) and [Observation/mii-exa-onko-tnm-t-kategorie-ypT0](Observation-mii-exa-onko-tnm-t-kategorie-ypT0.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-tnm-t-kategorie.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-tnm-t-kategorie.csv), [Excel](../StructureDefinition-mii-pr-onko-tnm-t-kategorie.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-tnm-t-kategorie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-tnm-t-kategorie",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_TNM_T_Kategorie",
  "title" : "MII PR Onkologie TNM T-Kategorie",
  "status" : "active",
  "date" : "2026-09-01T22:10:57+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "TNM-Klassifikation: TNM T-Kategorie. Ausbreitung des Primärtumors, erfolgt gemäß Tumorentität nach TNM.",
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
      "constraint" : [{
        "key" : "tnm-sct-uicc-konsistenz",
        "severity" : "error",
        "human" : "Wenn ein SNOMED CT Code auf valueCodeableConcept vorhanden ist, muss dessen Display den c/p-Präfix und den UICC-Code enthalten (z.B. 'cT3' bei Präfix 'c' und Code 'T3').",
        "expression" : "valueCodeableConcept.coding.where(system = 'http://snomed.info/sct').empty() or valueCodeableConcept.coding.where(system = 'http://snomed.info/sct').display.contains(iif(code.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix').exists(), code.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix').value.coding.code.first(), '') + valueCodeableConcept.coding.where(system = 'https://www.uicc.org/resources/tnm').code.first() + ' ')",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
      }]
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.modifierExtension",
      "path" : "Observation.modifierExtension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.modifierExtension:yPraefix",
      "path" : "Observation.modifierExtension",
      "sliceName" : "yPraefix",
      "short" : "TNM y-Präfix (während/nach multimodaler Therapie)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-y-praefix"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.modifierExtension:yPraefix.value[x].coding.code",
      "path" : "Observation.modifierExtension.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "8.3",
        "comment" : "TNM y-Symbol"
      }]
    },
    {
      "id" : "Observation.modifierExtension:rPraefix",
      "path" : "Observation.modifierExtension",
      "sliceName" : "rPraefix",
      "short" : "TNM r-Präfix (Rezidiv)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-r-praefix"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.modifierExtension:rPraefix.value[x].coding.code",
      "path" : "Observation.modifierExtension.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "8.4",
        "comment" : "TNM r-Symbol"
      }]
    },
    {
      "id" : "Observation.modifierExtension:aPraefix",
      "path" : "Observation.modifierExtension",
      "sliceName" : "aPraefix",
      "short" : "TNM a-Präfix (Autopsie)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-a-praefix"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.modifierExtension:aPraefix.value[x].coding.code",
      "path" : "Observation.modifierExtension.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "8.5",
        "comment" : "TNM a-Symbol"
      }]
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
        "strength" : "preferred",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-t-kategorie"
      }
    },
    {
      "id" : "Observation.code.extension:cpPraefix",
      "path" : "Observation.code.extension",
      "sliceName" : "cpPraefix",
      "short" : "TNM c/p-Präfix T",
      "definition" : "Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte.",
      "comment" : "c oder (leer) = Kategorie wurde durch klinische Angaben festgestellt, bzw. erfüllt die Kriterien für p nicht. p = Feststellung der Kategorie erfolgte durch eine pathohistologische Untersuchung, mit der auch der höchste Grad der jeweiligen Kategorie hätte festgestellt werden können. u (Feststellung mit Ultraschall) ist unter c zu übermitteln.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.extension:cpPraefix.value[x].coding.code",
      "path" : "Observation.code.extension.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "8.6",
        "comment" : "TNM c/p-Präfix T"
      }]
    },
    {
      "id" : "Observation.code.coding.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding.code",
      "path" : "Observation.code.coding.code",
      "min" : 1,
      "mustSupport" : true
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
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding",
      "path" : "Observation.value[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "short" : "TNM T-Kategorie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TNM T-Kategorie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ausbreitung des Primärtumors, erfolgt gemäß Tumorentität nach TNM.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TNM Primärtumor 8.9 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Entitätsspezifisch, siehe auch allgemeine Bemerkungen zu TNM.",
      "min" : 1
    },
    {
      "id" : "Observation.value[x].coding.code",
      "path" : "Observation.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "8.9",
        "comment" : "TNM T-Kategorie"
      }]
    },
    {
      "id" : "Observation.value[x].coding:uicc",
      "path" : "Observation.value[x].coding",
      "sliceName" : "uicc",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-t-kategorie-werte"
      }
    },
    {
      "id" : "Observation.value[x].coding:uicc.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "patternUri" : "https://www.uicc.org/resources/tnm",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding:uicc.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding:snomed-ct",
      "path" : "Observation.value[x].coding",
      "sliceName" : "snomed-ct",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-t-kategorie-werte-sct"
      }
    },
    {
      "id" : "Observation.value[x].coding:snomed-ct.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding:snomed-ct.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-version"
      }
    },
    {
      "id" : "Observation.method.coding",
      "path" : "Observation.method.coding",
      "short" : "TNM Version",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TNM Version"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Gibt an, nach welcher Version des TNM klassifiziert wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Version nach 8.2 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:multipleTumoren",
      "path" : "Observation.component",
      "sliceName" : "multipleTumoren",
      "short" : "Multiple Primaertumoren als m-Suffix",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Multiple Primaertumoren - m-Suffix"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Multiple Primaertumoren in einem anatomischen Bezirk nach 8.10 oBDS 2021 - UICC-m-Suffix der T-Kategorie",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:multipleTumoren.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "42030-7",
          "display" : "Multiple tumors reported as single primary Cancer"
        }]
      }
    },
    {
      "id" : "Observation.component:multipleTumoren.value[x]",
      "path" : "Observation.component.value[x]",
      "comment" : "(m) = multiple Tumoren ohne Angabe der Zahl; (2)/(3)/(4) = Anzahl der multiplen Tumoren; nicht angegeben = keine multiplen Tumoren. Fuer die reine Mehrfachigkeit existiert in SNOMED CT das Qualifier-Konzept 369755005 |Multiple tumors|; fuer die Zaehlvarianten gibt es keine Entsprechung, daher hier kein Dual-Coding.",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-m-symbol"
      }
    }]
  }
}

```
