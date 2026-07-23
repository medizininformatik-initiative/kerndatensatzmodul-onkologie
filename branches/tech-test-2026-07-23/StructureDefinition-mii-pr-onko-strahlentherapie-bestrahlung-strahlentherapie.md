# MII PR Onkologie Strahlentherapie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Strahlentherapie**

## Resource Profile: MII PR Onkologie Strahlentherapie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie |

 
Strahlentherapie. Dieses Profil beschreibt eine Strahlentherapie in der Onkologie. 

**Usages:**

* Examples for this Profile: [Procedure/mii-exa-onko-strahlentherapie-2014-mamma-mit-lk](Procedure-mii-exa-onko-strahlentherapie-2014-mamma-mit-lk.md), [Procedure/mii-exa-onko-strahlentherapie-2014-prostata-mit-lk](Procedure-mii-exa-onko-strahlentherapie-2014-prostata-mit-lk.md), [Procedure/mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten.md), [Procedure/mii-exa-onko-strahlentherapie-2021-mamma-primaer](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-primaer.md) and [Procedure/mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.csv), [Excel](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.xlsx), [Schematron](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
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
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C25218"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "julian.sass@charite.de"
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
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2024-03-07"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2026"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie",
  "title" : "MII PR Onkologie Strahlentherapie",
  "status" : "active",
  "date" : "2026-07-23T12:42:42+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Strahlentherapie. Dieses Profil beschreibt eine Strahlentherapie in der Onkologie.",
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
  "type" : "Procedure",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14",
        "comment" : "Strahlentherapie"
      }]
    },
    {
      "id" : "Procedure.extension:Gesamtdosis",
      "path" : "Procedure.extension",
      "sliceName" : "Gesamtdosis",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:Gesamtdosis.value[x].value",
      "path" : "Procedure.extension.value[x].value",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.9",
        "comment" : "Strahlentherapie Gesamtdosis"
      }]
    },
    {
      "id" : "Procedure.extension:Gesamtdosis.value[x].unit",
      "path" : "Procedure.extension.value[x].unit",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.11",
        "comment" : "Strahlentherapie Einheit"
      }]
    },
    {
      "id" : "Procedure.extension:Einzeldosis",
      "path" : "Procedure.extension",
      "sliceName" : "Einzeldosis",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:Einzeldosis.value[x].value",
      "path" : "Procedure.extension.value[x].value",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.10",
        "comment" : "Strahlentherapie Einzeldosis pro Tag"
      }]
    },
    {
      "id" : "Procedure.extension:Einzeldosis.value[x].unit",
      "path" : "Procedure.extension.value[x].unit",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.11",
        "comment" : "Strahlentherapie Einheit"
      }]
    },
    {
      "id" : "Procedure.extension:Boost",
      "path" : "Procedure.extension",
      "sliceName" : "Boost",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-boost"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:Boost.value[x].coding.code",
      "path" : "Procedure.extension.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.12",
        "comment" : "Strahlentherapie Boost"
      }]
    },
    {
      "id" : "Procedure.extension:Applikationsart",
      "path" : "Procedure.extension",
      "sliceName" : "Applikationsart",
      "short" : "Applikationsart",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Applikationsart"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Applikationsart der Bestrahlung gemäß 14.7 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Applikationsart der Bestrahlung gemäß 14.7 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/procedure-method"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:Applikationsart.value[x]",
      "path" : "Procedure.extension.value[x]",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-applikationsart"
      }
    },
    {
      "id" : "Procedure.extension:Applikationsart.value[x].coding.system",
      "path" : "Procedure.extension.value[x].coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:Applikationsart.value[x].coding.code",
      "path" : "Procedure.extension.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.7",
        "comment" : "Strahlentherapie Applikationsart"
      }]
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CarePlan"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Procedure",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1287742003",
          "display" : "Radiotherapy (procedure)"
        }]
      }
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-ops-strahlentherapie"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Procedure.performed[x].start",
      "path" : "Procedure.performed[x].start",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.5",
        "comment" : "Strahlentherapie Beginn"
      }]
    },
    {
      "id" : "Procedure.performed[x].end",
      "path" : "Procedure.performed[x].end",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.6",
        "comment" : "Strahlentherapie Ende"
      }]
    },
    {
      "id" : "Procedure.performed[x]:performedPeriod",
      "path" : "Procedure.performed[x]",
      "sliceName" : "performedPeriod",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Procedure.performed[x]:performedPeriod.start",
      "path" : "Procedure.performed[x].start",
      "short" : "Start der Strahlentherapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Start der Strahlentherapie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Start der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.5 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Start der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.5 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]:performedPeriod.end",
      "path" : "Procedure.performed[x].end",
      "short" : "Ende der Strahlentherapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ende der Strahlentherapie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ende der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.6 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ende der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.6 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
        "http://hl7.org/fhir/StructureDefinition/Condition"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "max" : "1",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-strahlentherapie-zielgebiet"
      }
    },
    {
      "id" : "Procedure.bodySite.extension:Seitenlokalisation",
      "path" : "Procedure.bodySite.extension",
      "sliceName" : "Seitenlokalisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.bodySite.extension:Seitenlokalisation.value[x].coding",
      "path" : "Procedure.bodySite.extension.value[x].coding",
      "short" : "Zielgebiet Lateralität",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zielgebiet Lateralität"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Lateralität des Zielgebiets der Strahlentherapie gemäß 14.4 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Lateralität des Zielgebiets der Strahlentherapie gemäß 14.4 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Procedure.bodySite.extension:Seitenlokalisation.value[x].coding.code",
      "path" : "Procedure.bodySite.extension.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.4",
        "comment" : "Strahlentherapie Seite Zielgebiet"
      }]
    },
    {
      "id" : "Procedure.bodySite.coding",
      "path" : "Procedure.bodySite.coding",
      "short" : "Zielgebiet",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zielgebiet"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zielgebiet der Strahlentherapie gemäß 14.3 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zielgebiet der Strahlentherapie gemäß 14.3 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Procedure.bodySite.coding.code",
      "path" : "Procedure.bodySite.coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.3",
        "comment" : "Strahlentherapie Zielgebiet"
      }]
    },
    {
      "id" : "Procedure.usedCode",
      "path" : "Procedure.usedCode",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "coding.system"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedCode:Strahlenart",
      "path" : "Procedure.usedCode",
      "sliceName" : "Strahlenart",
      "short" : "Strahlenart",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Strahlenart"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Strahlenart der Bestrahlung gemäß 14.8 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Strahlenart der Bestrahlung gemäß 14.8 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-strahlentherapie-strahlenart"
      }
    },
    {
      "id" : "Procedure.usedCode:Strahlenart.coding.system",
      "path" : "Procedure.usedCode.coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedCode:Strahlenart.coding.code",
      "path" : "Procedure.usedCode.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.8",
        "comment" : "Strahlentherapie Strahlenart"
      }]
    }]
  }
}

```
