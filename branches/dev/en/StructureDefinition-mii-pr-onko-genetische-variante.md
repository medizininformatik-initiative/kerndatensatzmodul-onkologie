# MII PR Onkologie Genetische Variante - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Genetische Variante**

## Resource Profile: MII PR Onkologie Genetische Variante 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-05 | *Computable Name*:MII_PR_Onko_Genetische_Variante |

 
Genetische Variante wie im oBDS beschrieben 

### Context

Information on genetic variants has been captured as part of the oBDS since the 2021 version. A variant is captured via two data fields:

* 'Genetic variant name' as free text
* 'Genetic variant characteristic' as oBDS-specific codes for the interpretation.

With the Molecular Genetic Findings Report (MolGenBB), the MII already offers a structure for exchanging genetic findings. The MolGenBB is based on the GenomicReport (version STU2) of the international HL7 Clinical Genomics Working Group and uses international terminologies and nomenclatures such as:

* **HGNC** for the unambiguous description of gene names
* **HGVS** for the description of variants in the coding and non-coding DNA region as well as for proteins
* **ISCN** for the description of cytogenomic position and structural variants
* **Sequence Ontology** for the semantic annotation of the variants

It can be assumed that genetic laboratories and bioinformatics pipelines work on the basis of these classifications or are able to map to them.

However, the coarse-grained capture of variant data in the oBDS makes a direct mapping to the terminologies and nomenclatures mentioned above impossible.

### Conformance Statements

Where possible, a more precise variant description SHOULD be provided via the MII Variant.

These variants SHOULD be incorporated by embedding them into the MII Molecular Genetic Findings Report `DiagnosticReport` and the MII Molecular Genetic Request `ServiceRequest`.

In the event that these modules cannot be implemented at the DIZ sites at all, not yet, or only partially, a direct mapping of the oBDS fields to the following fields SHALL be performed:

* `Observation.note` for variant name
* `Observation.interpretation` for the characteristic of the variant.

### Overview MII Variant

The variant profile of the Molecular Findings Report can be found here: https://simplifier.net/medizininformatikinitiative-modulomics/sdmiimolgenvariante

When using the MII Variant, the following data fields are mandatory for conformance:

* `subject`: reference to a patient
* `code`: fixed LOINC code (69548-6) to identify it as an examination of a genetic variant
* `status`: HL7 status
* `category`: fixed HL7 code for classification as a laboratory value

In addition, the following information can optionally be provided:

* `specimen`: reference to the biosample
* `method`: methodology of the examination
* `valueCodeableConcept`: variant assessment (present, not present, not called, indeterminate)
* `component`: all further details on the methodological procedure and evaluation, as well as variant information

-------

Mapping dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Genetische Variante](StructureDefinition-mii-pr-onko-genetische-variante.md).

**Examples**

[mii-exa-onko-genetische-variante-braf](Observation-mii-exa-onko-genetische-variante-braf.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.md)
* Examples for this Profile: [Observation/mii-exa-onko-genetische-variante-braf](Observation-mii-exa-onko-genetische-variante-braf.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-genetische-variante.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-genetische-variante.csv), [Excel](../StructureDefinition-mii-pr-onko-genetische-variante.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-genetische-variante.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-genetische-variante",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Onko_Genetische_Variante",
  "title" : "MII PR Onkologie Genetische Variante",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-05T06:32:59+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Genetische Variante wie im oBDS beschrieben",
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
    "identity" : "MII-KDS",
    "name" : "MII KDS Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "23",
        "comment" : "Genetische Variante"
      }]
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
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
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "closed"
      },
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding.system",
      "path" : "Observation.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding.code",
      "path" : "Observation.value[x].coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "23.2",
        "comment" : "Genetische Variante Ausprägung"
      }]
    },
    {
      "id" : "Observation.interpretation:oBDS",
      "path" : "Observation.interpretation",
      "sliceName" : "oBDS",
      "min" : 0,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-genetische-variante-auspraegung"
      }
    },
    {
      "id" : "Observation.interpretation:oBDS.coding",
      "path" : "Observation.interpretation.coding",
      "short" : "Genetische Variante Ausprägung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Genetische Variante Ausprägung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Genetische Variante Ausprägung gemäß 23.1 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Genetische Variante Ausprägung gemäß 23.2 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.interpretation:oBDS.coding.system",
      "path" : "Observation.interpretation.coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation:oBDS.coding.code",
      "path" : "Observation.interpretation.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "23.1",
        "comment" : "Genetische Variante Name"
      }]
    },
    {
      "id" : "Observation.note.text",
      "path" : "Observation.note.text",
      "short" : "Genetische Variante Name",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Genetische Variante Name"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Genetische Variante Name gemäß 23.1 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Genetische Variante Name gemäß 23.1 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "short" : "Tumor-Specimen aus dem die Variante bestimmt wurde",
      "definition" : "Referenz auf die Tumorprobe (Specimen), aus der die genetische Variante bestimmt wurde. Optional, da die Methodik auch über GenomicStudy abgebildet werden kann.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen"]
      }]
    },
    {
      "id" : "Observation.component:gene-studied",
      "path" : "Observation.component",
      "sliceName" : "gene-studied"
    },
    {
      "id" : "Observation.component:gene-studied.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Untersuchtes Gen",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Untersuchtes Gen als HGNC-Gensymbol"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Untersuchtes Gen als HGNC-Gensymbol - strukturierte Entsprechung des Freitext-Gennamens nach 23.1 oBDS",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-marker-gene-hgnc"
      }
    }]
  }
}

```
