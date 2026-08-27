# MII PR Onkologie Strahlentherapie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Strahlentherapie**

## Ressourcenprofil: MII PR Onkologie Strahlentherapie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie |

 
Strahlentherapie. Dieses Profil beschreibt eine Strahlentherapie in der Onkologie. 

Dieses Profil beschreibt Einzelbestrahlungen im Rahmen einer Strahlentherapie in der Onkologie. Dieses Profil beschriebt Strahlentherapie im engeren Sinne; Brachytherapien und systemische nuklearmedizinische Prozeduren werden über das Profil Nuklearmedizinische Therapien abgebildet. Das Strahlentherapieprofil für die Onkologie basiert auf dem Prozedurenmodul der MII.

#### Implementierungsempfehlung

Aus den oben genannten Punkten ergibt sich folgende Kodierempfehlung für die oBDS-Strahlentherapie:

* Kategorie als SNOMED - Code 
* Kategorie für Strahlentherapie `1287742003 | Radiotherapy (procedure)`
 
* Kodierung über OPS 
* Strahlentherapie als OPS `8-52 Strahlentherapie` oder genauer wenn vorhanden
 

-------

### Konformität

Die vorliegenden Profilierungen sind kompatibel mit dem Prozedurenprofil der ISiK-Basismodule Stufe 4. https://simplifier.net/isik-basis-v4/isikprozedur

### Dokumentations-Guidance

**Prophylaktische Bestrahlungen (§65c-Beschluss vom 31.05.2022):** Tumorspezifische prophylaktische Bestrahlungen — der Hauptfall ist die prophylaktische Ganzhirnbestrahlung (PCI) beim kleinzelligen Lungenkarzinom — **sind zu dokumentieren**: `StellungZurOp` = `S` (Sonstiges), die `Intention` ergibt sich aus dem Gesamtkonzept (kurativ/palliativ), Zielgebiet z. B. `1.1` Ganzhirn. **Nicht zu erfassen** sind supportive Bestrahlungen ohne Tumorspezifität (z. B. Mamillenbestrahlung zur Gynäkomastie-Prophylaxe unter Hormontherapie beim Prostatakarzinom). Beispiel: `mii-exa-onko-strahlentherapie-pci-sclc`.

**Permanentstrahler/Seeds (oBDS 14.6):** Bei Seed-Implantationen (typischerweise interstitielle LDR-Brachytherapie) ist der **Tag der Applikation als Ende** zu dokumentieren — `performedPeriod.start` = `performedPeriod.end` ist dann korrekt und valide. Abweichungen davon sind ein Datenqualitäts-Signal (DQ-Regeln siehe GitHub #292).

-------

Mapping Datensatz zu FHIR

> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.md).

-------

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_id=103270`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?status=completed`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "category" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?category=http://snomed.info/sct|103693007`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "date" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?date=2022-01-01`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.performed" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?subject=Patient/test`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "patient" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?patient=Patient/test`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "bodySite" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?bodySite=http://snomed.info/sct|80891009`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.bodySite" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "dokumentationsdatum" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?dokumentationsdatum=2022-01-01`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Dokumentationsdatum" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "durchfuehrungsabsicht" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?durchfuehrungsabsicht=http://snomed.info/sct|262202000`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Durchfuehrungsabsicht" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "outcome" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?outcome=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund|R1`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Durchfuehrungsabsicht" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "extension-intention" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?extension-intention=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention|K`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Intention" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "extension-stellung" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?extension-stellung=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-stellung|K`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Stellung" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "extension-stellung" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?extension-stellung=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-stellung|K`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Stellung" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "bestrahlung-applikationsart" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?bestrahlung-applikationsart=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart|KLDR`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.usedCode" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "bestrahlung-strahlenart" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?bestrahlung-strahlenart=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart|PN`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.usedCode" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "bestrahlung-zielgebiet-lateralitaet" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?bestrahlung-zielgebiet-lateralitaet=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation|L`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.bodySite.extension:Seitenlokalisation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "bestrahlung-boost" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?bestrahlung-boost=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost|SIB`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Boost" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "bestrahlung-einzeldosis" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?bestrahlung-einzeldosis=2|http://unitsofmeasure.org|Gy`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Einzeldosis" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).
1. Der Suchparameter "bestrahlung-gesamtdosis" MUSS unterstützt werden:Beispiele:`GET [base]/Procedure?bestrahlung-gesamtdosis=ge50|http://unitsofmeasure.org|Gy`Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Gesamtdosis" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

