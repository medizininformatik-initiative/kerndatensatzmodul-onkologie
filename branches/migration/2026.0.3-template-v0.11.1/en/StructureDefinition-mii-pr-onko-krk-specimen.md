# MII PR Onkologie Specimen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Specimen**

## Resource Profile: MII PR Onkologie Specimen 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_PR_Onko_KRK_Specimen |

 
Histologie: Dieses Profil beschreibt eine Gewebeprobe in der Onkologie. 

### Content

This profile describes tissue samples (Specimens) in colorectal cancer that are taken as part of surgical interventions. It covers both the characterization of the tissue and specific pathological aspects such as TME quality (Total Mesorectal Excision) in rectal cancer.

The profile is based on a FHIR Specimen resource and establishes the connection between the surgical removal and the pathological processing.

-------

### Links to other resources

The KRK Specimen is an important link in the diagnostic chain:

* refers via `Specimen.subject` to the patient (Patient resource)
* is related to the collection procedure via `Specimen.collection.procedure`
* can be linked to pathological Observations (e.g. histology, grading)
* serves as the basis for determining resection margins and TNM classification

-------

### oBDS context

The KRK Specimen forms the basis for various oBDS assessments:

* Pathological assessment of the resection specimen
* TME quality in rectal cancer (KR4)
* Histopathological characteristics of the tumor
* Resection margin assessment

### Terminology binding

The profile uses specialized ValueSets for colorectal Specimens, in particular for assessing TME quality and other pathological parameters.

#### ValueSet: MII VS Onko KRK TME Qualität

> The codes it contains are listed in the artefact view: [MII VS Onkologie KRK TME Qualität](ValueSet-mii-vs-onko-krk-tme-qualitaet.md).

> The codes it contains are listed in the artefact view: [MII VS Onkologie KRK TME Qualität](ValueSet-mii-vs-onko-krk-tme-qualitaet.md).

-------

Mapping dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.md).

-------

Mapping [Uniform Oncological Base Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Specimen](StructureDefinition-mii-pr-onko-krk-specimen.md).

-------

**Search parameters**

The following search parameters are relevant for the KRK Specimen profile, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Specimen?_id=12345`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Specimen?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen`Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Specimen?subject=Patient/test`Usage notes: Further information on searching by "Specimen.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "type" MUST be supported:Examples:`GET [base]/Specimen?type=http://snomed.info/sct|119376003`Usage notes: Further information on searching by "Specimen.type" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "status" MUST be supported:Examples:`GET [base]/Specimen?status=available`Usage notes: Further information on searching by "Specimen.status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

-------

**Examples**

[mii-exa-onko-krk-specimen](Specimen-mii-exa-onko-krk-specimen.md)

**Usages:**

* Examples for this Profile: [Specimen/mii-exa-onko-krk-specimen](Specimen-mii-exa-onko-krk-specimen.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-krk-specimen.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-krk-specimen.csv), [Excel](../StructureDefinition-mii-pr-onko-krk-specimen.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-krk-specimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-krk-specimen",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_KRK_Specimen",
  "title" : "MII PR Onkologie Specimen",
  "status" : "active",
  "date" : "2026-08-27T15:31:43+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Histologie: Dieses Profil beschreibt eine Gewebeprobe in der Onkologie.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "6",
        "comment" : "Histologie"
      }]
    },
    {
      "id" : "Specimen.accessionIdentifier.value",
      "path" : "Specimen.accessionIdentifier.value",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "6.2",
        "comment" : "Histologie-Einsendenummer"
      }]
    },
    {
      "id" : "Specimen.collection.collected[x]:collectedDateTime",
      "path" : "Specimen.collection.collected[x]",
      "sliceName" : "collectedDateTime",
      "short" : "Tumor Histologiedatum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumor Histologiedatum"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Histologiedatum nach 6.1 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Histologiedatum nach 6.1 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "6.1",
        "comment" : "Tumor Histologiedatum"
      }]
    },
    {
      "id" : "Specimen.condition",
      "path" : "Specimen.condition",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-tme-qualitaet"
      }
    }]
  }
}

```
