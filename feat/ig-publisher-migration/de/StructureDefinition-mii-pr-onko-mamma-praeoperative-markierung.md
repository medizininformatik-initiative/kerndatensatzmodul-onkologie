# MII PR Onkologie Präoperative Markierung Mamma - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Ressourcenprofil: MII PR Onkologie Präoperative Markierung Mamma 

 
Das vorliegende Profil beschreibt eine präoperativ durchgeführte Markierung von Tumorgewebe in der Brust. Dabei können verschiedene Markierungsmodalitäten gewählt werden, wie z.B. Drahtmarkierungen, Seed-Markierungen oder andere Lokalisationstechniken. 

### Inhalt

Das **Mamma-Präoperative Markierung Profil** dokumentiert radiologisch durchgeführte Markierungen von Tumorgewebe in der Brust vor operativen Eingriffen. Dieses Profil basiert auf der FHIR Procedure-Ressource und erfasst verschiedene Markierungsmodalitäten, die zur präzisen Lokalisation von Tumorgewebe eingesetzt werden.

Die präoperative Markierung ist ein wichtiger Bestandteil der brusterhaltenden Therapie und ermöglicht es Chirurgen, nicht-palpable Läsionen exakt zu lokalisieren und vollständig zu entfernen.

-------

### Verknüpfungen zu anderen Ressourcen

Das Profil ist eng mit anderen onkologischen Ressourcen verknüpft:

* verweist über `Procedure.partOf` auf die übergeordnete Operation (MII_PR_Onko_Operation)
* verweist über `Procedure.subject` auf die Patientin (Patient-Ressource)
* kann über `Procedure.encounter` mit einem spezifischen Behandlungsfall verknüpft werden

-------

### oBDS-Kontext

Das Profil implementiert **Mamma-spezifische Markierungsverfahren** als Erweiterung des allgemeinen oBDS-Operationsdatensatzes. Die präoperative Markierung ist besonders relevant für:

**Klinische Anwendungen:**

* **Brusterhaltende Therapie**: Präzise Lokalisation nicht-palpabler Tumoren
* **Multifokale Tumoren**: Markierung mehrerer Tumorherde
* **Nachexzision**: Markierung bei R1-Resektionen
* **Qualitätssicherung**: Dokumentation der Markierungsqualität

**Markierungsmodalitäten (aktuell im ValueSet):**

* **Drahtmarkierung mit Ultraschall-Führung**: SNOMED CT 433222002
* **Marker-Insertion mit Röntgen-Führung**: SNOMED CT 836381000000102
* **Drahtmarkierung mit MRT-Führung**: SNOMED CT 911831000000104

**Weitere klinisch relevante Modalitäten (noch nicht im ValueSet):**

* **Radioaktive Seed-Markierung**: Radioaktive Seeds zur Lokalisation
* **Magnetische Seed-Markierung**: Moderne drahtlose Verfahren (z.B. Magseed®)
* **Clip-Markierung**: Metallclips zur Orientierung

**Hinweis: Das aktuelle ValueSet fokussiert auf bildgebungsgeführte Draht- und Markerverfahren. Moderne Seed-basierte Verfahren könnten in zukünftigen Versionen ergänzt werden.**

### Terminologie-Binding

Das Profil verwendet **extensible Binding** für Markierungsmodalitäten direkt auf `Procedure.code`:

#### ValueSet: MII VS Onko Mamma Präoperative Markierung Modalität

-------

Mapping Datensatz zu FHIR

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

-------

**Suchparameter**

Folgende Suchparameter sind für das Mamma-Präoperative Markierung Profil relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-praeoperative-markierung`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?code=http://snomed.info/sct|392021009`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?subject=Patient/test`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "patient" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?patient=Patient/test`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "part-of" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?part-of=Procedure/hauptoperation`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.partOf" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "date" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?date=2024-01-15`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.performed[x]" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

-------

**Beispiele**

[Beispiel: mii-exa-onko-mamma-praeoperative-markierung-1](Procedure-mii-exa-onko-mamma-praeoperative-markierung-1.md)

**Usages:**

* Examples for this Profile: [Procedure/mii-exa-onko-mamma-praeoperative-markierung-1](Procedure-mii-exa-onko-mamma-praeoperative-markierung-1.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Procedure](http://hl7.org/fhir/R4/procedure.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Procedure](http://hl7.org/fhir/R4/procedure.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 7 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Operation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)](StructureDefinition-mii-pr-onko-operation.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Procedure](http://hl7.org/fhir/R4/procedure.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Procedure](http://hl7.org/fhir/R4/procedure.html) 

** Summary **

Mandatory: 1 element
 Must-Support: 7 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Operation (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation)](StructureDefinition-mii-pr-onko-operation.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.csv), [Excel](../StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-mamma-praeoperative-markierung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-praeoperative-markierung",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Mamma_Praeoperative_Markierung",
  "title" : "MII PR Onkologie Präoperative Markierung Mamma",
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
  "description" : "Das vorliegende Profil beschreibt eine präoperativ durchgeführte Markierung von Tumorgewebe in der Brust. Dabei können verschiedene Markierungsmodalitäten gewählt werden, wie z.B. Drahtmarkierungen, Seed-Markierungen oder andere Lokalisationstechniken.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.meta.profile",
      "path" : "Procedure.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "short" : "Präoperative Tumormarkierung",
      "definition" : "Präoperative Markierung von Tumorgewebe in der Brust zur exakten Lokalisation während der Operation",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code.coding",
      "path" : "Procedure.code.coding",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-praeoperative-markierung-modalitaet"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "mustSupport" : true
    }]
  }
}

```
