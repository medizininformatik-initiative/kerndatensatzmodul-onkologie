# MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie**

## Resource Profile: MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event | *Version*:2026.0.3 |
| Active as of 2026-09-02 | *Computable Name*:MII_PR_Onko_Nebenwirkung_Adverse_Event |

 
Dieses Profil beschreibt die Nebenwirkung von Strahlentherapie und systemische Therapie in der Onkologie. 

This profile describes the adverse event of radiotherapy and systemic therapy in oncology.

The type of adverse event can be described either as a CTCAE term or as a medDRA number. Further information can be found in the documentation guide https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/93683749/Nebenwirkungen In addition, the Plattform §65c provides a curated list with translated CTCAE terms and the corresponding medDRA numbers. https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15533115/Nebenwirkungen+CTCAE

In deviation from the oBDS, this profile also allows events of severity grades 1 and 2 to be explicitly specified. As a result, it may happen that the cancer registry data does not record at all what type of adverse event is involved. In

-------

Mapping of dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md).

**Examples**

[mii-pr-onko-nebenwirkung-0](AdverseEvent-mii-pr-onko-nebenwirkung-0.md)

Adverse event without MedDRA coding:

[mii-pr-onko-nebenwirkung-text](AdverseEvent-mii-pr-onko-nebenwirkung-text.md)

**Usages:**

