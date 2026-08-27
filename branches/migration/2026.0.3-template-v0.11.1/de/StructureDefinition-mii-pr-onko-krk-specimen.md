# MII PR Onkologie Specimen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Specimen**

## Ressourcenprofil: MII PR Onkologie Specimen 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_PR_Onko_KRK_Specimen |

 
Histologie: Dieses Profil beschreibt eine Gewebeprobe in der Onkologie. 

### Inhalt

Dieses Profil beschreibt Gewebeproben (Specimens) beim Kolorektalen Karzinom, die im Rahmen operativer Eingriffe entnommen werden. Es umfasst sowohl die Charakterisierung des Gewebes als auch spezifische pathologische Aspekte wie die TME-Qualität (Totale mesorektale Exzision) bei Rektumkarzinomen.

Das Profil basiert auf einer FHIR Specimen-Ressource und stellt die Verbindung zwischen der chirurgischen Entnahme und der pathologischen Aufarbeitung her.

-------

### Verknüpfungen zu anderen Ressourcen

Das KRK-Specimen ist ein wichtiges Bindeglied in der Diagnostikkette:

* verweist über `Specimen.subject` auf den Patienten (Patient-Ressource)
* steht in Bezug zur Entnahme-Procedure über `Specimen.collection.procedure`
* kann mit pathologischen Observations verknüpft werden (z.B. Histologie, Grading)
* dient als Basis für die Bestimmung von Resektionsrändern und TNM-Klassifikation

-------

### oBDS-Kontext

Das KRK-Specimen bildet die Grundlage für verschiedene oBDS-Bewertungen:

* Pathologische Beurteilung des Resektats
* TME-Qualität bei Rektumkarzinomen (KR4)
* Histopathologische Charakteristika des Tumors
* Resektionsrandbeurteilung

### Terminologie-Binding

Das Profil verwendet spezialisierte ValueSets für kolorektale Specimens, insbesondere für die Bewertung der TME-Qualität und anderer pathologischer Parameter.

#### ValueSet: MII VS Onko KRK TME Qualität

> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK TME Qualität](ValueSet-mii-vs-onko-krk-tme-qualitaet.md).

> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII VS Onkologie KRK TME Qualität](ValueSet-mii-vs-onko-krk-tme-qualitaet.md).

-------

Mapping Datensatz zu FHIR

> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Specimen](StructureDefinition-mii-pr-onko-krk-specimen.md).

-------

**Suchparameter**

Folgende Suchparameter sind für das KRK-Specimen Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Specimen?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Specimen?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Specimen?subject=Patient/test`Anwendungshinweise: Weitere Informationen zur Suche nach "Specimen.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "type" MUSS unterstützt werden:Beispiele:`GET [base]/Specimen?type=http://snomed.info/sct|119376003`Anwendungshinweise: Weitere Informationen zur Suche nach "Specimen.type" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/Specimen?status=available`Anwendungshinweise: Weitere Informationen zur Suche nach "Specimen.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

-------

**Beispiele**

[mii-exa-onko-krk-specimen](Specimen-mii-exa-onko-krk-specimen.md)

**Usages:**

* Examples for this Profile: [Specimen/mii-exa-onko-krk-specimen](Specimen-mii-exa-onko-krk-specimen.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-krk-specimen.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Specimen](StructureDefinition-mii-pr-onko-specimen.md) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Specimen](StructureDefinition-mii-pr-onko-specimen.md) 

** Summary **

Must-Support: 1 element

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Onko_Specimen](StructureDefinition-mii-pr-onko-specimen.md) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Onko_Specimen](StructureDefinition-mii-pr-onko-specimen.md) 

** Summary **

Must-Support: 1 element

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-krk-specimen.csv), [Excel](../StructureDefinition-mii-pr-onko-krk-specimen.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-krk-specimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-krk-specimen",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_KRK_Specimen",
  "title" : "MII PR Onkologie Specimen",
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
  "description" : "Histologie: Dieses Profil beschreibt eine Gewebeprobe in der Onkologie.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "6",
        "comment" : "Histologie"
      }]
    },
    {
      "id" : "Specimen.accessionIdentifier.value",
      "path" : "Specimen.accessionIdentifier.value",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "6.2",
        "comment" : "Histologie-Einsendenummer"
      }]
    },
    {
      "id" : "Specimen.collection.collected[x]:collectedDateTime",
      "path" : "Specimen.collection.collected[x]",
      "sliceName" : "collectedDateTime",
      "short" : "Tumor Histologiedatum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumor Histologiedatum"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Histologiedatum nach 6.1 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Histologiedatum nach 6.1 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "6.1",
        "comment" : "Tumor Histologiedatum"
      }]
    },
    {
      "id" : "Specimen.condition",
      "path" : "Specimen.condition",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-tme-qualitaet"
      }
    }]
  }
}

```
