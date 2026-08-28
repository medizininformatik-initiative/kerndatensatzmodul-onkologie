# MII PR Onkologie Evidenz Diagnose Primärtumor - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Evidenz Diagnose Primärtumor**

## Ressourcenprofil: MII PR Onkologie Evidenz Diagnose Primärtumor 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_PR_Onko_Liste_Evidenz_Erstdiagnose |

 
Dieses Profil beschreibt eine Liste, die alle Observationen und Berichte enthält, die für eine Erstdiagnostik relevant waren. (synchrone Observationen im Sinne der Krebsregister) 

Die List-Ressource ist eine flache Sammlung von Ressourcen und bietet Funktionen für die Verwaltung der Sammlung. In diesem Fall dient die Ressource als Sammlung der Observationen und Befundberichte, die zum Zeitpunkt der onkologischen Erstdiagnose bekannt sind. Dazu gehören beispielsweise eine TNM-Klassifikation sowie weitere diagnostisch relevante Klassifikationen, Fernmetastasen, Histologien etc.

Die Evidenz-Liste selbst ist nicht Teil des oBDS, sondern soll den Stand zum Zeitpunkt der Erstdiagnose dauerhaft festhalten.

* Die Liste **SOLLTE** auf Basis der Inhalte erstellt werden, die vor bzw. zum Zeitpunkt der Erstdiagnosestellung bekannt waren.
* Dazu **KÖNNEN** die Einträge direkt aus der Diagnosemeldung übernommen werden.

-------

**Beispiele**

[mii-exa-onko-liste-evidenz-erstdiagnose-1](List-mii-exa-onko-liste-evidenz-erstdiagnose-1.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* Examples for this Profile: [List/mii-exa-onko-liste-evidenz-erstdiagnose-1](List-mii-exa-onko-liste-evidenz-erstdiagnose-1.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [List](http://hl7.org/fhir/R4/list.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [List](http://hl7.org/fhir/R4/list.html) 

** Summary **

Mandatory: 3 elements
 Must-Support: 9 elements

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [List](http://hl7.org/fhir/R4/list.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [List](http://hl7.org/fhir/R4/list.html) 

** Summary **

Mandatory: 3 elements
 Must-Support: 9 elements

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose.csv), [Excel](../StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-liste-evidenz-erstdiagnose",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Liste_Evidenz_Erstdiagnose",
  "title" : "MII PR Onkologie Evidenz Diagnose Primärtumor",
  "status" : "active",
  "date" : "2026-08-28T14:33:40+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt eine Liste, die alle Observationen und Berichte enthält, die für eine Erstdiagnostik relevant waren.  (synchrone Observationen im Sinne der Krebsregister)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/List",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "List",
      "path" : "List"
    },
    {
      "id" : "List.meta.profile",
      "path" : "List.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "List.status",
      "path" : "List.status",
      "patternCode" : "current",
      "mustSupport" : true
    },
    {
      "id" : "List.mode",
      "path" : "List.mode",
      "patternCode" : "snapshot",
      "mustSupport" : true
    },
    {
      "id" : "List.title",
      "path" : "List.title",
      "min" : 1,
      "patternString" : "Liste der Evidenz zum Erstdiagnosezeitpunkt",
      "mustSupport" : true
    },
    {
      "id" : "List.subject",
      "path" : "List.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "List.encounter",
      "path" : "List.encounter",
      "mustSupport" : true
    },
    {
      "id" : "List.entry",
      "path" : "List.entry",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "List.entry.flag",
      "path" : "List.entry.flag",
      "mustSupport" : true
    },
    {
      "id" : "List.entry.item",
      "path" : "List.entry.item",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }],
      "mustSupport" : true
    }]
  }
}

```
