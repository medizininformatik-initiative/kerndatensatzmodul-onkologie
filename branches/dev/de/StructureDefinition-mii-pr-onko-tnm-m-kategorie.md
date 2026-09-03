# MII PR Onkologie TNM M-Kategorie - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie TNM M-Kategorie**

## Ressourcenprofil: MII PR Onkologie TNM M-Kategorie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-03 | *Maschinenlesbarer Name*:MII_PR_Onko_TNM_M_Kategorie |

 
TNM-Klassifikation: TNM M-Kategorie. Fehlen oder Vorhandensein von Fernmetastasen, gemäß Tumorentität nach TNM. 

Dieses Profil beschreibt die M-Kategorie der TNM-Klassifikation. Die M-Kategorie kodiert für das Fehlen bzw. Vorhandensein von Fernmetastasen und wird entitätsspezifisch kodiert.

> **UICC-Präfixe y/r/a (modifierExtension):** Die Präfixe y (während/nach multimodaler Therapie), r (Rezidiv) und a (Autopsie) werden auf Kategorie-Ebene als **modifierExtension** abgebildet (`mii-ex-onko-tnm-y-praefix`, `…-r-praefix`, `…-a-praefix`), da sie die Interpretation des Kategorie-Wertes verändern — ypT2 ist prognostisch nicht mit pT2 vergleichbar. Verarbeitende Systeme müssen diese Extensions kennen. Das c/p/u-Präfix bleibt eine normale Extension auf `code`, da diese Information redundant im Observable-Code und im SNOMED-CT-Wert enthalten ist. Die Symbol-Observations (y-/r-/a-Symbol) auf Ebene der TNM-Klassifikation bleiben für das oBDS-Mapping (8.3–8.5) erhalten; gemischte Präfix-Situationen (z. B. ypT2 cN0) werden über die Kategorie-Präfixe abgebildet.

-------

**Beispiele**

[mii-exa-onko-tnm-m-kategorie-cM1](Observation-mii-exa-onko-tnm-m-kategorie-cM1.md)