* Examples for this Profile: [AdverseEvent/mii-exa-onko-nebenwirkung-anaemie-grad3](AdverseEvent-mii-exa-onko-nebenwirkung-anaemie-grad3.md), [AdverseEvent/mii-exa-onko-nebenwirkung-crs-grad4](AdverseEvent-mii-exa-onko-nebenwirkung-crs-grad4.md), [AdverseEvent/mii-exa-onko-nebenwirkung-rektale-mukositis-grad2](AdverseEvent-mii-exa-onko-nebenwirkung-rektale-mukositis-grad2.md), [AdverseEvent/mii-pr-onko-nebenwirkung-0](AdverseEvent-mii-pr-onko-nebenwirkung-0.md) and [AdverseEvent/mii-pr-onko-nebenwirkung-text](AdverseEvent-mii-pr-onko-nebenwirkung-text.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.csv), [Excel](../StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-nebenwirkung-adverse-event",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Nebenwirkung_Adverse_Event",
  "title" : "MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie",
  "status" : "active",
  "date" : "2026-09-02T02:28:56+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt die Nebenwirkung von Strahlentherapie und systemische Therapie in der Onkologie.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AdverseEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AdverseEvent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AdverseEvent",
      "path" : "AdverseEvent",
      "constraint" : [{
        "key" : "nebenwirkung-grad3-art",
        "severity" : "warning",
        "human" : "Bei CTCAE-Schweregrad 3, 4 oder 5 muss die Art der Nebenwirkung (event.coding) angegeben sein. Bei Grad 1/2 darf sie fehlen (oBDS 15.2).",
        "expression" : "seriousness.coding.where(system = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad' and (code = '3' or code = '4' or code = '5')).exists() implies event.coding.exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event"
      }]
    },
    {
      "id" : "AdverseEvent.meta.profile",
      "path" : "AdverseEvent.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.extension",
      "path" : "AdverseEvent.extension",
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
      "id" : "AdverseEvent.extension:ctcaeVersion",
      "path" : "AdverseEvent.extension",
      "sliceName" : "ctcaeVersion",
      "short" : "CTCAE-Version",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "CTCAE-Version"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Version des CTCAE-Katalogs nach 15.3 oBDS 2021",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-nebenwirkung-ctcae-version"]
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "15.3",
        "comment" : "Nebenwirkungen nach CTCAE Version"
      }]
    },
    {
      "id" : "AdverseEvent.event",
      "path" : "AdverseEvent.event",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.coding",
      "path" : "AdverseEvent.event.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.coding.system",
      "path" : "AdverseEvent.event.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.coding.version",
      "path" : "AdverseEvent.event.coding.version",
      "short" : "CTCAE-Version",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "CTCAE-Version"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Version der für Art der Nebenwirkung verwendeten CTCAE-Klassifikation gemäß 15.3 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Version der für Art der Nebenwirkung verwendeten CTCAE-Klassifikation gemäß 15.3 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.coding.code",
      "path" : "AdverseEvent.event.coding.code",
      "short" : "Art der Nebenwirkung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Art der Nebenwirkung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Art der Nebenwirkung nach CTCAE / MedDRA.  Abweichend von 15.2 oBDS 2021 kann dieses Feld leer sein falls eine Nebenwirkung des Schweregrads 1 oder 2 vorliegt und keine spezifische Art der Nebenwirkung dokumentiert wurde",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Art der Nebenwirkung nach CTCAE / MedDRA . Abweichend von 15.2 oBDS 2021 kann dieses Feld leer sein falls eine Nebenwirkung des Schweregrads 1 oder 2 vorliegt und keine spezifische Art der Nebenwirkung dokumentiert wurde"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "15.2",
        "comment" : "Nebenwirkungen nach CTCAE Art"
      }]
    },
    {
      "id" : "AdverseEvent.event.coding:meddra",
      "path" : "AdverseEvent.event.coding",
      "sliceName" : "meddra",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-nebenwirkung-art"
      }
    },
    {
      "id" : "AdverseEvent.event.coding:meddra.system",
      "path" : "AdverseEvent.event.coding.system",
      "min" : 1,
      "patternUri" : "https://www.meddra.org",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.coding:meddra.version",
      "path" : "AdverseEvent.event.coding.version",
      "comment" : "Version des MEDDRA-Katalogs (z. B. 12.0 fuer die von CTCAE v4.03 verwendeten Codes). Die CTCAE-Katalogversion nach oBDS 15.3 steht in der Extension ctcaeVersion.",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "kein oBDS-Feld",
        "comment" : "Version des MedDRA-Katalogs, aus dem der Code stammt - vom oBDS nicht erhoben"
      }]
    },
    {
      "id" : "AdverseEvent.event.coding:meddra.code",
      "path" : "AdverseEvent.event.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.coding:snomed",
      "path" : "AdverseEvent.event.coding",
      "sliceName" : "snomed",
      "short" : "Art der Nebenwirkung (SNOMED CT)",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Art der Nebenwirkung als SNOMED CT"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "SNOMED-CT-Übersetzung der Nebenwirkungsart, abgeleitet über die ConceptMap mii-cm-onko-nebenwirkung-meddra-sct. Optional; nicht jeder MedDRA-/CTCAE-Term hat ein SNOMED-CT-Äquivalent.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.coding:snomed.system",
      "path" : "AdverseEvent.event.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.coding:snomed.version",
      "path" : "AdverseEvent.event.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.coding:snomed.code",
      "path" : "AdverseEvent.event.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.event.text",
      "path" : "AdverseEvent.event.text",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.subject",
      "path" : "AdverseEvent.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.encounter",
      "path" : "AdverseEvent.encounter",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.seriousness",
      "path" : "AdverseEvent.seriousness",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-nebenwirkung-ctcae-grad"
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "15.1",
        "comment" : "Nebenwirkungen nach CTCAE-Grad"
      }]
    },
    {
      "id" : "AdverseEvent.seriousness.coding",
      "path" : "AdverseEvent.seriousness.coding",
      "short" : "Schweregrad der Nebenwirkung nach CTCAE",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Schweregrad der Nebenwirkung nach CTCAE"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Schweregrad der Nebenwirkung nach CTCAE gemäß 15.1 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Schweregrad der Nebenwirkung nach CTCAE gemäß 15.1 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.seriousness.coding.system",
      "path" : "AdverseEvent.seriousness.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.seriousness.coding.code",
      "path" : "AdverseEvent.seriousness.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.seriousness.text",
      "path" : "AdverseEvent.seriousness.text",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.suspectEntity",
      "path" : "AdverseEvent.suspectEntity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.suspectEntity.instance",
      "path" : "AdverseEvent.suspectEntity.instance",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      }],
      "mustSupport" : true
    }]
  }
}

```
