# MII EX Onkologie TNM c/p Präfix - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Onkologie TNM c/p Präfix**

## Extension: MII EX Onkologie TNM c/p Präfix 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_EX_Onko_TNM_cp_Praefix |

Die Extension verleiht einer TNM T-, N- oder M-Kategorie ein c, p oder u Präfix zur Angabe der Klassifikationsmethode: 'c' = klinische Klassifikation (basierend auf klinischen Angaben), 'p' = pathologische Klassifikation (basierend auf pathohistologischer Untersuchung), 'u' = Ultraschall-basierte Klassifikation.

**Context of Use**

Der c/p/u Präfix wird in der TNM-Klassifikation benutzt, um die Methode der Klassifikation anzugeben:

* **c** (clinical): Klinische Klassifikation, basierend auf klinischen Angaben vor Therapiebeginn
* **p** (pathological): Pathologische Klassifikation, basierend auf pathohistologischer Untersuchung nach operativer Entfernung
* **u** (ultrasound): Klassifikation mittels Ultraschall (z.B. endoskopischer Ultraschall)

In der vorliegenden Profilierung nutzen die Profile der T-, N- und M-Kategorie alle die gleiche Extension.

> Die betroffenen Profile sind in der Artefaktdarstellung beschrieben: [MII PR Onkologie TNM T-Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md), [MII PR Onkologie TNM N-Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md) und [MII PR Onkologie TNM M-Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md).

**Usage info**

**Usages:**

