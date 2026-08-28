# MII PR Onkologie Studienteilnahme - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Studienteilnahme**

## Resource Profile: MII PR Onkologie Studienteilnahme 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-studienteilnahme | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_PR_Onko_Studienteilnahme |

 
Dieses Profil beschreibt Studienteilnahmen in der Onkologie 

This profile describes whether and when a patient participated in a study.

It includes:

* a reference to Patient
* a reference to the primary diagnosis
*  

| | |
| :--- | :--- |
| the Observation code "709491003 | Enrollment in clinical trial (procedure)" (SNOMED-CT) |

 
* the exact date of first enrollment in a study with ethics approval
* the status of study participation (Yes, No, Unknown)

In the case of a pharmacological study, a reference to a Procedure / systemic therapy SHOULD ideally exist, either via Observation.partOf = Reference (SystemischeTherapie), Observation.basedOn = Reference (MedicationRequest); or Procedure.basedOn.

### Referencing studies

Information about the exact study (organization, study ID, study phase, etc.) MAY be provided via the element `Observation.focus[studie]` with a reference to a ResearchStudy resource from the [MII Studie module](https://simplifier.net/medizininformatikinitiative-modul-studie).

The ResearchStudy resource enables the structured capture of:

* Study identifiers (DRKS, ClinicalTrials.gov, EudraCT, Innovationsfonds project number)
* Study type and phase
* Primary study objectives
* Study context and indication
* Study status

A complete example can be found in the PRO-B study participation, which references a ResearchStudy with DRKS registration (DRKS00024015) and an Innovationsfonds project number (01NVF19013).

-------

Mapping dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Uniform Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Studienteilnahme](StructureDefinition-mii-pr-onko-studienteilnahme.md).

**Examples**

Example 1: Simple study participation

[mii-exa-onko-studienteilnahme](Observation-mii-exa-onko-studienteilnahme.md)

-------

Example 2: Study participation with ResearchStudy reference (PRO-B study)

This example shows the documentation of study participation with a reference to a ResearchStudy resource that contains detailed study information including DRKS registration and Innovationsfonds project number.

[mii-exa-onko-studienteilnahme-prob](Observation-mii-exa-onko-studienteilnahme-prob.md)

ResearchStudy resource:

[mii-exa-onko-studie-prob](ResearchStudy-mii-exa-onko-studie-prob.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-studienteilnahme-prob](Observation-mii-exa-onko-studienteilnahme-prob.md) and [Observation/mii-exa-onko-studienteilnahme](Observation-mii-exa-onko-studienteilnahme.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-studienteilnahme.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-studienteilnahme.csv), [Excel](../StructureDefinition-mii-pr-onko-studienteilnahme.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-studienteilnahme.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-studienteilnahme",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-studienteilnahme",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Studienteilnahme",
  "title" : "MII PR Onkologie Studienteilnahme",
  "status" : "active",
  "date" : "2026-08-28T06:12:02+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt Studienteilnahmen in der Onkologie",
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
        "map" : "24",
        "comment" : "Studienteilnahme"
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
      "short" : "Studienteilnahme laut oBDS",
      "definition" : "SCTID: 709491003 | Enrollment in clinical trial (procedure)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "709491003"
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
          "type" : "type",
          "path" : "$this.resolve()"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.focus:primaertumor",
      "path" : "Observation.focus",
      "sliceName" : "primaertumor",
      "short" : "Referenz zum Primärtumor",
      "definition" : "Referenz zur Primärtumordiagnose, auf die sich die Studienteilnahme bezieht",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.focus:studie",
      "path" : "Observation.focus",
      "sliceName" : "studie",
      "short" : "Referenz zur Studie",
      "definition" : "Referenz zur konkreten Studie (ResearchStudy), an der der Patient teilnimmt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/ResearchStudy"]
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
      "short" : "Studienteilnahme Datum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Studienteilnahme Datum"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Studienteilnahme Datum gemäß 24.2 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Studienteilnahme Datum gemäß 24.2 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "24.2",
        "comment" : "Studienteilnahme Datum"
      }]
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
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-studienteilnahme"
      }
    },
    {
      "id" : "Observation.value[x].coding",
      "path" : "Observation.value[x].coding",
      "short" : "Studienteilnahme",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Studienteilnahme"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Studienteilnahme gemäß 24.1 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Studienteilnahme gemäß 24.1 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.value[x].coding.system",
      "path" : "Observation.value[x].coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-studienteilnahme"
    },
    {
      "id" : "Observation.value[x].coding.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "24.1",
        "comment" : "Studienteilnahme Status"
      }]
    }]
  }
}

```
