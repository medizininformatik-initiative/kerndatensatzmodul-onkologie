# MII PR Onkologie TNM-Klassifikation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie TNM-Klassifikation**

## Ressourcenprofil: MII PR Onkologie TNM-Klassifikation 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_PR_Onko_TNM_Klassifikation |

 
TNM-Klassifikation: Grouper-Profil für Komponenten der TNM-Klassifikation. 

Dieses Profil ist das Gruppierungsprofil für eine TNM-Klassifikation in der Onkologie.

Das Profil enthält das Referenzdatum und dient als Ankerpunkt für alle weiteren TNM-Einzelbeobachtungen zu diesem Zeitpunkt. Das Element `hasMember` enthält Referenzen zu allen verbundenen TNM-Einzelbeobachtungen.

Außerdem wird im Element `value` das UICC-Staging kodiert, dass von den untergeordneten TNM-Beobachtungen abgeleitet ist.

### Erscheinungsformen der TNM-Klassifikation

Eine TNM-Klassifikation tritt im Behandlungsverlauf in verschiedenen Erscheinungsformen auf. Diese werden **nicht** über den oBDS-Meldeanlass unterschieden, sondern ausschließlich über zwei Achsen der FHIR-Repräsentation:

1. die**Code-Achse**des Gruppierungsprofils —`Observation.code`ist an das ValueSet[mii-vs-onko-tnm-klassifikation-typ](ValueSet-mii-vs-onko-tnm-klassifikation-typ.md)gebunden und trägt SNOMED CT`399537006`"Clinical TNM stage grouping",`399588009`"Pathologic TNM stage grouping" oder`399703000`"Integrated TNM category";
1. die**Präfix-Modifier der einzelnen Kategorien**— das c/p/u-Präfix als Extension auf`Observation.code`der Kategorie-Beobachtung sowie die UICC-Präfixe y, r und a als modifierExtension an der jeweiligen T-, N- bzw. M-Beobachtung.

Der Meldeanlass ist lediglich der typische Auslöser, aus dem sich die Erscheinungsform ergibt — er ist kein Unterscheidungsmerkmal und wird in der Ressource nicht abgebildet.

**(1) Klinisches Staging** (typischer Auslöser: Diagnose-Meldung). `code` = `399537006` "Clinical TNM stage grouping", die Kategorien tragen das c-Präfix. Das UICC-Stadium ist in aller Regel vorhanden, da klinisch alle drei Achsen T, N und M beurteilt werden.

**(2) Pathologisches Staging** (typischer Auslöser: Pathologie- oder OP-Meldung). `code` = `399588009` "Pathologic TNM stage grouping", die Kategorien tragen das p-Präfix, bei neoadjuvanter Vorbehandlung zusätzlich den y-Modifier (`ypT`, `ypN`). Ein UICC-Stadium wird hier typischerweise **nicht** angegeben: `value` ist im Meldungs-Panel bewusst mit 0..1 modelliert, da ein pathologisches Staging allein kein Stadium liefern kann — die M-Kategorie stammt in der Regel aus der klinischen Beurteilung.

**(3) Verlauf** (typischer Auslöser: Verlaufs-Meldung). Die Erscheinungsform ist variabel. Meist handelt es sich um ein erneutes klinisches Re-Staging (`code` = clinical), bei oder nach laufender Therapie ergänzt um den y-Modifier. Bei einem Rezidiv kommt der r-Modifier hinzu — dieser hängt am **Tumorstatus**, nicht am Meldeanlass, und kann daher auch außerhalb einer Verlaufs-Meldung auftreten. Erfolgt im Verlauf eine erneute Operation, kann die Klassifikation auch pathologisch sein.

**(4) Synthetisierte bzw. integrierte Klassifikation.** Hierfür existiert ein eigenes Profil [mii-pr-onko-tnm-klassifikation-synthetisiert](StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.md) mit fixem `code` = `399703000` "Integrated TNM category". Es führt die Kategorien aus mehreren Quell-Klassifikationen zu einem kohärenten Stand zum Entscheidungszeitpunkt zusammen — auch gemischt, z. B. `ypT` und `ypN` aus der Pathologie mit `cM` aus der Klinik. Das UICC-Stadium ist hier **verpflichtend** (`value` 1..1), und `derivedFrom` referenziert verpflichtend die zugrunde liegenden Quell-Klassifikationen.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Klinisches Staging | `399537006`clinical | c | meist vorhanden | `mii-pr-onko-tnm-klassifikation` |
| Pathologisches Staging | `399588009`pathologic | p, yp | i. d. R. nicht vorhanden (0..1) | `mii-pr-onko-tnm-klassifikation` |
| Verlauf | clinical, ggf. pathologic | c/p, y bei/nach Therapie, r bei Rezidiv | variabel | `mii-pr-onko-tnm-klassifikation` |
| Synthetisiert / integriert | `399703000`integrated | gemischt (z. B. ypT + cN) | verpflichtend (1..1) | `mii-pr-onko-tnm-klassifikation-synthetisiert` |

