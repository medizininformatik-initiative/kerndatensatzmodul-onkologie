# MII PR Onkologie Präoperative Drahtmarkierung Mamma - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Präoperative Drahtmarkierung Mamma**

## Resource Profile: MII PR Onkologie Präoperative Drahtmarkierung Mamma 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-operation | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_PR_Onko_KRK_Operation |

 
Das vorliegende Profil beschreibt eine radiologisch durchgeführte Markierung von Tumorgewebe mittels der Brust. Dabei können verschiedene Methoden gewählt werden. Die 

### Content

This profile describes surgical procedures for colorectal cancer according to various oBDS criteria. It covers both the type of surgical procedure and specific colorectal operation types and their quality characteristics, such as TME quality (total mesorectal excision).

The profile is based on a FHIR Procedure resource and uses several specialized ValueSets to code the various surgical aspects of colorectal cancer.

-------

### Links to other resources

The KRK operation is a central therapeutic procedure:

* refers via `Procedure.subject` to the patient (Patient resource)
* can be linked via `Procedure.encounter` to a specific treatment case
* relates to the primary diagnosis via `Procedure.reasonReference`
* can be linked to Specimen resources for pathological workup

-------

### oBDS context

The KRK operation covers several oBDS data fields:

* Operation type according to various classification systems
* TME quality for rectal cancer (KR4)
* Further operation-specific parameters depending on the procedure

### Terminology binding

The profile uses several ValueSets for the various aspects of the KRK operation:

#### ValueSet: MII VS Onko KRK TME Qualität

> The codes it contains are listed in the artefact view: [MII VS Onkologie KRK TME Qualität](ValueSet-mii-vs-onko-krk-tme-qualitaet.md).

-------

Mapping dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Präoperative Drahtmarkierung Mamma](StructureDefinition-mii-pr-onko-krk-operation.md).

-------

**Search parameters**

The following search parameters are relevant for the KRK-Operation profile, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Procedure?_id=12345`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-operation`Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Procedure?code=http://snomed.info/sct|387713003`Usage notes: Further information on searching by "Procedure.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Procedure?subject=Patient/test`Usage notes: Further information on searching by "Procedure.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "status" MUST be supported:Examples:`GET [base]/Procedure?status=completed`Usage notes: Further information on searching by "Procedure.status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

-------

**Examples**

[mii-exa-onko-krk-operation](Procedure-mii-exa-onko-krk-operation.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie KRK Anastomoseninsuffizienz](StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz.md)
* Examples for this Profile: [Procedure/mii-exa-onko-krk-operation](Procedure-mii-exa-onko-krk-operation.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-krk-operation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-krk-operation.csv), [Excel](../StructureDefinition-mii-pr-onko-krk-operation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-krk-operation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-krk-operation",
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-operation",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_KRK_Operation",
  "title" : "MII PR Onkologie Präoperative Drahtmarkierung Mamma",
  "status" : "active",
  "date" : "2026-08-27T12:06:00+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Das vorliegende Profil beschreibt eine radiologisch durchgeführte Markierung von Tumorgewebe mittels  der Brust. Dabei können verschiedene Methoden gewählt werden. Die  ",
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
  "type" : "Procedure",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"]
      }]
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "Kolorektale Operation",
      "definition" : "Operation des Kolons und des Rektums, z.B. Exzision eines Tumors, "
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }]
    },
    {
      "id" : "Procedure.usedCode",
      "path" : "Procedure.usedCode",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedCode.coding",
      "path" : "Procedure.usedCode.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "description" : "Slicing für die intraoperative Verwendung von z.B. Drahtmarkierungen, Markierungsclips oder Seed-Markierungen",
        "rules" : "open"
      },
      "mustSupport" : true
    }]
  }
}

```