**Beispiele**

[mii-exa-onko-strahlentherapie-strahlentherapie-1](Procedure-mii-exa-onko-strahlentherapie-strahlentherapie-1.md)

**Usages:**

* Examples for this Profile: [Procedure/mii-exa-onko-strahlentherapie-2014-mamma-mit-lk](Procedure-mii-exa-onko-strahlentherapie-2014-mamma-mit-lk.md), [Procedure/mii-exa-onko-strahlentherapie-2014-prostata-mit-lk](Procedure-mii-exa-onko-strahlentherapie-2014-prostata-mit-lk.md), [Procedure/mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten.md), [Procedure/mii-exa-onko-strahlentherapie-2021-mamma-primaer](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-primaer.md)... Show 2 more, [Procedure/mii-exa-onko-strahlentherapie-bestrahlung-pci-sclc](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-pci-sclc.md) and [Procedure/mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.json)

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

Mandatory: 0 element(5 nested mandatory elements)
 Must-Support: 16 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-boost](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-boost.md)
* [http://hl7.org/fhir/StructureDefinition/procedure-method](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-procedure-method.html)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.usedCode

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

Mandatory: 0 element(5 nested mandatory elements)
 Must-Support: 16 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-boost](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-boost.md)
* [http://hl7.org/fhir/StructureDefinition/procedure-method](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-procedure-method.html)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.usedCode

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.csv), [Excel](../StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie",
  "title" : "MII PR Onkologie Strahlentherapie",
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
  "description" : "Strahlentherapie. Dieses Profil beschreibt eine Strahlentherapie in der Onkologie.",
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
        "map" : "14",
        "comment" : "Strahlentherapie"
      }]
    },
    {
      "id" : "Procedure.extension:Gesamtdosis",
      "path" : "Procedure.extension",
      "sliceName" : "Gesamtdosis",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:Gesamtdosis.value[x].value",
      "path" : "Procedure.extension.value[x].value",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.9",
        "comment" : "Strahlentherapie Gesamtdosis"
      }]
    },
    {
      "id" : "Procedure.extension:Gesamtdosis.value[x].unit",
      "path" : "Procedure.extension.value[x].unit",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.11",
        "comment" : "Strahlentherapie Einheit"
      }]
    },
    {
      "id" : "Procedure.extension:Einzeldosis",
      "path" : "Procedure.extension",
      "sliceName" : "Einzeldosis",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:Einzeldosis.value[x].value",
      "path" : "Procedure.extension.value[x].value",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.10",
        "comment" : "Strahlentherapie Einzeldosis pro Tag"
      }]
    },
    {
      "id" : "Procedure.extension:Einzeldosis.value[x].unit",
      "path" : "Procedure.extension.value[x].unit",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.11",
        "comment" : "Strahlentherapie Einheit"
      }]
    },
    {
      "id" : "Procedure.extension:Boost",
      "path" : "Procedure.extension",
      "sliceName" : "Boost",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-boost"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:Boost.value[x].coding.code",
      "path" : "Procedure.extension.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.12",
        "comment" : "Strahlentherapie Boost"
      }]
    },
    {
      "id" : "Procedure.extension:Applikationsart",
      "path" : "Procedure.extension",
      "sliceName" : "Applikationsart",
      "short" : "Applikationsart",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Applikationsart"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Applikationsart der Bestrahlung gemäß 14.7 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Applikationsart der Bestrahlung gemäß 14.7 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/procedure-method"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:Applikationsart.value[x]",
      "path" : "Procedure.extension.value[x]",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-applikationsart"
      }
    },
    {
      "id" : "Procedure.extension:Applikationsart.value[x].coding.system",
      "path" : "Procedure.extension.value[x].coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:Applikationsart.value[x].coding.code",
      "path" : "Procedure.extension.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.7",
        "comment" : "Strahlentherapie Applikationsart"
      }]
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CarePlan"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Procedure",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1287742003",
          "display" : "Radiotherapy (procedure)"
        }]
      }
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-ops-strahlentherapie"
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
        "code" : "Period"
      }]
    },
    {
      "id" : "Procedure.performed[x].start",
      "path" : "Procedure.performed[x].start",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.5",
        "comment" : "Strahlentherapie Beginn"
      }]
    },
    {
      "id" : "Procedure.performed[x].end",
      "path" : "Procedure.performed[x].end",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.6",
        "comment" : "Strahlentherapie Ende"
      }]
    },
    {
      "id" : "Procedure.performed[x]:performedPeriod",
      "path" : "Procedure.performed[x]",
      "sliceName" : "performedPeriod",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "Procedure.performed[x]:performedPeriod.start",
      "path" : "Procedure.performed[x].start",
      "short" : "Start der Strahlentherapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Start der Strahlentherapie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Start der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.5 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Start der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.5 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]:performedPeriod.end",
      "path" : "Procedure.performed[x].end",
      "short" : "Ende der Strahlentherapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ende der Strahlentherapie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ende der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.6 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ende der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.6 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
        "http://hl7.org/fhir/StructureDefinition/Condition"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "max" : "1",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-strahlentherapie-zielgebiet"
      }
    },
    {
      "id" : "Procedure.bodySite.extension:Seitenlokalisation",
      "path" : "Procedure.bodySite.extension",
      "sliceName" : "Seitenlokalisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.bodySite.extension:Seitenlokalisation.value[x].coding",
      "path" : "Procedure.bodySite.extension.value[x].coding",
      "short" : "Zielgebiet Lateralität",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zielgebiet Lateralität"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Lateralität des Zielgebiets der Strahlentherapie gemäß 14.4 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Lateralität des Zielgebiets der Strahlentherapie gemäß 14.4 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Procedure.bodySite.extension:Seitenlokalisation.value[x].coding.code",
      "path" : "Procedure.bodySite.extension.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.4",
        "comment" : "Strahlentherapie Seite Zielgebiet"
      }]
    },
    {
      "id" : "Procedure.bodySite.coding",
      "path" : "Procedure.bodySite.coding",
      "short" : "Zielgebiet",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zielgebiet"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zielgebiet der Strahlentherapie gemäß 14.3 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zielgebiet der Strahlentherapie gemäß 14.3 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Procedure.bodySite.coding.code",
      "path" : "Procedure.bodySite.coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.3",
        "comment" : "Strahlentherapie Zielgebiet"
      }]
    },
    {
      "id" : "Procedure.usedCode",
      "path" : "Procedure.usedCode",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "coding.system"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedCode:Strahlenart",
      "path" : "Procedure.usedCode",
      "sliceName" : "Strahlenart",
      "short" : "Strahlenart",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Strahlenart"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Strahlenart der Bestrahlung gemäß 14.8 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Strahlenart der Bestrahlung gemäß 14.8 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-strahlentherapie-strahlenart"
      }
    },
    {
      "id" : "Procedure.usedCode:Strahlenart.coding.system",
      "path" : "Procedure.usedCode.coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedCode:Strahlenart.coding.code",
      "path" : "Procedure.usedCode.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.8",
        "comment" : "Strahlentherapie Strahlenart"
      }]
    }]
  }
}

```
