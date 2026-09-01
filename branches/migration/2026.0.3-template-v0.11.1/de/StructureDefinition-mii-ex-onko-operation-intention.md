# MII EX Onko Operation Intention - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Onko Operation Intention**

## Extension: MII EX Onko Operation Intention 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention | *Version*:2026.0.3 |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_EX_Onko_Operation_Intention |

Intention der Operation im Rahmen des oBDS

**Context of Use**

Die Extension der Operation war notwendig, da sonst die oBDS-eigenen Codes nicht abgebildet werden können, weil das Binding der von der MII zum gleichen Zweck eingeführten Extension [Durchführungsabsicht](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht) zu stark ist.

**Usage info**

**Usages:**

* Use this Extension: [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md)
* Examples for this Extension: [Bundle/mii-exa-onko-folfox-workflow-bundle](Bundle-mii-exa-onko-folfox-workflow-bundle.md), [Bundle/mii-exa-onko-krk-bundle](Bundle-mii-exa-onko-krk-bundle.md), [Bundle/mii-exa-onko-melanom-bundle](Bundle-mii-exa-onko-melanom-bundle.md), [Bundle/mii-exa-onko-prostata-example-bundle-1](Bundle-mii-exa-onko-prostata-example-bundle-1.md)... Show 14 more, [Procedure/PatientKimMusterperson-Procedure-4](Procedure-PatientKimMusterperson-Procedure-4.md), [Procedure/mii-exa-onko-krk-operation](Procedure-mii-exa-onko-krk-operation.md), [Procedure/mii-exa-onko-melanom-exzision-oberarm](Procedure-mii-exa-onko-melanom-exzision-oberarm.md), [Procedure/mii-exa-onko-melanom-exzision-ruecken](Procedure-mii-exa-onko-melanom-exzision-ruecken.md), [Procedure/mii-exa-onko-operation-1](Procedure-mii-exa-onko-operation-1.md), [Procedure/mii-exa-onko-prostata-operation-prostatektomie](Procedure-mii-exa-onko-prostata-operation-prostatektomie.md), [Procedure/mii-exa-onko-prostata-operation-turp](Procedure-mii-exa-onko-prostata-operation-turp.md), [Procedure/mii-exa-onko-prostata-surgery-1](Procedure-mii-exa-onko-prostata-surgery-1.md), [Procedure/mii-exa-onko-prostata-surgery-2](Procedure-mii-exa-onko-prostata-surgery-2.md), [Procedure/mii-exa-onko-right-hemicolectomy](Procedure-mii-exa-onko-right-hemicolectomy.md), [Procedure/mii-exa-onko-sigmoid-resection-part1](Procedure-mii-exa-onko-sigmoid-resection-part1.md), [Procedure/mii-exa-onko-sigmoid-resection-part2](Procedure-mii-exa-onko-sigmoid-resection-part2.md), [Procedure/mii-exa-onko-sigmoid-resection-part3](Procedure-mii-exa-onko-sigmoid-resection-part3.md) and [Procedure/mii-exa-onko-sigmoid-resection](Procedure-mii-exa-onko-sigmoid-resection.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-ex-onko-operation-intention.json)

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

Simple Extension with the type CodeableConcept: Intention der Operation im Rahmen des oBDS

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept: Intention der Operation im Rahmen des oBDS

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-onko-operation-intention.csv), [Excel](../StructureDefinition-mii-ex-onko-operation-intention.xlsx), [Schematron](../StructureDefinition-mii-ex-onko-operation-intention.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-onko-operation-intention",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention",
  "version" : "2026.0.3",
  "name" : "MII_EX_Onko_Operation_Intention",
  "title" : "MII EX Onko Operation Intention",
  "status" : "active",
  "date" : "2026-09-01T09:38:31+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Intention der Operation im Rahmen des oBDS",
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
    "expression" : "Procedure"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Onko Operation Intention",
      "definition" : "Intention der Operation im Rahmen des oBDS"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-intention"
      }
    },
    {
      "id" : "Extension.value[x].coding.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
    },
    {
      "id" : "Extension.value[x].coding.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].text",
      "path" : "Extension.value[x].text",
      "mustSupport" : true
    }]
  }
}

```
