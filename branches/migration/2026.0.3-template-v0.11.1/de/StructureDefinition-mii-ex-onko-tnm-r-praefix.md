# MII EX Onkologie TNM r-Präfix - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Onkologie TNM r-Präfix**

## Extension: MII EX Onkologie TNM r-Präfix 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-r-praefix | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_EX_Onko_TNM_r_Praefix |

Kennzeichnet eine TNM T-, N- oder M-Kategorie, deren Feststellung zur Beurteilung eines Rezidivs erfolgte (UICC r-Präfix, z. B. rcT2). Als modifierExtension zu verwenden, da das r-Präfix die Interpretation des Kategorie-Wertes verändert.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Onkologie TNM M-Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md), [MII PR Onkologie TNM N-Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md) and [MII PR Onkologie TNM T-Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-ex-onko-tnm-r-praefix.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple **Modifier** Extension with the type CodeableConcept: Kennzeichnet eine TNM T-, N- oder M-Kategorie, deren Feststellung zur Beurteilung eines Rezidivs erfolgte (UICC r-Präfix, z. B. rcT2). Als modifierExtension zu verwenden, da das r-Präfix die Interpretation des Kategorie-Wertes verändert.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple **Modifier** Extension with the type CodeableConcept: Kennzeichnet eine TNM T-, N- oder M-Kategorie, deren Feststellung zur Beurteilung eines Rezidivs erfolgte (UICC r-Präfix, z. B. rcT2). Als modifierExtension zu verwenden, da das r-Präfix die Interpretation des Kategorie-Wertes verändert.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-onko-tnm-r-praefix.csv), [Excel](../StructureDefinition-mii-ex-onko-tnm-r-praefix.xlsx), [Schematron](../StructureDefinition-mii-ex-onko-tnm-r-praefix.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-onko-tnm-r-praefix",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-r-praefix",
  "version" : "2026.0.3",
  "name" : "MII_EX_Onko_TNM_r_Praefix",
  "title" : "MII EX Onkologie TNM r-Präfix",
  "status" : "active",
  "date" : "2026-08-27T11:11:54+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Kennzeichnet eine TNM T-, N- oder M-Kategorie, deren Feststellung zur Beurteilung eines Rezidivs erfolgte (UICC r-Präfix, z. B. rcT2). Als modifierExtension zu verwenden, da das r-Präfix die Interpretation des Kategorie-Wertes verändert.",
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
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Onkologie TNM r-Präfix",
      "definition" : "Kennzeichnet eine TNM T-, N- oder M-Kategorie, deren Feststellung zur Beurteilung eines Rezidivs erfolgte (UICC r-Präfix, z. B. rcT2). Als modifierExtension zu verwenden, da das r-Präfix die Interpretation des Kategorie-Wertes verändert.",
      "isModifier" : true,
      "isModifierReason" : "Das r-Präfix verändert die Interpretation der TNM-Kategorie: eine Rezidiv-Klassifikation (rcT2) beurteilt nicht den Ersttumor und markiert eine neue Baseline."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-r-praefix"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "r",
          "display" : "r"
        }]
      }
    },
    {
      "id" : "Extension.value[x].coding.system",
      "path" : "Extension.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding.code",
      "path" : "Extension.value[x].coding.code",
      "mustSupport" : true
    }]
  }
}

```