Die Präfixe y, r und a sind als **modifierExtension** modelliert, weil sie die Interpretation des Kategorie-Wertes verändern: `ypT2` ist nicht gleichbedeutend mit `pT2`. Verarbeitende Systeme müssen diese Extensions kennen und dürfen eine Kategorie nicht ohne Auswertung des Präfixes interpretieren.

-------

**Beispiele**

[mii-exa-onko-tnm-klassifikation-TisN0M0](Observation-mii-exa-onko-tnm-klassifikation-TisN0M0.md)

[mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1](Observation-mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1.md)

**Usages:**

* Derived from this Profile: [MII PR Onkologie TNM-Klassifikation (synthetisiert)](StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.md)
* Refer to this Profile: [MII PR Onkologie TNM-Klassifikation (synthetisiert)](StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.md) and [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.md)
* Examples for this Profile: [Observation/TNM-Klassifikation-Observation-2](Observation-TNM-Klassifikation-Observation-2.md), [Observation/mii-exa-onko-ascending-colon-tnm](Observation-mii-exa-onko-ascending-colon-tnm.md), [Observation/mii-exa-onko-colorectal-tnm](Observation-mii-exa-onko-colorectal-tnm.md), [Observation/mii-exa-onko-cup-tnm-klassifikation](Observation-mii-exa-onko-cup-tnm-klassifikation.md)... Show 14 more, [Observation/mii-exa-onko-kim-klass1](Observation-mii-exa-onko-kim-klass1.md), [Observation/mii-exa-onko-kim-klass2](Observation-mii-exa-onko-kim-klass2.md), [Observation/mii-exa-onko-kim-klass3](Observation-mii-exa-onko-kim-klass3.md), [Observation/mii-exa-onko-tnm-biopsy-cT4cN1cM0](Observation-mii-exa-onko-tnm-biopsy-cT4cN1cM0.md), [Observation/mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0](Observation-mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0.md), [Observation/mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0](Observation-mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0.md), [Observation/mii-exa-onko-tnm-clinical-cT3cN1cM0](Observation-mii-exa-onko-tnm-clinical-cT3cN1cM0.md), [Observation/mii-exa-onko-tnm-klassifikation-TisN0M0](Observation-mii-exa-onko-tnm-klassifikation-TisN0M0.md), [Observation/mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1](Observation-mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1.md), [Observation/mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0](Observation-mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0.md), [Observation/mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0](Observation-mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0.md), [Observation/mii-exa-onko-tnm-recurrence-rcT2cN1cM1](Observation-mii-exa-onko-tnm-recurrence-rcT2cN1cM1.md), [Observation/mii-exa-onko-tnm-synth-meldung1-klassifikation](Observation-mii-exa-onko-tnm-synth-meldung1-klassifikation.md) and [Observation/mii-exa-onko-tnm-synth-meldung2-klassifikation](Observation-mii-exa-onko-tnm-synth-meldung2-klassifikation.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-tnm-klassifikation.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 1 element(2 nested mandatory elements)
 Must-Support: 13 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* [MII PR Onkologie Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)](StructureDefinition-mii-pr-onko-specimen.md)
