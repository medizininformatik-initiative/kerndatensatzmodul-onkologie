# MII PR Onkologie Weitere Klassifikationen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Weitere Klassifikationen**

## Ressourcenprofil: MII PR Onkologie Weitere Klassifikationen 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen | *Version*:2026.0.3 |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_PR_Onko_Weitere_Klassifikationen |

 
Weitere Tumor Staging Klassifikation neben TMN (Hämatoonkologische und sonstige Klassifikationen) 

Dieses Profil beschreibt weitere Tumorklassifikationen neben TNM.

### Abgrenzung: Staging, Grading und Risikobewertung

Die "Weiteren Klassifikationen" umfassen verschiedene Arten von Bewertungssystemen:

* **Staging-Systeme**: Bestimmen die anatomische Ausbreitung des Tumors (z.B. FIGO, Ann Arbor, AJCC)
* **Grading-Systeme**: Bewerten die histologische Differenzierung und biologische Aggressivität
* **Risikobewertungssysteme**: Prognostische Scores basierend auf multiplen klinischen Parametern (z.B. IPI, FLIPI, IPSS)
* **Molekulare Klassifikationen**: Basieren auf genetischen/molekularen Markern (z.B. p16-Status, ELN-Klassifikation)

### Staging-Systeme (Anatomische Ausbreitung)

* **FIGO-Klassifikation** bei gynäkologischen Tumoren
* **AJCC-Klassifikationen** verschiedener Editionen (6., 7., 8. Edition)
* **Ann Arbor-Klassifikation** für Lymphome (Hodgkin und Non-Hodgkin)
* **Durie-Salmon Staging** für Multiples Myelom
* **Bismuth-Klassifikation** für Hiläres Cholangiokarzinom

### Grading- und Bewertungssysteme

* **Breslow/Clark-System** für Melanome (Tumordicke und Invasionstiefe)
* **GIST-Mitoserate** (Gastrointestinale Stromatumoren)
* **p16-Status** (Molekularer Marker, besonders bei HPV-assoziierten Karzinomen)

### Prognostische Risiko-Scores

* **Lymphome**: 
* IPI (International Prognostic Index) für aggressive Non-Hodgkin-Lymphome
* FLIPI für Follikuläre Lymphome
* MIPI für Mantelzell-Lymphome
* GHSG-Risikoklassifikation für Hodgkin-Lymphome
 
* **Leukämien**: 
* European LeukemiaNet Classification (AML)
* EUTOS Score (Chronische myeloische Leukämie)
* Sanz Score (Akute Promyelozytenleukämie)
 
* **Myelodysplastisches Syndrom**: IPSS (International Prognostic Scoring System)
* **Multiple Myelom**: ISS/R-ISS (International Staging System)
* **Waldenström Makroglobulinämie**: ISSWM

Die Plattform §65c stellt einen Katalog bereit, wie die häufigsten Klassifikationen aus Harmonisierungsgründen **für die Krebsregistermeldung** zu kodieren sind: https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532511/Weitere+Klassifikationen

### Implementierungshinweise

#### FHIR Modellierung nach mCODE STU4 Pattern

Dieses Profil folgt dem **mCODE STU4 Build Pattern** für Staging-Systeme mit einer dreiteiligen Struktur:

* **`Observation.code`**: Allgemeines Staging-Konzept (z.B. "FIGO Stage", "Ann Arbor Stage", "BINET Stage")
* **`Observation.method`**: Spezifisches Klassifikationssystem/Bewertungsmethode (Must Support)
* **`Observation.value`**: Konkreter Klassifikationswert aus entsprechendem ValueSet

**Beispiel FIGO-Klassifikation:**

```
code: 385361009 "FIGO Stage" (allgemeines Konzept)
method: "FIGO staging of cervical carcinoma" (spezifische Methode)
value: "Stage IIA" (konkreter Wert)

```

**Beispiel Hämatologische Klassifikation:**

