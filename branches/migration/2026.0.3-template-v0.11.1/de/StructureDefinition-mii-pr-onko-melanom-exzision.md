# MII PR Onko Melanom Exzision - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onko Melanom Exzision**

## Ressourcenprofil: MII PR Onko Melanom Exzision 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-exzision | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_PR_Onko_Melanom_Exzision |

 
Melanom-spezifische Exzision. Dieses Profil spezialisiert die allgemeine onkologische Operation für Melanom-Exzisionen mit einem präferierten ValueSet basierend auf SNOMED CT Codes für Hautexzisionen. 

**Usages:**

* Examples for this Profile: [Procedure/mii-exa-onko-melanom-exzision-oberarm](Procedure-mii-exa-onko-melanom-exzision-oberarm.md) and [Procedure/mii-exa-onko-melanom-exzision-ruecken](Procedure-mii-exa-onko-melanom-exzision-ruecken.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-melanom-exzision.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Operation](StructureDefinition-mii-pr-onko-operation.md) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Operation](StructureDefinition-mii-pr-onko-operation.md) 

** Summary **

Mandatory: 1 element

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Onko_Operation](StructureDefinition-mii-pr-onko-operation.md) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Operation](StructureDefinition-mii-pr-onko-operation.md) 

** Summary **

Mandatory: 1 element

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-melanom-exzision.csv), [Excel](../StructureDefinition-mii-pr-onko-melanom-exzision.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-melanom-exzision.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-melanom-exzision",
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-exzision",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Melanom_Exzision",
  "title" : "MII PR Onko Melanom Exzision",
  "status" : "active",
  "date" : "2026-08-27T11:29:36+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Melanom-spezifische Exzision. Dieses Profil spezialisiert die allgemeine onkologische Operation für Melanom-Exzisionen mit einem präferierten ValueSet basierend auf SNOMED CT Codes für Hautexzisionen.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.code.coding:sct",
      "path" : "Procedure.code.coding",
      "sliceName" : "sct",
      "short" : "SNOMED CT Code für Melanom-Exzision",
      "definition" : "SNOMED CT Code für die spezifische Melanom-Exzision. Bevorzugt werden Codes für Hautexzisionen und Melanom-spezifische Eingriffe.",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-melanom-exzision-snomedct"
      }
    }]
  }
}

```
