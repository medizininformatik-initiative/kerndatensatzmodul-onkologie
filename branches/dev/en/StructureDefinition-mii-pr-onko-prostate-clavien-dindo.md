# MII PR Onkologie Clavien Dindo - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Clavien Dindo**

## Resource Profile: MII PR Onkologie Clavien Dindo 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-clavien-dindo | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-05 | *Computable Name*:MII_PR_Onko_Prostata_Clavien_Dindo |

 
Dieses Profil beschreibt den Clavien-Dindo-Score für die Prostatektomie in der Onkologie 

### Content

This profile describes the Clavien-Dindo score for prostatectomy in oncology. The Clavien-Dindo classification is a standardized system for assessing postoperative complications based on their severity and the therapy required.

The profile is based on a FHIR Observation resource and uses SNOMED CT to code the assessment method. It supports both the SNOMED CT Clavien-Dindo grades and the oBDS-specific codes for postoperative complications.

-------

### Links to other resources

The Clavien-Dindo score is an important postoperative observation:

* refers via `Observation.focus[Diagnose]` to the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor)
* refers via `Observation.focus[Operation]` to the procedure performed (MII_PR_Onko_Operation)
* refers via `Observation.subject` to the patient (Patient resource)
* can be linked via `Observation.encounter` to a specific treatment case
* can be linked via `Observation.specimen` to corresponding tissue samples

-------

### oBDS context

According to the oBDS, postoperative complications after prostatectomy are systematically captured. The Clavien-Dindo classification complements the oBDS coding with an internationally standardized assessment of complication severity.

### Terminology binding

The profile uses **required** bindings for both coding systems:

#### Assessment method

* **SNOMED CT**: 789278003 "Clavien-Dindo classification (assessment scale)"

#### Observation code

* **SNOMED CT**: 789279006 "Clavien-Dindo classification grade (observable entity)"

#### Clavien-Dindo ValueSet

The ValueSet comprises the SNOMED CT codes for all Clavien-Dindo grades:

> The codes it contains are listed in the artefact view: [MII VS Onkologie Prostata Clavien Dindo](ValueSet-mii-vs-onko-prostata-clavien-dindo.md).

#### oBDS postoperative complications ValueSet

In addition, oBDS-specific codes for postoperative complications are supported:

> The codes it contains are listed in the artefact view: [MII VS Onkologie Prostata Postsurgical Complications](ValueSet-mii-vs-onko-prostata-postsurgical-complications.md).

-------

Mapping dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Clavien Dindo](StructureDefinition-mii-pr-onko-prostate-clavien-dindo.md).

**Examples**

[mii-exa-onko-prostata-surgical-complication-1](Observation-mii-exa-onko-prostata-surgical-complication-1.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-prostata-surgical-complication-1](Observation-mii-exa-onko-prostata-surgical-complication-1.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-prostate-clavien-dindo.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-prostate-clavien-dindo.csv), [Excel](../StructureDefinition-mii-pr-onko-prostate-clavien-dindo.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-prostate-clavien-dindo.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-prostate-clavien-dindo",
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
        "valueString" : "2027.0.0-ballot.rc1"
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-clavien-dindo",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Onko_Prostata_Clavien_Dindo",
  "title" : "MII PR Onkologie Clavien Dindo",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-05T05:33:13+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt den Clavien-Dindo-Score für die Prostatektomie in der Onkologie",
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
        "map" : "P9",
        "comment" : "Postoperative Komplikation (Clavien-Dindo Grad III/IV innerhalb 6 Monaten)"
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
      "short" : "Postoperative Komplikation nach Clavien-Dindo",
      "definition" : "Posteroperative Komplikationssschwere nach Clavien-Dindo für die Prostatektomie in der Onkologie",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "789279006",
        "display" : "Clavien-Dindo classification grade (observable entity)"
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
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "description" : "Slice to differentiate between focus condition and focus procedure",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Observation.focus:Diagnose",
      "path" : "Observation.focus",
      "sliceName" : "Diagnose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.focus:Operation",
      "path" : "Observation.focus",
      "sliceName" : "Operation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
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
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slicing für Clavien-Dindo und oBDS Postoperative Komplikationen",
        "ordered" : false,
        "rules" : "open"
      },
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "PSA-Wert"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "PSA-Wert aus Blut/Plasma in ng/ml"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1
    },
    {
      "id" : "Observation.value[x].coding:ClavienDindo",
      "path" : "Observation.value[x].coding",
      "sliceName" : "ClavienDindo",
      "short" : "PSA-Wert",
      "definition" : "PSA-Wert aus Blut/Plasma in ng/ml",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-clavien-dindo"
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "P9",
        "comment" : "Clavien-Dindo Klassifikation postoperativer Komplikationen"
      }]
    },
    {
      "id" : "Observation.value[x].coding:ClavienDindo.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.value[x].coding:OBDSPostOPKompl",
      "path" : "Observation.value[x].coding",
      "sliceName" : "OBDSPostOPKompl",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-postsurgical-complications"
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "P9 (Komponente)",
        "comment" : "Spezifische Art der postoperativen Komplikation; keine eigene oBDS-Feldnummer"
      }]
    },
    {
      "id" : "Observation.value[x].coding:OBDSPostOPKompl.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-prostata-postsurgical-complications"
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "789278003",
          "display" : "Clavien-Dindo classification (assessment scale)"
        }]
      }
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "mustSupport" : true
    }]
  }
}

```