```
code: "BINET staging system" (allgemeines Konzept) 
method: "BINET staging for chronic lymphocytic leukemia" (spezifische Methode)
value: "BINET A" (konkreter Wert)

```

Diese Struktur ermöglicht es, verschiedene Staging-Systeme innerhalb derselben Tumorentität zu unterscheiden und klar zu identifizieren, welches spezifische Bewertungsverfahren verwendet wurde.

#### Terminologie-Integration

Aufgrund der Vielzahl der möglichen Skalen und Scores ist es nicht möglich, hier einen umfassenden und allgemeingültigen Katalog zu hinterlegen, so dass die konkrete Ausgestaltung den Herstellern und Systemen überlassen bleibt. HL7 Deutschland stellt dazu unter folgendem Link Hinweise bereit: https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Observation-Skalen-und-Scores.html

**Wichtiger Hinweis**: Für oBDS-spezifische Klassifikationen sollte zunächst geprüft werden, ob entsprechende SNOMED CT oder LOINC Codes verfügbar sind, bevor eigene oBDS-Codes verwendet werden.

**Priorisierung bei Terminologie-Auswahl:**

1. **SNOMED CT**für etablierte Klassifikationssysteme (bevorzugt)
1. **LOINC**für laborbasierte und quantitative Bewertungen
1. **NCI Thesaurus**für spezielle onkologische Konzepte
1. **oBDS-spezifische Codes**nur wenn keine internationalen Standards verfügbar sind

### Abgrenzung zu organspezifischen Modulen

Folgende Klassifikationen werden in Zukunft über die organspezifischen Module abgedeckt und sollen nicht mehr über weitere Klassifikationen kodiert werden:

* **Gleason-Score** (Prostata-Modul)
* **Weitere organspezifische Scores** werden sukzessive in die entsprechenden Module überführt

### Terminologie-Binding

Das Profil verwendet **preferred binding** für das ValueSet `MII_VS_Onko_Weitere_Klassifikationen`, wodurch sowohl internationale Terminologien (SNOMED CT, NCI Thesaurus) als auch oBDS-spezifische Codes unterstützt werden.

#### Verfügbare Klassifikationssysteme

> Die Expansion der verfügbaren Klassifikationssysteme ist auf der Seite des ValueSets [mii-vs-onko-weitere-klassifikationen](ValueSet-mii-vs-onko-weitere-klassifikationen.md) dargestellt.

-------

**Beispiele**

[mii-exa-onko-weitere-klassifikationen-1](Observation-mii-exa-onko-weitere-klassifikationen-1.md)

[mii-exa-onko-weitere-klassifikationen-2](Observation-mii-exa-onko-weitere-klassifikationen-2.md)

[mii-exa-onko-weitere-klassifikationen-3](Observation-mii-exa-onko-weitere-klassifikationen-3.md)

[mii-exa-onko-weitere-klassifikationen-4](Observation-mii-exa-onko-weitere-klassifikationen-4.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-weitere-klassifikationen-1](Observation-mii-exa-onko-weitere-klassifikationen-1.md), [Observation/mii-exa-onko-weitere-klassifikationen-2](Observation-mii-exa-onko-weitere-klassifikationen-2.md), [Observation/mii-exa-onko-weitere-klassifikationen-3](Observation-mii-exa-onko-weitere-klassifikationen-3.md) and [Observation/mii-exa-onko-weitere-klassifikationen-4](Observation-mii-exa-onko-weitere-klassifikationen-4.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-weitere-klassifikationen.json)

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

Mandatory: 2 elements
 Must-Support: 11 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.value[x]

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

Mandatory: 2 elements
 Must-Support: 11 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.value[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-weitere-klassifikationen.csv), [Excel](../StructureDefinition-mii-pr-onko-weitere-klassifikationen.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-weitere-klassifikationen.sch) 



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
  "date" : "2026-09-01T08:53:35+00:00",
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
