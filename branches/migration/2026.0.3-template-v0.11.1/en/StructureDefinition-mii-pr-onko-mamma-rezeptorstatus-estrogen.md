# MII PR Onkologie Rezeptorstatus Estrogen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Rezeptorstatus Estrogen**

## Resource Profile: MII PR Onkologie Rezeptorstatus Estrogen 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-rezeptorstatus-estrogen | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_PR_Onko_Mamma_Rezeptorstatus_Estrogen |

 
Dieses Profil beschreibt den diagnostischen Estrogen-Rezeptorstatus eines pathologisch untersuchten Probe beim Mamma-Karzinom in der Onkologie 

### Content

The **estrogen receptor status profile** documents the diagnostic estrogen receptor status of a pathologically examined specimen in breast cancer. This profile enables the detailed recording of both the quantitative measured values (proportion of positive cells, staining intensity) and the interpreted results according to various definitions.

The estrogen receptor status is a key prognostic and predictive biomarker in breast cancer and is decisive for therapy planning, in particular with regard to anti-hormonal therapy.

-------

### Links to other resources

The profile is closely linked to other oncology resources:

* references the primary diagnosis via `Observation.focus` (MII_PR_Onko_Diagnose_Primaertumor)
* references the patient via `Observation.subject` (Patient resource)
* can be linked to a specific treatment case via `Observation.encounter`

-------

### oBDS context

The profile implements the **oBDS data fields for the estrogen receptor status** in breast cancer. It should be noted that the [oBDS Mamma was originally published in 2015](https://www.basisdatensatz.de/download/Brust.pdf) and the methodology has been subject to considerable changes since then.

**Historical vs. current practice:**

* **IRS (Immunreactive Score)**: Was still used in 2015, but is no longer in broad clinical use today, although it remains relevant for registry data
* **Thresholds**: Modern pathological practice begins positivity already at >1% positive cells (instead of the historical 10% threshold)
* **Evaluation approaches**: Current S3 guidelines use definitions that differ from the original oBDS

**Modeling compromise**: The profile proposed here represents a compromise between older registry data, which is required by the current registry framework, and the changes in clinical and pathological practice.

**Note for commenting**: It should be discussed whether a separate profile for the IRS (Immunreactive Score) should be added in order to fully represent historical data.

### Terminology binding

The profile uses a **dual coding strategy** with **extensible** binding. This means that codes from the defined ValueSets SHOULD be used preferentially, but other suitable codes MAY also be used if needed.

#### ValueSet: MII VS Onko Mamma Rezeptorstatus oBDS

> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Rezeptorstatus oBDS](ValueSet-mii-vs-onko-mamma-rezeptorstatus-obds.md).

> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Rezeptorstatus oBDS](ValueSet-mii-vs-onko-mamma-rezeptorstatus-obds.md).

#### ValueSet: MII VS Onko Mamma Rezeptorstatus Leitlinie

> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Rezeptorstatus Leitlinie](ValueSet-mii-vs-onko-mamma-rezeptorstatus-leitlinie.md).

> The codes it contains are listed in the artefact view: [MII VS Onkologie Mamma Rezeptorstatus Leitlinie](ValueSet-mii-vs-onko-mamma-rezeptorstatus-leitlinie.md).

-------

Mapping of dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Rezeptorstatus Estrogen](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.md).

**Examples**

[mii-exa-onko-mamma-rezeptorstatus-estrogen-1](Observation-mii-exa-onko-mamma-rezeptorstatus-estrogen-1.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-mamma-rezeptorstatus-estrogen-1](Observation-mii-exa-onko-mamma-rezeptorstatus-estrogen-1.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.csv), [Excel](../StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-mamma-rezeptorstatus-estrogen",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-rezeptorstatus-estrogen",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Mamma_Rezeptorstatus_Estrogen",
  "title" : "MII PR Onkologie Rezeptorstatus Estrogen",
  "status" : "active",
  "date" : "2026-08-28T08:03:44+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt den diagnostischen Estrogen-Rezeptorstatus eines pathologisch untersuchten Probe beim Mamma-Karzinom in der Onkologie",
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
        "map" : "M2",
        "comment" : "HormonrezeptorStatus: Östrogen"
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
      "short" : "Rezeptorstatus Estrogen",
      "definition" : "Rezeptorstatus Estrogen, abgeleitet aus der Immunhistochemie der Mamma-Biopsie oder des Mamma-Exzisionspräparates, basierend auf Zahl der positiven Zellen und Färbeintensität",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "40556-3",
        "display" : "Estrogen receptor Ag [Presence] in Tissue by Immune stain"
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
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "M2",
        "comment" : "Kategoriale Bewertung des Estrogen-Rezeptorstatus"
      }]
    },
    {
      "id" : "Observation.value[x].coding",
      "path" : "Observation.value[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slicing für die unterschiedliche Definition von Rezeptorstatus im oBDS und in den S3-Leitlinien",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.value[x].coding.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding:DefinitionOBDS",
      "path" : "Observation.value[x].coding",
      "sliceName" : "DefinitionOBDS",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-rezeptorstatus-obds"
      }
    },
    {
      "id" : "Observation.value[x].coding:DefinitionOBDS.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.value[x].coding:DefinitionOBDS.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding:DefinitionLeitlinie",
      "path" : "Observation.value[x].coding",
      "sliceName" : "DefinitionLeitlinie",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-rezeptorstatus-leitlinie"
      }
    },
    {
      "id" : "Observation.value[x].coding:DefinitionLeitlinie.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-rezeptorstatus-leitlinie"
    },
    {
      "id" : "Observation.value[x].coding:DefinitionLeitlinie.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code.coding"
        }],
        "description" : "Slice for Receptor Status Estrogen primary data observations",
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:AnteilPositiveZellen",
      "path" : "Observation.component",
      "sliceName" : "AnteilPositiveZellen",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:AnteilPositiveZellen.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "1234804006",
        "display" : "Percent of cells with estrogen receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
      }
    },
    {
      "id" : "Observation.component:AnteilPositiveZellen.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:AnteilPositiveZellen.value[x].value",
      "path" : "Observation.component.value[x].value",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "M2 (Komponente)",
        "comment" : "Anteil positiver Zellen in Prozent; keine eigene oBDS-Feldnummer (S3-Leitlinie)"
      }]
    },
    {
      "id" : "Observation.component:AnteilPositiveZellen.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "%"
    },
    {
      "id" : "Observation.component:AnteilPositiveZellen.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:AnteilPositiveZellen.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "%"
    },
    {
      "id" : "Observation.component:AnteilPositiveZellen.interpretation",
      "path" : "Observation.component.interpretation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Faerbeintensitaet",
      "path" : "Observation.component",
      "sliceName" : "Faerbeintensitaet",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Faerbeintensitaet.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "1236874005",
        "display" : "Intensity of stain of estrogen receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
      }
    },
    {
      "id" : "Observation.component:Faerbeintensitaet.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-faerbeintensitaet"
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "M2 (Komponente)",
        "comment" : "Färbeintensität; keine eigene oBDS-Feldnummer (S3-Leitlinie)"
      }]
    }]
  }
}

```
