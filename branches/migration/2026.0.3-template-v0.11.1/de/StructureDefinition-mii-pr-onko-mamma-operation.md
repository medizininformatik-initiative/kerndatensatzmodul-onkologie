# MII PR Onkologie Mamma Operation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Mamma Operation**

## Ressourcenprofil: MII PR Onkologie Mamma Operation 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-operation | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_PR_Onko_Mamma_Operation |

 
Das vorliegende Profil beschreibt operative Eingriffe an der Brust im Rahmen der Mammakarzinom-Behandlung. Es erweitert das allgemeine Operationsprofil um Mamma-spezifische Aspekte und ermöglicht die detaillierte Erfassung von brustchirurgischen Verfahren. 

### Inhalt

Das **Mamma-Operation Profil** dokumentiert operative Eingriffe an der Brust im Rahmen der Mammakarzinom-Behandlung. Dieses Profil erweitert das allgemeine MII_PR_Onko_Operation Profil um Mamma-spezifische Aspekte und ermöglicht die detaillierte Erfassung von brustchirurgischen Verfahren.

Das Profil unterstützt sowohl brusterhaltende Therapien als auch Mastektomien sowie begleitende Verfahren wie Lymphknotenentfernungen und den Einsatz intraoperativer Hilfsmittel.

**Kommentierungshinweis**: Zu diskutieren ist, ob präoperative Markierung als separate Extraressource (wie derzeit implementiert) oder einfach als usedCode mit präoperativ- und intraoperativ-Slices modelliert werden sollte.

-------

### Verknüpfungen zu anderen Ressourcen

Das Profil ist eng mit anderen onkologischen Ressourcen verknüpft:

* verweist über `Procedure.reasonReference` auf die Primärdiagnose (MII_PR_Onko_Diagnose_Primaertumor)
* verweist über `Procedure.subject` auf die Patientin (Patient-Ressource)
* kann über `Procedure.partOf` mit übergeordneten Operationen verknüpft werden
* kann über `Procedure.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

-------

### oBDS-Kontext

Das Profil implementiert **Mamma-spezifische Operationsdaten** als Erweiterung des allgemeinen oBDS-Operationsdatensatzes (Sektion 13). Die Mamma-Chirurgie umfasst verschiedene Verfahren:

**Operative Verfahren:**

* **Brusterhaltende Therapie (BET)**: Lumpektomie, Segmentresektion, Quadrantektomie
* **Mastektomie**: Einfache, modifiziert radikale, radikale Mastektomie
* **Lymphknotenchirugie**: Sentinel-Lymphknoten-Biopsie, Axilladissektion
* **Rekonstruktive Verfahren**: Sofortrekonstruktion, sekundäre Rekonstruktion

**Intraoperative Hilfsmittel:**

* **Drahtmarkierungen**: Präoperative Lokalisation nicht-palpabler Tumoren
* **Seed-Markierungen**: Radioaktive Markierung zur Tumorlokalisation
* **Markierungsclips**: Orientierungshilfen für die Nachsorge
* **Intraoperatives Imaging**: Specimen-Radiographie, Ultraschall

### Terminologie-Binding

Das Profil verwendet **duale Kodierungsstrategie** mit SNOMED CT und OPS:

#### ValueSet: MII VS Onko Mamma Operation SNOMED CT

> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Operation SNOMED CT](ValueSet-mii-vs-onko-mamma-operation-sct.md).

> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Operation SNOMED CT](ValueSet-mii-vs-onko-mamma-operation-sct.md).

#### ValueSet: MII VS Onko Mamma Operation OPS

> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Operation OPS](ValueSet-mii-vs-onko-mamma-operation-ops.md).

> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie Mamma Operation OPS](ValueSet-mii-vs-onko-mamma-operation-ops.md).

-------

Mapping Datensatz zu FHIR

> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Mamma Operation](StructureDefinition-mii-pr-onko-mamma-operation.md).

**Beispiele**

`mii-exa-onko-mamma-operation-1` 

**Usages:**

* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)
* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-mamma-operation.json)

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

Must-Support: 4 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Operation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)](StructureDefinition-mii-pr-onko-operation.md)
* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.usedCode

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

Must-Support: 4 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Operation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)](StructureDefinition-mii-pr-onko-operation.md)
* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.usedCode

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-mamma-operation.csv), [Excel](../StructureDefinition-mii-pr-onko-mamma-operation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-mamma-operation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-mamma-operation",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-operation",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Mamma_Operation",
  "title" : "MII PR Onkologie Mamma Operation",
  "status" : "active",
  "date" : "2026-08-28T06:12:02+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Das vorliegende Profil beschreibt operative Eingriffe an der Brust im Rahmen der Mammakarzinom-Behandlung. Es erweitert das allgemeine Operationsprofil um Mamma-spezifische Aspekte und ermöglicht die detaillierte Erfassung von brustchirurgischen Verfahren.",
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
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"]
      }]
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "Operation der Brust",
      "definition" : "Operation der Brust, z.B. Exzision eines Tumors, Entfernung eines Lymphknotens"
    },
    {
      "id" : "Procedure.code.coding:ops",
      "path" : "Procedure.code.coding",
      "sliceName" : "ops",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-operation-ops"
      }
    },
    {
      "id" : "Procedure.code.coding:sct",
      "path" : "Procedure.code.coding",
      "sliceName" : "sct",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-operation-sct"
      }
    },
    {
      "id" : "Procedure.performed[x]:performedDateTime",
      "path" : "Procedure.performed[x]",
      "sliceName" : "performedDateTime",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }]
    },
    {
      "id" : "Procedure.usedCode",
      "path" : "Procedure.usedCode",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedCode:IntraoperativesImaging",
      "path" : "Procedure.usedCode",
      "sliceName" : "IntraoperativesImaging",
      "short" : "Intraoperatives Präparateröntgen/Sonografie",
      "definition" : "Bildgebende Verfahren zur intraoperativen Beurteilung des Resektats (Mammografie, Sonografie, etc.)",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedCode:IntraoperativesImaging.coding",
      "path" : "Procedure.usedCode.coding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-intraoperatives-imaging-praeparat"
      }
    },
    {
      "id" : "Procedure.usedCode:PraeoperativeMarkierung",
      "path" : "Procedure.usedCode",
      "sliceName" : "PraeoperativeMarkierung",
      "short" : "Präoperative Markierung",
      "definition" : "Modalität der präoperativen Markierung (Drahtmarkierung, Markierungsclips, Seed-Markierung)",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedCode:PraeoperativeMarkierung.coding",
      "path" : "Procedure.usedCode.coding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-praeoperative-markierung-modalitaet"
      }
    }]
  }
}

```
