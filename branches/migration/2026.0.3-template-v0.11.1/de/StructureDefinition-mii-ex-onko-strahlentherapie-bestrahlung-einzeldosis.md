# MII EX Onko Strahlentherapie Bestrahlung Einzeldosis - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Onko Strahlentherapie Bestrahlung Einzeldosis**

## Extension: MII EX Onko Strahlentherapie Bestrahlung Einzeldosis 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_EX_Onko_Strahlentherapie_Bestrahlung_Einzeldosis |

Strahlentherapie: Einzeldosis einer Bestrahlung

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Onkologie Strahlentherapie Nuklearmedizin](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.md) and [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.md)
* Examples for this Extension: [Procedure/mii-exa-onko-strahlentherapie-2014-mamma-mit-lk](Procedure-mii-exa-onko-strahlentherapie-2014-mamma-mit-lk.md), [Procedure/mii-exa-onko-strahlentherapie-2014-prostata-mit-lk](Procedure-mii-exa-onko-strahlentherapie-2014-prostata-mit-lk.md), [Procedure/mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-lymphknoten.md), [Procedure/mii-exa-onko-strahlentherapie-2021-mamma-primaer](Procedure-mii-exa-onko-strahlentherapie-2021-mamma-primaer.md)... Show 2 more, [Procedure/mii-exa-onko-strahlentherapie-bestrahlung-pci-sclc](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-pci-sclc.md) and [Procedure/mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis.json)

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

Simple Extension with the type Quantity: Strahlentherapie: Einzeldosis einer Bestrahlung

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type Quantity: Strahlentherapie: Einzeldosis einer Bestrahlung

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis.csv), [Excel](../StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis.xlsx), [Schematron](../StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis",
  "version" : "2026.0.3",
  "name" : "MII_EX_Onko_Strahlentherapie_Bestrahlung_Einzeldosis",
  "title" : "MII EX Onko Strahlentherapie Bestrahlung Einzeldosis",
  "status" : "active",
  "date" : "2026-08-27T12:06:00+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Strahlentherapie: Einzeldosis einer Bestrahlung",
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
      "short" : "MII EX Onko Strahlentherapie Bestrahlung Einzeldosis",
      "definition" : "Strahlentherapie: Einzeldosis einer Bestrahlung"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Strahlentherapie Einzeldosis pro Tag (Dosis)",
      "definition" : "Gibt an, mit welcher Einzeldosis (häufigste Dosis, nicht Boost) pro Tag das Zielgebiet bestrahlt wurde.",
      "type" : [{
        "code" : "Quantity"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-strahlentherapie-strahlungseinheit"
      }
    },
    {
      "id" : "Extension.value[x].system",
      "path" : "Extension.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    }]
  }
}

```
