# MII EX Onko Histology Morphology Behavior ICDO3 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Extension: MII EX Onko Histology Morphology Behavior ICDO3 

Extension zur Erfassung von ICDO3 da Morphology nicht als Condition.code. Orientiert sich an mcode-stu3.0.

**Context of Use**

## Extensions von Operation

* Diese Extension ersetzt den vorheringen ICD-O-3-Slice in der MII-Diagnose.
* In der ursprünglichen Profilierung wurde auf demICD-O-3-Slice des `Condition.code`-Elements aufgebaut. Gleichzeitig enthält das `Condition.code`-Feld auch die ICD-10-Kodierung der onkologischen Diagnose. In der Kommentierungsphase wurde jedoch angemerkt, dass eine ICD-O-3-Morphologie ein inhaltlich anderes klinisches Konzept beschreibt als eine ICD-10-kodierte Diagnose. Ein Darstellung im gleichen CodeableConcept widerspricht daher gängigen FHIR-Modellierungskonventionen. Daher wurde sich für eine Modellierung als Extension vergleichbar mit mCode entschieden. Die Abbildung der ICD-O-3-Topographie über `Condition.bodySite` ist davon nicht beeinträchtigt. Weitere Histologien, die im Rahmen einer Verlaufskontrolle vorgenommen werden, sollen weiterhin über das Verlaufshistologieprofil (Observation.bodySite und Observation.valueCodeableConcept) abgebildet werden; die vorliegende Extension findet darin keine Verwendung.

**Usage info**

**Usages:**

* Use this Extension: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md) and [MII PR Onkologie Frühere Tumorerkrankung](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md)
* Examples for this Extension: [Condition/mii-exa-onko-diagnose](Condition-mii-exa-onko-diagnose.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-ex-onko-histology-morphology-behavior-icdo3.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept: Extension zur Erfassung von ICDO3 da Morphology nicht als Condition.code. Orientiert sich an mcode-stu3.0.

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept: Extension zur Erfassung von ICDO3 da Morphology nicht als Condition.code. Orientiert sich an mcode-stu3.0.

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-onko-histology-morphology-behavior-icdo3.csv), [Excel](../StructureDefinition-mii-ex-onko-histology-morphology-behavior-icdo3.xlsx), [Schematron](../StructureDefinition-mii-ex-onko-histology-morphology-behavior-icdo3.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-onko-histology-morphology-behavior-icdo3",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3",
  "version" : "2026.0.3",
  "name" : "MII_EX_Onko_Histology_Morphology_Behavior_ICDO3",
  "title" : "MII EX Onko Histology Morphology Behavior ICDO3",
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
  "description" : "Extension zur Erfassung von ICDO3 da Morphology nicht als Condition.code. Orientiert sich an mcode-stu3.0.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Onko Histology Morphology Behavior ICDO3",
      "definition" : "Extension zur Erfassung von ICDO3 da Morphology nicht als Condition.code. Orientiert sich an mcode-stu3.0."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-morphologie"
      }
    },
    {
      "id" : "Extension.value[x].coding.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/icd-o-3"
    },
    {
      "id" : "Extension.value[x].coding.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].text",
      "path" : "Extension.value[x].text",
      "mustSupport" : true
    }]
  }
}

```
