# MII PR Onkologie Weitere Klassifikationen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Weitere Klassifikationen**

## Resource Profile: MII PR Onkologie Weitere Klassifikationen 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_PR_Onko_Weitere_Klassifikationen |

 
Weitere Tumor Staging Klassifikation neben TMN (Hämatoonkologische und sonstige Klassifikationen) 

This profile describes further tumour classifications besides TNM.

### Delimitation: staging, grading and risk assessment

The "further classifications" comprise different kinds of assessment systems:

* **Staging systems**: determine the anatomical extent of the tumour (e.g. FIGO, Ann Arbor, AJCC)
* **Grading systems**: assess the histological differentiation and biological aggressiveness
* **Risk assessment systems**: prognostic scores based on multiple clinical parameters (e.g. IPI, FLIPI, IPSS)
* **Molecular classifications**: based on genetic/molecular markers (e.g. p16 status, ELN classification)

### Staging systems (anatomical extent)

* **FIGO classification** for gynaecological tumours
* **AJCC classifications** of various editions (6th, 7th, 8th edition)
* **Ann Arbor classification** for lymphomas (Hodgkin and non-Hodgkin)
* **Durie-Salmon staging** for multiple myeloma
* **Bismuth classification** for hilar cholangiocarcinoma

### Grading and assessment systems

* **Breslow/Clark system** for melanomas (tumour thickness and depth of invasion)
* **GIST mitotic rate** (gastrointestinal stromal tumours)
* **p16 status** (molecular marker, especially in HPV-associated carcinomas)

### Prognostic risk scores

* **Lymphomas**: 
* IPI (International Prognostic Index) for aggressive non-Hodgkin lymphomas
* FLIPI for follicular lymphomas
* MIPI for mantle cell lymphomas
* GHSG risk classification for Hodgkin lymphomas
 
* **Leukaemias**: 
* European LeukemiaNet Classification (AML)
* EUTOS score (chronic myeloid leukaemia)
* Sanz score (acute promyelocytic leukaemia)
 
* **Myelodysplastic syndrome**: IPSS (International Prognostic Scoring System)
* **Multiple myeloma**: ISS/R-ISS (International Staging System)
* **Waldenström macroglobulinaemia**: ISSWM

The Plattform §65c provides a catalogue describing how the most common classifications are to be coded **for the cancer registry report**, for reasons of harmonisation: https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532511/Weitere+Klassifikationen

### Implementation notes

#### FHIR modelling following the mCODE STU4 pattern

This profile follows the **mCODE STU4 build pattern** for staging systems, with a three-part structure:

* **`Observation.code`**: general staging concept (e.g. "FIGO Stage", "Ann Arbor Stage", "BINET Stage")
* **`Observation.method`**: specific classification system/assessment method (must support)
* **`Observation.value`**: concrete classification value from the corresponding value set

**Example FIGO classification:**

```
code: 385361009 "FIGO Stage" (allgemeines Konzept)
method: "FIGO staging of cervical carcinoma" (spezifische Methode)
value: "Stage IIA" (konkreter Wert)

```

**Example haematological classification:**

```
code: "BINET staging system" (allgemeines Konzept) 
method: "BINET staging for chronic lymphocytic leukemia" (spezifische Methode)
value: "BINET A" (konkreter Wert)

```

This structure makes it possible to distinguish different staging systems within the same tumour entity and to identify clearly which specific assessment procedure was used.

#### Terminology integration

Because of the large number of possible scales and scores it is not possible to provide a comprehensive and generally valid catalogue here, so the concrete design is left to the vendors and systems. HL7 Deutschland provides guidance at the following link: https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Observation-Skalen-und-Scores.html

**Important note**: for oBDS-specific classifications it should first be checked whether corresponding SNOMED CT or LOINC codes are available before proprietary oBDS codes are used.

**Prioritisation in terminology selection:**

1. **SNOMED CT**for established classification systems (preferred)
1. **LOINC**for laboratory-based and quantitative assessments
1. **NCI Thesaurus**for special oncological concepts
1. **oBDS-specific codes**only if no international standards are available

### Delimitation from organ-specific modules

The following classifications will in future be covered by the organ-specific modules and should no longer be coded via the further classifications:

* **Gleason score** (prostate module)
* **Further organ-specific scores** are being transferred successively into the corresponding modules

