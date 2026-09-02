# MII PR Onkologie Allgemeiner Leistungszustand nach Karnofsky - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Allgemeiner Leistungszustand nach Karnofsky**

## Ressourcenprofil: MII PR Onkologie Allgemeiner Leistungszustand nach Karnofsky 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky | *Version*:2026.0.3 |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky |

 
OBDS Beschreibung des allgemeines Leistungszustandes nach Karnofsky 

### Kontext

Dieses Profil beschreibt den allgemeinen Leistungszustand eines Patienten in der Onkologie nach Karnofsky.

Die Erfassung des allgemeine Leistungszustand wird im oBDS vorgeschrieben. Dabei wird die eigentliche Meldung als ECOG kodiert und übertragen, wobei die Antwortmöglichkeiten ein Mapping vom Karnofsky-Score ermöglichen.

Im bisherigen oBDS und in den vorliegenden FHIR-Profilen ist sowohl eine Dokumentation des ECOG mit den Antwortmöglichkeiten 0-4 als auch des Karnofsky-Scores mit 10%, 20% etc. gestattet. Der aktuelle Umsetzungsleitfaden enthält jedoch einen Hinweis, dass in Zukunft ausschließlich der ECOG gemeldet werden soll. https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532323/Allgemeiner+Leistungszustand+Typ

Für den Fall, dass in den Befunden nur Bezug auf den Allgemeinzustand genommen wird, ohne dabei in ECOG oder Karnofsky zu kodieren, empfiehlt der Dokumentationsleitfaden der Plattform §65c die Entwicklung hausinterner Richtlinien zur besseren Reproduzierbarkeit. https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/86310992/Allgemeiner+Leistungszustand

### Karnofsky-ECOG Mapping: oBDS vs. klinische Literatur

**Wichtiger Hinweis**: Es existieren unterschiedliche Karnofsky-ECOG-Konversionstabellen in der Literatur:

**oBDS 12.1 Spezifikation** (in diesem Profil verwendet):

* Karnofsky 90-100% = ECOG 0
* Karnofsky 70-80% = ECOG 1
* Karnofsky 50-60% = ECOG 2
* Karnofsky 30-40% = ECOG 3
* Karnofsky 10-20% = ECOG 4
* Karnofsky 0% = ECOG 5

**Klinische Literatur** (Buccheri et al., 1996; Ma et al., 2010):

* Karnofsky 100% = ECOG 0
* Karnofsky 80-90% = ECOG 1
* Karnofsky 70% = ECOG 2
* Karnofsky 50-60% = ECOG 3
* Karnofsky 10-40% = ECOG 4

Die oBDS-Mappings sind gegenüber der klinischen Literatur um ca. 10-20% nach unten verschoben. Da diese Profile den oBDS implementieren, verwenden alle Referenzbereiche und ObservationDefinitions die oBDS-Spezifikation.

Implementierer sollten sich dieser Unterschiede bewusst sein, insbesondere bei der Konversion zwischen Karnofsky und ECOG oder beim Austausch mit internationalen Systemen, die möglicherweise andere Konversionstabellen verwenden.

### LOINC-Unterstützung für internationale Interoperabilität

Das Profil unterstützt optionale LOINC-Kodierung zusätzlich zur verpflichtenden oBDS-Kodierung:

* **`code.coding`**: Neben dem verpflichtenden SNOMED CT Code (761869008) kann optional der LOINC Code 89243-0 angegeben werden
* **`valueCodeableConcept.coding`**: Neben der verpflichtenden oBDS-Kodierung können optional LOINC Answer List Codes angegeben werden

Zur Übersetzung zwischen oBDS- und LOINC-Codes steht folgende ConceptMap zur Verfügung:

* [mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc](ConceptMap-mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc.md)

-------

**Beispiele**

[mii-exa-onko-allgemeiner-leistungszustand-karnofsky](Observation-mii-exa-onko-allgemeiner-leistungszustand-karnofsky.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-allgemeiner-leistungszustand-karnofsky](Observation-mii-exa-onko-allgemeiner-leistungszustand-karnofsky.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 10 elements(4 nested mandatory elements)
 Must-Support: 15 elements
 Fixed: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.code.coding
* The element 1 is sliced based on the value of Observation.value[x].coding

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 10 elements(4 nested mandatory elements)
 Must-Support: 15 elements
 Fixed: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.code.coding
* The element 1 is sliced based on the value of Observation.value[x].coding

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.csv), [Excel](../StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-allgemeiner-leistungszustand-karnofsky",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky",
  "title" : "MII PR Onkologie Allgemeiner Leistungszustand nach Karnofsky",
  "status" : "active",
  "date" : "2026-09-02T03:26:39+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "OBDS Beschreibung des allgemeines Leistungszustandes nach Karnofsky",
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
        "map" : "12",
        "comment" : "Allgemeiner Leistungszustand"
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
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
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
      "id" : "Observation.code.coding:snomed",
      "path" : "Observation.code.coding",
      "sliceName" : "snomed",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "761869008"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding:snomed.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding:snomed.code",
      "path" : "Observation.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding:loinc",
      "path" : "Observation.code.coding",
      "sliceName" : "loinc",
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "89243-0"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding:loinc.system",
      "path" : "Observation.code.coding.system",
      "min" : 1
    },
    {
      "id" : "Observation.code.coding:loinc.code",
      "path" : "Observation.code.coding.code",
      "min" : 1
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding",
      "path" : "Observation.value[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "Leistungszustand nach Karnofsky",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Leistungszustand nach Karnofsky"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Leistungszustand nach Karnofsky 0-100% gemäß 12.1 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Leistungszustand nach Karnofsky 0-100% gemäß 12.1 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding.code",
      "path" : "Observation.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "12.1",
        "comment" : "Allgemeiner Leistungszustand"
      }]
    },
    {
      "id" : "Observation.value[x].coding:obds",
      "path" : "Observation.value[x].coding",
      "sliceName" : "obds",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky"
      }
    },
    {
      "id" : "Observation.value[x].coding:obds.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-karnofsky"
    },
    {
      "id" : "Observation.value[x].coding:obds.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding:loinc",
      "path" : "Observation.value[x].coding",
      "sliceName" : "loinc",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky-loinc"
      }
    },
    {
      "id" : "Observation.value[x].coding:loinc.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.value[x].coding:loinc.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1
    }]
  }
}

```
