# MII PR Onko Prostata Operation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onko Prostata Operation**

## Resource Profile: MII PR Onko Prostata Operation 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostata-operation | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_PR_Onko_Prostata_Operation |

 
Prostata-spezifische Operation. Dieses Profil spezialisiert die allgemeine onkologische Operation für Prostata-spezifische Eingriffe mit einem required Binding zu einem ValueSet basierend auf SNOMED CT 118877007 und dessen Kindern. 

**Usages:**

* Examples for this Profile: [Procedure/mii-exa-onko-prostata-operation-prostatektomie](Procedure-mii-exa-onko-prostata-operation-prostatektomie.md) and [Procedure/mii-exa-onko-prostata-operation-turp](Procedure-mii-exa-onko-prostata-operation-turp.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-prostata-operation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-prostata-operation.csv), [Excel](../StructureDefinition-mii-pr-onko-prostata-operation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-prostata-operation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-prostata-operation",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostata-operation",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Prostata_Operation",
  "title" : "MII PR Onko Prostata Operation",
  "status" : "active",
  "date" : "2026-08-28T08:03:44+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Prostata-spezifische Operation. Dieses Profil spezialisiert die allgemeine onkologische Operation für Prostata-spezifische Eingriffe mit einem required Binding zu einem ValueSet basierend auf SNOMED CT 118877007 und dessen Kindern.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "oBDS-Organ",
    "name" : "Mapping FHIR zu oBDS (organspezifisches Zusatzmodul)"
  },
  {
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
      "path" : "Procedure",
      "mapping" : [{
        "identity" : "oBDS-Organ",
        "map" : "kein oBDS-Modulfeld",
        "comment" : "Operative Therapie über oBDS Kapitel 13 (OP) und OPS; P9 (Postoperative Komplikation) wird im Kontext dieser Operation erhoben"
      }]
    },
    {
      "id" : "Procedure.code.coding:sct",
      "path" : "Procedure.code.coding",
      "sliceName" : "sct",
      "short" : "SNOMED CT Code für Prostata-Operation",
      "definition" : "SNOMED CT Code für die spezifische Prostata-Operation. Erforderlich sind Codes aus der Hierarchie 118877007 |Procedure on prostate (procedure)|",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-operation-snomedct"
      }
    }]
  }
}

```