* [MII PR Onkologie TNM L-Kategorie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-l-kategorie)](StructureDefinition-mii-pr-onko-tnm-l-kategorie.md)
* [MII PR Onkologie TNM M-Kategorie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie)](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md)
* [MII PR Onkologie TNM m-Symbol (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-symbol)](StructureDefinition-mii-pr-onko-tnm-m-symbol.md)
* [MII PR Onkologie TNM N-Kategorie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie)](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md)
* [MII PR Onkologie TNM T-Kategorie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie)](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md)
* [MII PR Onkologie TNM Pn-Kategorie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-pn-kategorie)](StructureDefinition-mii-pr-onko-tnm-pn-kategorie.md)
* [MII PR Onkologie TNM S-Kategorie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-s-kategorie)](StructureDefinition-mii-pr-onko-tnm-s-kategorie.md)
* [MII PR Onkologie TNM V-Kategorie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-v-kategorie)](StructureDefinition-mii-pr-onko-tnm-v-kategorie.md)
* [MII PR Onkologie TNM a-Symbol (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-a-symbol)](StructureDefinition-mii-pr-onko-tnm-a-symbol.md)
* [MII PR Onkologie TNM r-Symbol (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-r-symbol)](StructureDefinition-mii-pr-onko-tnm-r-symbol.md)
* [MII PR Onkologie TNM y-Symbol (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-y-symbol)](StructureDefinition-mii-pr-onko-tnm-y-symbol.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 1 element(2 nested mandatory elements)
 Must-Support: 13 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* [MII PR Onkologie Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)](StructureDefinition-mii-pr-onko-specimen.md)
* [MII PR Onkologie TNM L-Kategorie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-l-kategorie)](StructureDefinition-mii-pr-onko-tnm-l-kategorie.md)
* [MII PR Onkologie TNM M-Kategorie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie)](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md)
* [MII PR Onkologie TNM m-Symbol (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-symbol)](StructureDefinition-mii-pr-onko-tnm-m-symbol.md)
* [MII PR Onkologie TNM N-Kategorie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie)](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md)
* [MII PR Onkologie TNM T-Kategorie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie)](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md)
* [MII PR Onkologie TNM Pn-Kategorie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-pn-kategorie)](StructureDefinition-mii-pr-onko-tnm-pn-kategorie.md)
* [MII PR Onkologie TNM S-Kategorie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-s-kategorie)](StructureDefinition-mii-pr-onko-tnm-s-kategorie.md)
* [MII PR Onkologie TNM V-Kategorie (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-v-kategorie)](StructureDefinition-mii-pr-onko-tnm-v-kategorie.md)
* [MII PR Onkologie TNM a-Symbol (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-a-symbol)](StructureDefinition-mii-pr-onko-tnm-a-symbol.md)
* [MII PR Onkologie TNM r-Symbol (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-r-symbol)](StructureDefinition-mii-pr-onko-tnm-r-symbol.md)
* [MII PR Onkologie TNM y-Symbol (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-y-symbol)](StructureDefinition-mii-pr-onko-tnm-y-symbol.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-tnm-klassifikation.csv), [Excel](../StructureDefinition-mii-pr-onko-tnm-klassifikation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-tnm-klassifikation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-tnm-klassifikation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_TNM_Klassifikation",
  "title" : "MII PR Onkologie TNM-Klassifikation",
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
  "description" : "TNM-Klassifikation: Grouper-Profil für Komponenten der TNM-Klassifikation.",
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
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-klassifikation-typ"
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "TNM-Datum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TNM-Datum"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum der TNM-Klassifikation nach 8.1 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der TNM-Klassifikation nach 8.1 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "dateTime"
      }],
      "constraint" : [{
        "key" : "tnm-datum",
        "severity" : "error",
        "human" : "TNM Datum: Ein exaktes (taggenaues) Datum ist anzugeben.",
        "expression" : "$this.toString().length() >= 8",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "8.1",
        "comment" : "TNM Datum"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-uicc-stadium"
      }
    },
    {
      "id" : "Observation.value[x].coding",
      "path" : "Observation.value[x].coding",
      "short" : "UICC Stadium",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "UICC-Staging"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Stadium nach aktuell gültiger TNM-Klassifikation.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "UICC-Staging nach 8.17 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.value[x].coding.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "8.17",
        "comment" : "UICC Stadium"
      }]
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "TNM Version",
      "definition" : "Gibt an, nach welcher Version des TNM klassifiziert wurde.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-version"
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "8.2",
        "comment" : "TNM Version"
      }]
    },
    {
      "id" : "Observation.method.coding",
      "path" : "Observation.method.coding",
      "short" : "TNM-Version",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TNM-Version"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "TNM-Version nach 8.2 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "TNM-Version nach 8.2 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen",
        "http://hl7.org/fhir/StructureDefinition/Specimen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-l-kategorie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-symbol",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-pn-kategorie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-s-kategorie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-v-kategorie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-a-symbol",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-r-symbol",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-y-symbol"]
      }],
      "mustSupport" : true
    }]
  }
}

```
