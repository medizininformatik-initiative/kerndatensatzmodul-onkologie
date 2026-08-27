# MII PR Onkologie Befund - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Befund**

## Resource Profile: MII PR Onkologie Befund 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_PR_Onko_Befund |

 
Histologie: Befund. Vollständiger Befundbericht des Pathologen. 

This profile describes a pathology report in the oncology context.

Since the data originate from local tumour documentation systems, a large part of the reports will be available as plain text only.

Pathology reporting **MAY** also be carried out within the MII via the pathology report. In that case, individual observations can be coded in a structured way as patho findings using LOINC or SNOMED. See [MII PR Patho Report (Pathologie-Befund module)](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Pathologie_Befund/MII-IG-KDS-Modul-Pathologie-Befund-TechnischeImplementierung-FHIRProfile-MII-PR-Patho-Report.html).

-------

Mapping dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Befund](StructureDefinition-mii-pr-onko-befund.md).

-------

**Search parameters**

The following search parameters are relevant for the Onkologie module, including in combination:

1. The search parameter `_id` MUST be supported:Examples:`GET [base]/DiagnosticReport?_id=1234`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/DiagnosticReport?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund`Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

**Examples**

[mii-exa-onko-befund-1](DiagnosticReport-mii-exa-onko-befund-1.md)

**Usages:**

* Examples for this Profile: [DiagnosticReport/mii-exa-onko-befund-1](DiagnosticReport-mii-exa-onko-befund-1.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-befund.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-befund.csv), [Excel](../StructureDefinition-mii-pr-onko-befund.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-befund.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-befund",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Befund",
  "title" : "MII PR Onkologie Befund",
  "status" : "active",
  "date" : "2026-08-27T10:41:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Histologie: Befund. Vollständiger Befundbericht des Pathologen.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.meta.profile",
      "path" : "DiagnosticReport.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this.resolve()"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.basedOn:tumorkonferenz",
      "path" : "DiagnosticReport.basedOn",
      "sliceName" : "tumorkonferenz",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "short" : "Pathology report code",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code.coding",
      "path" : "DiagnosticReport.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code.coding:pathology-report",
      "path" : "DiagnosticReport.code.coding",
      "sliceName" : "pathology-report",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "22034-3"
      },
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code.coding:pathology-report.system",
      "path" : "DiagnosticReport.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code.coding:pathology-report.code",
      "path" : "DiagnosticReport.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.encounter",
      "path" : "DiagnosticReport.encounter",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.specimen",
      "path" : "DiagnosticReport.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen",
        "http://hl7.org/fhir/StructureDefinition/Specimen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusion",
      "path" : "DiagnosticReport.conclusion",
      "short" : "Befund als Freitext",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Befund als Freitext"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Befund als Freitext nach 6.11 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Befund als Freitext nach 6.11 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "6.11",
        "comment" : "Befund"
      }]
    }]
  }
}

```