[mii-exa-onko-tnm-m-kategorie-M0](Observation-mii-exa-onko-tnm-m-kategorie-M0.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md)
* Examples for this Profile: [Observation/TNM-M-Observation-2](Observation-TNM-M-Observation-2.md), [Observation/mii-exa-onko-ascending-colon-tnm-m](Observation-mii-exa-onko-ascending-colon-tnm-m.md), [Observation/mii-exa-onko-colorectal-tnm-m](Observation-mii-exa-onko-colorectal-tnm-m.md), [Observation/mii-exa-onko-cup-tnm-m-cM1](Observation-mii-exa-onko-cup-tnm-m-cM1.md)... Show 10 more, [Observation/mii-exa-onko-kim-klass1-cM1](Observation-mii-exa-onko-kim-klass1-cM1.md), [Observation/mii-exa-onko-kim-klass2-ycM1b](Observation-mii-exa-onko-kim-klass2-ycM1b.md), [Observation/mii-exa-onko-kim-klass3-ypM1b](Observation-mii-exa-onko-kim-klass3-ypM1b.md), [Observation/mii-exa-onko-tnm-bundle-legacy-m-cM0](Observation-mii-exa-onko-tnm-bundle-legacy-m-cM0.md), [Observation/mii-exa-onko-tnm-bundle-m-kategorie-cM0](Observation-mii-exa-onko-tnm-bundle-m-kategorie-cM0.md), [Observation/mii-exa-onko-tnm-m-kategorie-M0](Observation-mii-exa-onko-tnm-m-kategorie-M0.md), [Observation/mii-exa-onko-tnm-m-kategorie-cM0](Observation-mii-exa-onko-tnm-m-kategorie-cM0.md), [Observation/mii-exa-onko-tnm-m-kategorie-cM1](Observation-mii-exa-onko-tnm-m-kategorie-cM1.md), [Observation/mii-exa-onko-tnm-m-kategorie-rcM1](Observation-mii-exa-onko-tnm-m-kategorie-rcM1.md) and [Observation/mii-exa-onko-tnm-synth-meldung1-m-cM0](Observation-mii-exa-onko-tnm-synth-meldung1-m-cM0.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-tnm-m-kategorie.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 1 element(8 nested mandatory elements)
 Must-Support: 25 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* [MII PR Onkologie Fernmetastasen (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen)](StructureDefinition-mii-pr-onko-fernmetastasen.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-y-praefix](StructureDefinition-mii-ex-onko-tnm-y-praefix.md) (**Modifier**) 
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-r-praefix](StructureDefinition-mii-ex-onko-tnm-r-praefix.md) (**Modifier**) 
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-a-praefix](StructureDefinition-mii-ex-onko-tnm-a-praefix.md) (**Modifier**) 
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix](StructureDefinition-mii-ex-onko-tnm-cp-praefix.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-itc-suffix](StructureDefinition-mii-ex-onko-tnm-itc-suffix.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.value[x].coding

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 1 element(8 nested mandatory elements)
 Must-Support: 25 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* [MII PR Onkologie Fernmetastasen (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen)](StructureDefinition-mii-pr-onko-fernmetastasen.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-y-praefix](StructureDefinition-mii-ex-onko-tnm-y-praefix.md) (**Modifier**) 
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-r-praefix](StructureDefinition-mii-ex-onko-tnm-r-praefix.md) (**Modifier**) 
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-a-praefix](StructureDefinition-mii-ex-onko-tnm-a-praefix.md) (**Modifier**) 
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix](StructureDefinition-mii-ex-onko-tnm-cp-praefix.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-itc-suffix](StructureDefinition-mii-ex-onko-tnm-itc-suffix.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.value[x].coding

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-tnm-m-kategorie.csv), [Excel](../StructureDefinition-mii-pr-onko-tnm-m-kategorie.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-tnm-m-kategorie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-tnm-m-kategorie",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Onko_TNM_M_Kategorie",
  "title" : "MII PR Onkologie TNM M-Kategorie",
  "status" : "active",
  "date" : "2026-09-03T15:50:39+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "TNM-Klassifikation: TNM M-Kategorie. Fehlen oder Vorhandensein von Fernmetastasen, gemäß Tumorentität nach TNM.",
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
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
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
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Procedure"]
      }],
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
        "strength" : "preferred",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-m-kategorie"
      }
    },
    {
      "id" : "Observation.code.extension:cpPraefix",
      "path" : "Observation.code.extension",
      "sliceName" : "cpPraefix",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.extension:cpPraefix.value[x].coding",
      "path" : "Observation.code.extension.value[x].coding",
      "short" : "TNM c/p-Präfix M",
      "definition" : "Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte.",
      "comment" : "c oder (leer) = Kategorie wurde durch klinische Angaben festgestellt, bzw. erfüllt die Kriterien für p nicht. p = Feststellung der Kategorie erfolgte durch eine pathohistologische Untersuchung, mit der auch der höchste Grad der jeweiligen Kategorie hätte festgestellt werden können. u (Feststellung mit Ultraschall) ist unter c zu übermitteln."
    },
    {
      "id" : "Observation.code.extension:cpPraefix.value[x].coding.code",
      "path" : "Observation.code.extension.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "8.8",
        "comment" : "TNM c/p-Präfix M"
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
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie"
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
      "id" : "Observation.value[x].extension:itcSuffix",
      "path" : "Observation.value[x].extension",
      "sliceName" : "itcSuffix",
      "short" : "isolierte Tumorzellen (ITC) Suffix",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-itc-suffix"]
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
      "short" : "TNM M-Kategorie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TNM M-Kategorie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Fehlen oder Vorhandensein von Fernmetastasen, gemäß Tumorentität nach TNM.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TNM Fernmetastasierung nach 8.12 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "comment" : "Teilweise entitätsspezifisch, einschließlich Zusatzangaben wie (i+/-) und (mol+/-)",
      "min" : 1
    },
    {
      "id" : "Observation.value[x].coding.code",
      "path" : "Observation.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "8.12",
        "comment" : "TNM M-Kategorie"
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
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-m-kategorie-werte"
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
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-m-kategorie-werte-sct"
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
      "mustSupport" : true
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
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-version"
      }
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen"]
      }],
      "mustSupport" : true
    }]
  }
}

```
