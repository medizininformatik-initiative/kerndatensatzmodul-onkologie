# MII PR Onkologie Präoperative Drahtmarkierung Mamma - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Ressourcenprofil: MII PR Onkologie Präoperative Drahtmarkierung Mamma 

 
Das vorliegende Profil beschreibt eine radiologisch durchgeführte Markierung von Tumorgewebe mittels der Brust. Dabei können verschiedene Methoden gewählt werden. Die 

### Inhalt

Dieses Profil beschreibt operative Eingriffe beim Kolorektalen Karzinom gemäß verschiedenen oBDS-Kriterien. Es umfasst sowohl die Art des operativen Eingriffs als auch spezifische kolorektale Operationstypen und deren Qualitätsmerkmale wie die TME-Qualität (Totale mesorektale Exzision).

Das Profil basiert auf einer FHIR Procedure-Ressource und verwendet mehrere spezialisierte ValueSets zur Kodierung der verschiedenen operativen Aspekte beim kolorektalen Karzinom.

-------

### Verknüpfungen zu anderen Ressourcen

Die KRK-Operation ist ein zentraler therapeutischer Eingriff:

* verweist über `Procedure.subject` auf den Patienten (Patient-Ressource)
* kann über `Procedure.encounter` mit einem spezifischen Behandlungsfall verknüpft werden
* steht in Bezug zur Primärdiagnose über `Procedure.reasonReference`
* kann mit Specimen-Ressourcen für die pathologische Aufarbeitung verknüpft werden

-------

### oBDS-Kontext

Die KRK-Operation umfasst mehrere oBDS-Datenfelder:

* Operationstyp nach verschiedenen Klassifikationssystemen
* TME-Qualität bei Rektumkarzinomen (KR4)
* Weitere operationsspezifische Parameter je nach Eingriff

### Terminologie-Binding

Das Profil verwendet mehrere ValueSets für die verschiedenen Aspekte der KRK-Operation:

#### ValueSet: MII VS Onko KRK Operationstyp

#### ValueSet: MII VS Onko KRK TME Qualität

-------

Mapping Datensatz zu FHIR

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

-------

**Suchparameter**

Folgende Suchparameter sind für das KRK-Operation Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-operation`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?code=http://snomed.info/sct|387713003`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?subject=Patient/test`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?status=completed`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

-------

**Beispiele**

[Beispiel: mii-exa-onko-krk-operation](Procedure-mii-exa-onko-krk-operation.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie KRK Anastomoseninsuffizienz](StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz.md)
* Examples for this Profile: [Procedure/mii-exa-onko-krk-operation](Procedure-mii-exa-onko-krk-operation.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-pr-onko-krk-operation.json)

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

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Operation](StructureDefinition-mii-pr-onko-operation.md) 

** Summary **

Must-Support: 2 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Operation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)](StructureDefinition-mii-pr-onko-operation.md)
* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.usedCode.coding

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Onko_Operation](StructureDefinition-mii-pr-onko-operation.md) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Operation](StructureDefinition-mii-pr-onko-operation.md) 

** Summary **

Must-Support: 2 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Operation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)](StructureDefinition-mii-pr-onko-operation.md)
* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.usedCode.coding

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-krk-operation.csv), [Excel](../StructureDefinition-mii-pr-onko-krk-operation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-krk-operation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-krk-operation",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-operation",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_KRK_Operation",
  "title" : "MII PR Onkologie Präoperative Drahtmarkierung Mamma",
  "status" : "active",
  "date" : "2026-07-02T11:24:18+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Das vorliegende Profil beschreibt eine radiologisch durchgeführte Markierung von Tumorgewebe mittels  der Brust. Dabei können verschiedene Methoden gewählt werden. Die  ",
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
      "short" : "Kolorektale Operation",
      "definition" : "Operation des Kolons und des Rektums, z.B. Exzision eines Tumors, "
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
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedCode.coding",
      "path" : "Procedure.usedCode.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "description" : "Slicing für die intraoperative Verwendung von z.B. Drahtmarkierungen, Markierungsclips oder Seed-Markierungen",
        "rules" : "open"
      },
      "mustSupport" : true
    }]
  }
}

```