### Terminology binding

The profile uses a **preferred binding** to the value set `MII_VS_Onko_Weitere_Klassifikationen`, whereby both international terminologies (SNOMED CT, NCI Thesaurus) and oBDS-specific codes are supported.

#### Available classification systems

> The expansion of the available classification systems is shown on the page of the value set [mii-vs-onko-weitere-klassifikationen](ValueSet-mii-vs-onko-weitere-klassifikationen.md).

-------

**Examples**

[mii-exa-onko-weitere-klassifikationen-1](Observation-mii-exa-onko-weitere-klassifikationen-1.md)

[mii-exa-onko-weitere-klassifikationen-2](Observation-mii-exa-onko-weitere-klassifikationen-2.md)

[mii-exa-onko-weitere-klassifikationen-3](Observation-mii-exa-onko-weitere-klassifikationen-3.md)

[mii-exa-onko-weitere-klassifikationen-4](Observation-mii-exa-onko-weitere-klassifikationen-4.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-weitere-klassifikationen-1](Observation-mii-exa-onko-weitere-klassifikationen-1.md), [Observation/mii-exa-onko-weitere-klassifikationen-2](Observation-mii-exa-onko-weitere-klassifikationen-2.md), [Observation/mii-exa-onko-weitere-klassifikationen-3](Observation-mii-exa-onko-weitere-klassifikationen-3.md) and [Observation/mii-exa-onko-weitere-klassifikationen-4](Observation-mii-exa-onko-weitere-klassifikationen-4.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-weitere-klassifikationen.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-weitere-klassifikationen.csv), [Excel](../StructureDefinition-mii-pr-onko-weitere-klassifikationen.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-weitere-klassifikationen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-weitere-klassifikationen",
  "meta" : {
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
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Weitere_Klassifikationen",
  "title" : "MII PR Onkologie Weitere Klassifikationen",
  "status" : "active",
  "date" : "2026-08-28T14:57:41+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Weitere Tumor Staging Klassifikation neben TMN (Hämatoonkologische und sonstige Klassifikationen)",
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
        "map" : "09",
        "comment" : "Weitere Klassifikationen"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding.code",
      "path" : "Observation.code.coding.code",
      "short" : "Klassifikation Name Kodierung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Klassifikation Name Kodierung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Name der Klassifikation kodiert in internationalem Standard - falls vorhanden",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Name der Klassifikation kodiert in internationalem Standard - falls vorhanden"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-weitere-klassifikationen"
      }
    },
    {
      "id" : "Observation.code.text",
      "path" : "Observation.code.text",
      "short" : "Klassifikation Name Freitext",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Name der Klassifikation wie in Krebsregistermeldung angegeben"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum der weiteren Klassifikation",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Name der Klassifikation wie in Krebsregistermeldung angegeben"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "09.2",
        "comment" : "Hämatoonkologische und sonstige Klassifikationen Name"
      }]
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
      "short" : "Datum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum der weiteren Klassifikation",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der weiteren Klassifikation"
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
        "map" : "09.1",
        "comment" : "Hämatoonkologische und sonstige Klassifikationen Datum"
      }]
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
        "rules" : "open"
      },
      "short" : "Wert/ Einstufung in jeweiliger Klassifikation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Wert der weiteren Klassifikation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Einstufung nach jeweiliger Klassifikation. Je nach ausgewählter Systematik kann hier eine Klassifikation/Kategorisierung, ein Puntkwert oder ein anderer Datentyp auftauchen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Wert in oben ausgewählter Klassifikation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "09.3",
        "comment" : "Hämatoonkologische und sonstige Klassifikationen Einstufung"
      }]
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding",
      "path" : "Observation.value[x].coding",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-weitere-klassifikationen-auspraegungen"
      }
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.text",
      "path" : "Observation.value[x].text",
      "mustSupport" : true
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "Staging system or classification method used",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verwendetes Klassifikationssystem"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "The specific staging system or classification method used to determine the stage/classification value. This allows the same observation to distinguish between different staging systems (e.g., FIGO vs Ann Arbor vs BINET).",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Das spezifische Klassifikationssystem oder die Bewertungsmethode zur Bestimmung des Klassifikationswertes"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-weitere-klassifikationen"
      }
    }]
  }
}

```
