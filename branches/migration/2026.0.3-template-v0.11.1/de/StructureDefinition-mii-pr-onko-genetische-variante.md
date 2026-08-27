# MII PR Onkologie Genetische Variante - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Genetische Variante**

## Ressourcenprofil: MII PR Onkologie Genetische Variante 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_PR_Onko_Genetische_Variante |

 
Genetische Variante wie im oBDS beschrieben 

### Kontext

Die Informationen zu genetischen Varianten werden seit der Version 2021 als Teil des oBDS erfasst. Die Erfassung einer Variante erfolgt dabei über zwei Datenfelder:

* 'Genetische Variante Name' als Freitext
* 'Genetische Variante Ausprägung' als oBDS-spezifische Codes für die Interpretation.

Die MII bietet mit dem Molekulargenetischen Befundbericht (MolGenBB) bereits eine Struktur für den Austausch genetischer Befunde. Der MolGenBB basiert auf dem GenomicReport (Version STU2) der internationalen HL7 Clinical Genomics Working Group und verwendet internationale Terminologien und Nomenklaturen wie:

* **HGNC** für die eindeutige Beschreibung von Gennamen
* **HGVS** für die Beschreibung von Varianten im kodierenden und nicht-kodierenden DNA-Bereich sowie für Proteine
* **ISCN** für Beschreibung cytogenomischer Position und strukturellen Varianten
* **Sequence Ontology** für die semantische Annotation der Varianten

Es ist davon auszugehen, dass die genetischen Labore und bioinformatischen Pipelines auf Basis dieser Klassifikationen arbeiten oder diese abbilden können.

Die grobkörnige Erfassung der Variantendaten im oBDS macht jedoch ein direktes Mapping auf die oben genannten Terminologien und Nomenklaturen unmöglich.

### Conformance Statements

Nach Möglichkeit **SOLLTE** eine genauere Variantenbeschreibung über die MII Variante erfolgen.

Eine Einbindung dieser Varianten **SOLLTE** über die Einbettung in den MII Molekulargenetischen Befundbericht `DiagnosticReport`und die MII Molekulargenetische Anforderung `ServiceRequest` erfolgen.

Für den Fall, dass diese Module an den DIZ-Standorten gar nicht, noch nicht oder nur teilweise implementierbar sind, **SOLL** ein direktes Mapping der oBDS-Felder auf folgende Felder erfolgen:

* `Observation.note` für Variante Name
* `Observation.interpretation` für die Ausprägung der Variante.

### Übersicht MII Variante

Das Variantenprofil des Molekularen Befundberichts ist hier zu finden: https://simplifier.net/medizininformatikinitiative-modulomics/sdmiimolgenvariante

Bei der Verwendung der MII Variante sind folgende Datenfelder zur Konformanz zwingend erforderlich:

* `subject`: Referenz auf einen Patient
* `code` : fester LOINC-Code( 69548-6) zur Identifikation als Untersuchung einer genetischen Variante
* `status` : HL7 Status
* `category`: fester HL7-Code zur Einordnung als Laborwert

Optional können darüber hinaus folgende Angaben gemacht werden:

* `specimen`: Referenz auf die Bioprobe
* `method`: Methodik der Untersuchung
* `valueCodeableConcept` Varianten-Assessment (präsent, nicht präsent, nicht gecalled, unbestimmt)
* `component`: alle weiteren Details über die methodische Durchführung und Auswertung sowie Varianteninformationen

-------

Mapping Datensatz zu FHIR

> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Genetische Variante](StructureDefinition-mii-pr-onko-genetische-variante.md).

-------

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter `_id` MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_id=1234`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter `_profile` MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "status" MUSS unterstützt werden:Beispiele:```GET [base]/Observation?status=finalAnwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".```
1. Der Suchparameter "category" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory`Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "focus" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?focus=Condition/example`Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?encounter=Encounter/example`Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "interpretation" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?interpretation=http://snomed.info/sct|55446002`Anwendungshinweise: Weitere Informationen zur Suche nach "interpretation" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "method" MUSS unterstützt werden:Beispiele:

| | |
| :--- | :--- |
| ```GET [base]/Observation?method=http://loinc.org | LA26398-0 |

Anwendungshinweise: Weitere Informationen zur Suche nach "method" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".```
1. Der Suchparameter "specimen" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?specimen=Specimen/example`Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "device" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?device-from=Device/example`Anwendungshinweise: Weitere Informationen zur Suche nach "device" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "derived-from" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?derived-from=Observation/example`Anwendungshinweise: Weitere Informationen zur Suche nach "derived-from" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

**Beispiele**

[mii-exa-onko-genetische-variante-braf](Observation-mii-exa-onko-genetische-variante-braf.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-genetische-variante-braf](Observation-mii-exa-onko-genetische-variante-braf.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-genetische-variante.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MolGen_Variante](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MolGen_Variante](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante) 

** Summary **

Must-Support: 11 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* [MII PR Onkologie Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)](StructureDefinition-mii-pr-onko-specimen.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.value[x] (Closed)
* The element 1 is sliced based on the value of Observation.interpretation

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_MolGen_Variante](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_MolGen_Variante](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.molgen@2026.0.4&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante) 

** Summary **

Must-Support: 11 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* [MII PR Onkologie Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)](StructureDefinition-mii-pr-onko-specimen.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.value[x] (Closed)
* The element 1 is sliced based on the value of Observation.interpretation

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-genetische-variante.csv), [Excel](../StructureDefinition-mii-pr-onko-genetische-variante.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-genetische-variante.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-genetische-variante",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Genetische_Variante",
  "title" : "MII PR Onkologie Genetische Variante",
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
  "description" : "Genetische Variante wie im oBDS beschrieben",
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
    "identity" : "MII-KDS",
    "name" : "MII KDS Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "23",
        "comment" : "Genetische Variante"
      }]
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
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
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "closed"
      },
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding.system",
      "path" : "Observation.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding.code",
      "path" : "Observation.value[x].coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "23.2",
        "comment" : "Genetische Variante Ausprägung"
      }]
    },
    {
      "id" : "Observation.interpretation:oBDS",
      "path" : "Observation.interpretation",
      "sliceName" : "oBDS",
      "min" : 0,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-genetische-variante-auspraegung"
      }
    },
    {
      "id" : "Observation.interpretation:oBDS.coding",
      "path" : "Observation.interpretation.coding",
      "short" : "Genetische Variante Ausprägung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Genetische Variante Ausprägung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Genetische Variante Ausprägung gemäß 23.1 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Genetische Variante Ausprägung gemäß 23.2 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.interpretation:oBDS.coding.system",
      "path" : "Observation.interpretation.coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation:oBDS.coding.code",
      "path" : "Observation.interpretation.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "23.1",
        "comment" : "Genetische Variante Name"
      }]
    },
    {
      "id" : "Observation.note.text",
      "path" : "Observation.note.text",
      "short" : "Genetische Variante Name",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Genetische Variante Name"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Genetische Variante Name gemäß 23.1 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Genetische Variante Name gemäß 23.1 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "short" : "Tumor-Specimen aus dem die Variante bestimmt wurde",
      "definition" : "Referenz auf die Tumorprobe (Specimen), aus der die genetische Variante bestimmt wurde. Optional, da die Methodik auch über GenomicStudy abgebildet werden kann.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen"]
      }]
    }]
  }
}

```