* Use this Extension: [MII PR Onkologie TNM M-Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md), [MII PR Onkologie TNM N-Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md) and [MII PR Onkologie TNM T-Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md)
* Examples for this Extension: [Bundle/mii-exa-onko-cup-bundle](Bundle-mii-exa-onko-cup-bundle.md), [Bundle/mii-exa-onko-folfox-workflow-bundle](Bundle-mii-exa-onko-folfox-workflow-bundle.md), [Bundle/mii-exa-onko-kim-musterperson-synthesized](Bundle-mii-exa-onko-kim-musterperson-synthesized.md), [Bundle/mii-exa-onko-tnm-bundle-legacy](Bundle-mii-exa-onko-tnm-bundle-legacy.md)... Show 46 more, [Bundle/mii-exa-onko-tnm-bundle-synthesized](Bundle-mii-exa-onko-tnm-bundle-synthesized.md), [Bundle/mii-exa-onko-tnm-bundle](Bundle-mii-exa-onko-tnm-bundle.md), [Observation/TNM-M-Observation-2](Observation-TNM-M-Observation-2.md), [Observation/TNM-T-Observation-2](Observation-TNM-T-Observation-2.md), [Observation/mii-exa-onko-ascending-colon-tnm-m](Observation-mii-exa-onko-ascending-colon-tnm-m.md), [Observation/mii-exa-onko-ascending-colon-tnm-n](Observation-mii-exa-onko-ascending-colon-tnm-n.md), [Observation/mii-exa-onko-ascending-colon-tnm-t](Observation-mii-exa-onko-ascending-colon-tnm-t.md), [Observation/mii-exa-onko-colorectal-tnm-m](Observation-mii-exa-onko-colorectal-tnm-m.md), [Observation/mii-exa-onko-colorectal-tnm-n](Observation-mii-exa-onko-colorectal-tnm-n.md), [Observation/mii-exa-onko-colorectal-tnm-t](Observation-mii-exa-onko-colorectal-tnm-t.md), [Observation/mii-exa-onko-cup-tnm-m-cM1](Observation-mii-exa-onko-cup-tnm-m-cM1.md), [Observation/mii-exa-onko-cup-tnm-n-cNX](Observation-mii-exa-onko-cup-tnm-n-cNX.md), [Observation/mii-exa-onko-cup-tnm-t-cTX](Observation-mii-exa-onko-cup-tnm-t-cTX.md), [Observation/mii-exa-onko-kim-klass1-cM1](Observation-mii-exa-onko-kim-klass1-cM1.md), [Observation/mii-exa-onko-kim-klass1-cN1](Observation-mii-exa-onko-kim-klass1-cN1.md), [Observation/mii-exa-onko-kim-klass1-cT3c](Observation-mii-exa-onko-kim-klass1-cT3c.md), [Observation/mii-exa-onko-kim-klass2-ycM1b](Observation-mii-exa-onko-kim-klass2-ycM1b.md), [Observation/mii-exa-onko-kim-klass2-ycN1](Observation-mii-exa-onko-kim-klass2-ycN1.md), [Observation/mii-exa-onko-kim-klass2-ycT3c](Observation-mii-exa-onko-kim-klass2-ycT3c.md), [Observation/mii-exa-onko-kim-klass3-ypM1b](Observation-mii-exa-onko-kim-klass3-ypM1b.md), [Observation/mii-exa-onko-kim-klass3-ypT3c](Observation-mii-exa-onko-kim-klass3-ypT3c.md), [Observation/mii-exa-onko-tnm-bundle-legacy-m-cM0](Observation-mii-exa-onko-tnm-bundle-legacy-m-cM0.md), [Observation/mii-exa-onko-tnm-bundle-legacy-n-cN3](Observation-mii-exa-onko-tnm-bundle-legacy-n-cN3.md), [Observation/mii-exa-onko-tnm-bundle-legacy-t-cT2](Observation-mii-exa-onko-tnm-bundle-legacy-t-cT2.md), [Observation/mii-exa-onko-tnm-bundle-m-kategorie-cM0](Observation-mii-exa-onko-tnm-bundle-m-kategorie-cM0.md), [Observation/mii-exa-onko-tnm-bundle-n-kategorie-cN3](Observation-mii-exa-onko-tnm-bundle-n-kategorie-cN3.md), [Observation/mii-exa-onko-tnm-bundle-t-kategorie-cT2](Observation-mii-exa-onko-tnm-bundle-t-kategorie-cT2.md), [Observation/mii-exa-onko-tnm-m-kategorie-M0](Observation-mii-exa-onko-tnm-m-kategorie-M0.md), [Observation/mii-exa-onko-tnm-m-kategorie-cM0](Observation-mii-exa-onko-tnm-m-kategorie-cM0.md), [Observation/mii-exa-onko-tnm-m-kategorie-cM1](Observation-mii-exa-onko-tnm-m-kategorie-cM1.md), [Observation/mii-exa-onko-tnm-m-kategorie-rcM1](Observation-mii-exa-onko-tnm-m-kategorie-rcM1.md), [Observation/mii-exa-onko-tnm-n-kategorie-N0](Observation-mii-exa-onko-tnm-n-kategorie-N0.md), [Observation/mii-exa-onko-tnm-n-kategorie-cN1](Observation-mii-exa-onko-tnm-n-kategorie-cN1.md), [Observation/mii-exa-onko-tnm-n-kategorie-pN0i-sn](Observation-mii-exa-onko-tnm-n-kategorie-pN0i-sn.md), [Observation/mii-exa-onko-tnm-n-kategorie-rcN1](Observation-mii-exa-onko-tnm-n-kategorie-rcN1.md), [Observation/mii-exa-onko-tnm-n-kategorie-ycN0](Observation-mii-exa-onko-tnm-n-kategorie-ycN0.md), [Observation/mii-exa-onko-tnm-n-kategorie-ypN0](Observation-mii-exa-onko-tnm-n-kategorie-ypN0.md), [Observation/mii-exa-onko-tnm-synth-meldung1-m-cM0](Observation-mii-exa-onko-tnm-synth-meldung1-m-cM0.md), [Observation/mii-exa-onko-tnm-synth-meldung1-n-cN2](Observation-mii-exa-onko-tnm-synth-meldung1-n-cN2.md), [Observation/mii-exa-onko-tnm-synth-meldung1-t-cT3](Observation-mii-exa-onko-tnm-synth-meldung1-t-cT3.md), [Observation/mii-exa-onko-tnm-synth-meldung2-n-pN1](Observation-mii-exa-onko-tnm-synth-meldung2-n-pN1.md), [Observation/mii-exa-onko-tnm-synth-meldung2-t-pT2](Observation-mii-exa-onko-tnm-synth-meldung2-t-pT2.md), [Observation/mii-exa-onko-tnm-t-kategorie-Tis](Observation-mii-exa-onko-tnm-t-kategorie-Tis.md), [Observation/mii-exa-onko-tnm-t-kategorie-cT3](Observation-mii-exa-onko-tnm-t-kategorie-cT3.md), [Observation/mii-exa-onko-tnm-t-kategorie-cT4](Observation-mii-exa-onko-tnm-t-kategorie-cT4.md) and [Observation/mii-exa-onko-tnm-t-kategorie-rcT2](Observation-mii-exa-onko-tnm-t-kategorie-rcT2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-ex-onko-tnm-cp-praefix.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept: Die Extension verleiht einer TNM T-, N- oder M-Kategorie ein c, p oder u Präfix zur Angabe der Klassifikationsmethode: 'c' = klinische Klassifikation (basierend auf klinischen Angaben), 'p' = pathologische Klassifikation (basierend auf pathohistologischer Untersuchung), 'u' = Ultraschall-basierte Klassifikation.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept: Die Extension verleiht einer TNM T-, N- oder M-Kategorie ein c, p oder u Präfix zur Angabe der Klassifikationsmethode: 'c' = klinische Klassifikation (basierend auf klinischen Angaben), 'p' = pathologische Klassifikation (basierend auf pathohistologischer Untersuchung), 'u' = Ultraschall-basierte Klassifikation.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-onko-tnm-cp-praefix.csv), [Excel](../StructureDefinition-mii-ex-onko-tnm-cp-praefix.xlsx), [Schematron](../StructureDefinition-mii-ex-onko-tnm-cp-praefix.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-onko-tnm-cp-praefix",
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
    "valueMarkdown" : "Use this extension to exchange data for content of the corresponding Medical Informatics Initiative logical model that is not represented in the FHIR core resource structure."
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
  "version" : "2026.0.3",
  "name" : "MII_EX_Onko_TNM_cp_Praefix",
  "title" : "MII EX Onkologie TNM c/p Präfix",
  "status" : "active",
  "date" : "2026-08-28T18:25:22+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Die Extension verleiht einer TNM T-, N- oder M-Kategorie ein c, p oder u Präfix zur Angabe der Klassifikationsmethode: 'c' = klinische Klassifikation (basierend auf klinischen Angaben), 'p' = pathologische Klassifikation (basierend auf pathohistologischer Untersuchung), 'u' = Ultraschall-basierte Klassifikation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "CodeableConcept"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Onkologie TNM c/p Präfix",
      "definition" : "Die Extension verleiht einer TNM T-, N- oder M-Kategorie ein c, p oder u Präfix zur Angabe der Klassifikationsmethode: 'c' = klinische Klassifikation (basierend auf klinischen Angaben), 'p' = pathologische Klassifikation (basierend auf pathohistologischer Untersuchung), 'u' = Ultraschall-basierte Klassifikation."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-cp-praefix"
      }
    },
    {
      "id" : "Extension.value[x].coding.system",
      "path" : "Extension.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding.code",
      "path" : "Extension.value[x].coding.code",
      "mustSupport" : true
    }]
  }
}

```
