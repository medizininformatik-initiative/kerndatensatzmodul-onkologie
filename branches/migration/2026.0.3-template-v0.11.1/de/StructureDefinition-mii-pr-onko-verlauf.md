# MII PR Onkologie Verlauf - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Verlauf**

## Ressourcenprofil: MII PR Onkologie Verlauf 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_PR_Onko_Verlauf |

 
Dieses Profil beschreibt die Verlaufskontrolle und verweist ggfs. auf andere verlaufsrelevante diagnostische Maßnahmen 

### Kontext

Dieses Profil beschreibt eine Verlaufsbeobachtung im Rahmen der onkologischen Therapie.

Im oBDS ist die Verlaufsmeldung eine von mehreren Meldearten. Die Verlaufsmeldung kann dabei mehrere andere Meldeinhalte enthalten. In der vorliegenden FHIR-Profilierung sind Verlaufs-Beobachtungen neben Tumorkonferenzen eine der zwei entscheidenden Ressourcentypen, die der zeitlichen Modellierung des Behandlungsverlaufs dienen.

Die korrekte Kodierung und Interpretation der Krebsregister-Verlaufsdaten ist nicht trivial - Details sind dem Dokumentationsleitfaden der Plattform §65c zu entnehmen.

https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/75628552/Verlaufsmeldung

-------

### Conformance Statements

* Eine Verlaufs-Beobachtung **SOLL** mittels `focus` einen Verweis auf die Primärdiagnose haben
* Eine Verlaufs-Beobachtung **SOLLTE** im `value` eine Einschätzung des Krankheitsprogresses (PD, PR, MR etc.) beinhalten, insofern diese vorgenommen wurde und in den Daten vorliegt
* Eine Verlaufs-Beobachtung **SOLLTE** weitherin im `component` Einschätzungen zum Staging des Tumors, der Lymphknoten und der Fernmetastasen enthalten, insofern diese vorgenommen wurden und diese für das Staging relevant sind
* Da die FHIR-Profilierung keine komplette Verlaufs-Meldung abbildet, **SOLLEN** andere Beobachtungen, die zusätzlich oder abweichend zu den oben genannenten TNM-Kriterien für das Staging relevant sind, von der Verlaufs-Beobachtung über `hasMember` referenziert werden. Beispielsweise sind das neu diagnostizierte Fernmetastasen, zusätzlich angefertigte Histologien oder später im Verlauf durchgeführte genetische Untersuchungen. Diese Beobachtungen **KÖNNEN** direkt aus den oBDS-Meldeinhalten der jeweiligen Verlaufs-Meldung übernommen werden.

-------

Mapping Datensatz zu FHIR

> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.md).

-------

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter `_id` MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_id=1234`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "identfier" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?identfier=http://charite.de/labor/labortests|1234`Anwendungshinweise: Weitere Informationen zur Suche nach "identfier" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "focus" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?focus=Condition/example`Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?encounter=Encounter/example`Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "component-code-value-concept" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?component-code-value-concept=http://loinc.org|12345-6$http://fhir.de/CodeSystem/sct|12345678`Anwendungshinweise: Weitere Informationen zur Suche nach "components" finden sich in der FHIR-Basisspezifikation - Abschnitt "compodsite".

**Beispiele**

[mii-exa-onko-verlauf-tumor](Observation-mii-exa-onko-verlauf-tumor.md)

**Usages:**

* Examples for this Profile: [Observation/PatientKimMusterperson-Verlauf-2022-01-22](Observation-PatientKimMusterperson-Verlauf-2022-01-22.md), [Observation/mii-exa-onko-folfox-verlauf-6months](Observation-mii-exa-onko-folfox-verlauf-6months.md), [Observation/mii-exa-onko-modification-verlauf-6months](Observation-mii-exa-onko-modification-verlauf-6months.md), [Observation/mii-exa-onko-verlauf-journey-post-chemo](Observation-mii-exa-onko-verlauf-journey-post-chemo.md)... Show 3 more, [Observation/mii-exa-onko-verlauf-journey-post-surgery](Observation-mii-exa-onko-verlauf-journey-post-surgery.md), [Observation/mii-exa-onko-verlauf-journey-recurrence](Observation-mii-exa-onko-verlauf-journey-recurrence.md) and [Observation/mii-exa-onko-verlauf-tumor](Observation-mii-exa-onko-verlauf-tumor.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-verlauf.json)

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

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 2 elements(3 nested mandatory elements)
 Must-Support: 22 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.effective[x]
* The element 1 is sliced based on the value of Observation.value[x]
* The element 1 is sliced based on the value of Observation.component

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 2 elements(3 nested mandatory elements)
 Must-Support: 22 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.effective[x]
