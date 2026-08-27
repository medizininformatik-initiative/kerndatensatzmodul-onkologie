# MII PR Onkologie KRK Stoma-Markierung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie KRK Stoma-Markierung**

## Ressourcenprofil: MII PR Onkologie KRK Stoma-Markierung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-stoma-markierung | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_PR_Onko_KRK_Stoma_Markierung |

 
Dieses Profil beschreibt die präoperative Markierung der geplanten Stoma-Position beim Kolorektalen Karzinom 

### Inhalt

Dieses Profil beschreibt die präoperative Stomamarkierung beim Kolorektalen Karzinom gemäß oBDS KR7. Die präoperative Stomamarkierung ist ein wichtiger Schritt in der Vorbereitung auf operative Eingriffe, bei denen eine Stomaanlage erforderlich werden könnte, und trägt wesentlich zur Lebensqualität der Patienten bei.

Das Profil basiert auf einer FHIR Procedure-Ressource und dokumentiert sowohl die Durchführung als auch den Status der präoperativen Stomamarkierung.

-------

### Verknüpfungen zu anderen Ressourcen

Die Stomamarkierung ist eine präoperative Maßnahme:

* verweist über `Procedure.subject` auf den Patienten (Patient-Ressource)
* kann über `Procedure.encounter` mit einem spezifischen Behandlungsfall verknüpft werden
* steht in Bezug zur geplanten Operation über `Procedure.reasonReference`
* kann mit der tatsächlichen Stomaanlage während der Operation verknüpft werden

-------

### oBDS-Kontext

Die Stomamarkierung entspricht dem oBDS-Datenfeld KR7 "Präoperative Stomamarkierung" und dokumentiert, ob eine präoperative Markierung der Stomaposition durchgeführt wurde. Dies ist besonders relevant bei Rektumkarzinomen, wo eine Stomaanlage häufiger erforderlich ist.

### Terminologie-Binding

Das ValueSet für die Stomamarkierung ist **required** gebunden und beinhaltet die Codes für die Durchführung sowie den Status der präoperativen Markierung.

#### ValueSet: MII VS Onko KRK Stoma Anzeichnung

> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK Stoma Anzeichnung](ValueSet-mii-vs-onko-krk-stoma-anzeichnung.md).

> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK Stoma Anzeichnung](ValueSet-mii-vs-onko-krk-stoma-anzeichnung.md).

-------

Mapping Datensatz zu FHIR

> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie KRK Stoma-Markierung](StructureDefinition-mii-pr-onko-krk-stoma-markierung.md).

-------

**Suchparameter**

Folgende Suchparameter sind für das KRK-Stoma-Markierung Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-stoma-markierung`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?code=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-stoma-anzeichnung|durchgefuehrt`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?subject=Patient/test`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?status=completed`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

-------

**Beispiele**

[mii-exa-onko-krk-stoma-markierung](Procedure-mii-exa-onko-krk-stoma-markierung.md)

**Usages:**

* Examples for this Profile: [Procedure/mii-exa-onko-krk-stoma-markierung](Procedure-mii-exa-onko-krk-stoma-markierung.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-krk-stoma-markierung.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Prozedur_Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Prozedur_Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure) 

** Summary **

Mandatory: 1 element
 Must-Support: 4 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Prozedur_Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Prozedur_Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure) 

** Summary **

Mandatory: 1 element
 Must-Support: 4 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-krk-stoma-markierung.csv), [Excel](../StructureDefinition-mii-pr-onko-krk-stoma-markierung.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-krk-stoma-markierung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-krk-stoma-markierung",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-stoma-markierung",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_KRK_Stoma_Markierung",
  "title" : "MII PR Onkologie KRK Stoma-Markierung",
  "status" : "active",
  "date" : "2026-08-27T10:41:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt die präoperative Markierung der geplanten Stoma-Position beim Kolorektalen Karzinom",
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
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "KR-Stoma",
        "comment" : "Präoperative Stoma-Markierung"
      }]
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-stoma-status-reason"
      }
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "min" : 1
    },
    {
      "id" : "Procedure.category.coding",
      "path" : "Procedure.category.coding",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "387713003",
        "display" : "Surgical procedure"
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "Stoma-Markierung",
      "definition" : "Markierung der Position einer geplanten Stoma-Anlage"
    },
    {
      "id" : "Procedure.code.coding",
      "path" : "Procedure.code.coding",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "225134005",
        "display" : "Marking position of planned stoma site (procedure)"
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
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Procedure.performed[x]:performedDateTime",
      "path" : "Procedure.performed[x]",
      "sliceName" : "performedDateTime",
      "short" : "Datum der Stoma-Markierung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Stoma-Markierung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum der präoperativen Stoma-Markierung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der präoperativen Markierung der geplanten Stoma-Position"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "The date the procedure was performed."
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
        "map" : "KR-Stoma.1",
        "comment" : "Datum der Stoma-Markierung"
      }]
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    }]
  }
}

```
