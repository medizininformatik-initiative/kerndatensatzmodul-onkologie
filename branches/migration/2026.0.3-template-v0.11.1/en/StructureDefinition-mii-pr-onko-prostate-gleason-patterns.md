# MII PR Onkologie Prostata Gleason Pattern - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Prostata Gleason Pattern**

## Resource Profile: MII PR Onkologie Prostata Gleason Pattern 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_PR_Onko_Prostata_Gleason_Pattern |

 
Dieses Profil beschreibt ein Gleason Pattern in der Onkologie. Es wird für das primäre, das sekundäre und das tertiäre Pattern gleichermaßen verwendet; welches Pattern gemeint ist, ergibt sich aus Observation.code. 

### Content

This profile describes the individual Gleason patterns (primary, secondary, tertiary) in the histopathological grading of prostate carcinoma. The Gleason patterns form the basis for calculating the Gleason score and are decisive for prognosis assessment.

The profile is based on a FHIR Observation resource and uses LOINC for coding the different pattern types. Each pattern is scored with a value of 1-5, whereby patterns ≥3 are considered malignant.

-------

### Links to other resources

The Gleason patterns are important histopathological observations:

* references the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor) via `Observation.focus`
* references the patient (Patient resource) via `Observation.subject`
* can be linked to a specific treatment case via `Observation.encounter`
* can be linked to the corresponding biopsy Procedure via `Observation.partOf`

-------

### oBDS context

According to oBDS P2, Gleason patterns are documented as primary, secondary, or tertiary pattern. The pattern values of 1-5 correspond to the international Gleason grading, whereby patterns from grade 3 upward are classified as malignant.

### Terminology binding

The ValueSet for Gleason pattern codes has a **required** binding, since the LOINC codes for Gleason patterns are standardized.

#### ValueSet: MII VS Onko Prostata Gleason Patterns

> The codes it contains are listed in the artefact view: [MII VS Onkologie Prostata Gleason Patterns](ValueSet-mii-vs-onko-prostata-gleason-patterns.md).

> The codes it contains are listed in the artefact view: [MII VS Onkologie Prostata Gleason Patterns](ValueSet-mii-vs-onko-prostata-gleason-patterns.md).

-------

Mapping dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.md).

-------

Mapping [Uniform Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Prostata Gleason Pattern](StructureDefinition-mii-pr-onko-prostate-gleason-patterns.md).

-------

**Search parameters**

The following search parameters are relevant for the Prostata-Gleason-Patterns profile, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Observation?_id=12345`
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns`
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Observation?code=http://loinc.org|44641-9`
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Observation?subject=Patient/test`
1. The search parameter "focus" MUST be supported:Examples:`GET [base]/Observation?focus=Condition/primaertumor`
1. The search parameter "value-concept" MUST be supported:Examples:`GET [base]/Observation?value-concept=http://snomed.info/sct|369771007`

-------

**Examples**

[mii-exa-onko-prostata-gleason-pattern-primary-1](Observation-mii-exa-onko-prostata-gleason-pattern-primary-1.md)

[mii-exa-onko-prostata-gleason-pattern-secondary-1](Observation-mii-exa-onko-prostata-gleason-pattern-secondary-1.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-prostata-gleason-pattern-primary-1](Observation-mii-exa-onko-prostata-gleason-pattern-primary-1.md) and [Observation/mii-exa-onko-prostata-gleason-pattern-secondary-1](Observation-mii-exa-onko-prostata-gleason-pattern-secondary-1.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-prostate-gleason-patterns.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-prostate-gleason-patterns.csv), [Excel](../StructureDefinition-mii-pr-onko-prostate-gleason-patterns.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-prostate-gleason-patterns.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-prostate-gleason-patterns",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Prostata_Gleason_Pattern",
  "title" : "MII PR Onkologie Prostata Gleason Pattern",
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
  "description" : "Dieses Profil beschreibt ein Gleason Pattern in der Onkologie. Es wird für das primäre, das sekundäre und das tertiäre Pattern gleichermaßen verwendet; welches Pattern gemeint ist, ergibt sich aus Observation.code.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Gleason Pattern (primär, sekundär, tertiär)",
      "definition" : "Primäres, sekundäres oder tertiäres Gleason Pattern. Das Pattern kann einen Wert zwischen 1-5 annehmen, wobei erst Werte ab 3 als maligne gelten. Das primäre Pattern ist das häufigste, das sekundäre das zweithäufigste. In seltenen Fällen wird auch ein tertiäres Pattern angegeben. Der Gleason Score ist ein histopathologisches Klassifikationssystem zur Beurteilung der Morphologie von Adenokarzinomen der Prostata und wird aus der Summe von primären und sekundärem Pattern berechnet.",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-primary-secondary-tertiary"
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
      "short" : "Datum der Probenentnahme",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Probenentnahme"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum der Probenentnahme der Prostata-Biopise oder des Prostata-Exzisats",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Probenentnahme der Prostata-Biopise oder des Prostata-Exzisats"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-patterns"
      }
    },
    {
      "id" : "Observation.value[x].coding",
      "path" : "Observation.value[x].coding",
      "short" : "Gleason-Pattern",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gleason-Pattern"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Gleason-Pattern einer Prostata-Biopsie oder Operation",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gleason-Pattern einer Prostata-Biopsie oder Operation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.value[x].coding.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "mustSupport" : true
    }]
  }
}

```