* The element 1 is sliced based on the value of Observation.value[x]
* The element 1 is sliced based on the value of Observation.component

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-verlauf.csv), [Excel](../StructureDefinition-mii-pr-onko-verlauf.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-verlauf.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-verlauf",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Verlauf",
  "title" : "MII PR Onkologie Verlauf",
  "status" : "active",
  "date" : "2026-08-27T15:31:43+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Dieses Profil beschreibt die Verlaufskontrolle und verweist ggfs. auf andere verlaufsrelevante diagnostische Maßnahmen",
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
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "396432002",
        "display" : "Status of regression of tumor (observable entity)"
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
      "min" : 1,
      "max" : "1",
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
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]:effectiveDateTime",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
      "comment" : "In der vorliegenden ersten Version des Moduls Onkologie ist das letzte (= späteste) Datum der verlinkten Observations anzugeben, entsprechend Punkt 17.1 des oBDS 2021. Langfristig ist zu überlegen, hier über eine effectivePeriod eine Datumsrange abzubilden. ",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.1",
        "comment" : "Datum, an dem die letzte Untersuchung durchgeführt wurde, die zur Einschätzung des Tumorstatus geführt hat."
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-gesamtbeurteilung"
      }
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding",
      "path" : "Observation.value[x].coding",
      "short" : "Gesamtbeurteilung im Verlauf",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Untersuchung im Verlauf"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung im Verlauf"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Gesamtbeurteilung im Verlauf gemäß 17.2 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der letzten Untersuchung in dieser Verlaufsbeurteilung gemäß 17.1 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung im Verlauf gemäß 17.2 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding.system",
      "path" : "Observation.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding.code",
      "path" : "Observation.value[x].coding.code",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.2",
        "comment" : "Gesamtbeurteilung des Tumorstatus"
      }]
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code.coding"
        }],
        "description" : "Specific tumor status components (0..* to support cases with no changes, hematological cancers where TNM doesn't apply, or impossible assessments)",
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Tumor_Verlauf",
      "path" : "Observation.component",
      "sliceName" : "Tumor_Verlauf",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Tumor_Verlauf.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "445200009",
        "display" : "Status of residual neoplasm (observable entity)"
      }
    },
    {
      "id" : "Observation.component:Tumor_Verlauf.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.3",
        "comment" : "Tumorstatus Primärtumor"
      }]
    },
    {
      "id" : "Observation.component:Tumor_Verlauf.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-primaertumor"
      }
    },
    {
      "id" : "Observation.component:Tumor_Verlauf.value[x].coding",
      "path" : "Observation.component.value[x].coding",
      "short" : "Gesamtbeurteilung Primärtumor im Verlauf",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung Primärtumor im Verlauf"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Gesamtbeurteilung des Primärtumors im Verlauf gemäß 17.3 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung des Primärtumors im Verlauf gemäß 17.3 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.component:Tumor_Verlauf.value[x].coding.system",
      "path" : "Observation.component.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Tumor_Verlauf.value[x].coding.code",
      "path" : "Observation.component.value[x].coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Lymphknoten_Verlauf",
      "path" : "Observation.component",
      "sliceName" : "Lymphknoten_Verlauf",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Lymphknoten_Verlauf.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "399656008",
        "display" : "Presence of metastatic neoplasm in regional lymph node (observable entity)"
      }
    },
    {
      "id" : "Observation.component:Lymphknoten_Verlauf.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.4",
        "comment" : "Tumorstatus Lymphknoten"
      }]
    },
    {
      "id" : "Observation.component:Lymphknoten_Verlauf.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-lymphknoten"
      }
    },
    {
      "id" : "Observation.component:Lymphknoten_Verlauf.value[x].coding",
      "path" : "Observation.component.value[x].coding",
      "short" : "Gesamtbeurteilung Lymphknoten im Verlauf",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung Lymphknoten im Verlauf"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Gesamtbeurteilung der Lymphknoteninfiltration im Verlauf gemäß 17.4 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung der Lymphknoteninfiltration im Verlauf gemäß 17.4 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.component:Lymphknoten_Verlauf.value[x].coding.system",
      "path" : "Observation.component.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Lymphknoten_Verlauf.value[x].coding.code",
      "path" : "Observation.component.value[x].coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Fernmetastasen_Verlauf",
      "path" : "Observation.component",
      "sliceName" : "Fernmetastasen_Verlauf",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Fernmetastasen_Verlauf.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "399608002",
        "display" : "Status of distant metastasis (observable entity)"
      }
    },
    {
      "id" : "Observation.component:Fernmetastasen_Verlauf.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.5",
        "comment" : "Tumorstatus Fernmetastasen"
      }]
    },
    {
      "id" : "Observation.component:Fernmetastasen_Verlauf.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-fernmetastasen"
      }
    },
    {
      "id" : "Observation.component:Fernmetastasen_Verlauf.value[x].coding",
      "path" : "Observation.component.value[x].coding",
      "short" : "Gesamtbeurteilung Fernmetastasen im Verlauf",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung Fernmetastasen im Verlauf"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Gesamtbeurteilung von Fernmetastasen im Verlauf gemäß 17.5 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtbeurteilung von Fernmetastasen im Verlauf gemäß 17.5 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.component:Fernmetastasen_Verlauf.value[x].coding.system",
      "path" : "Observation.component.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Fernmetastasen_Verlauf.value[x].coding.code",
      "path" : "Observation.component.value[x].coding.code",
      "mustSupport" : true
    }]
  }
}

```
