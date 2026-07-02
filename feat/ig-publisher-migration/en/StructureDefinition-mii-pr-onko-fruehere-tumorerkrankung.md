# MII PR Onkologie Frühere Tumorerkrankung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Resource Profile: MII PR Onkologie Frühere Tumorerkrankung 

 
Dieses Profil beschreibt frühere Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert/behandelt wurden. Basiert auf FHIR Condition, da historische Daten oft nur als Freitext vorliegen. 

### Inhalt

Dieses Profil beschreibt frühere Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert oder behandelt wurden. Es basiert auf der FHIR Condition-Ressource, da historische anamnestische Daten häufig nur als Freitext vorliegen.

-------

### Abgrenzung zur Primärtumordiagnose

Im Gegensatz zum Profil "Diagnose Primärtumor" (MII_PR_Onko_Diagnose_Primaertumor), welches die aktuelle onkologische Erkrankung beschreibt, dient dieses Profil zur Erfassung **früherer** Tumorerkrankungen aus der Patientenanamnese.

**Wesentliche Unterschiede:**

* **Datenquelle**: Frühere Tumorerkrankungen stammen oft aus Freitextangaben der Anamnese, während die Primärtumordiagnose auf aktuellen diagnostischen Befunden basiert
* **Kodierungsanforderungen**: Code.text ist verpflichtend, ICD-10-GM Kodierung ist optional (bei Primärtumor verpflichtend)
* **Basisprofil**: Basiert auf FHIR Condition (nicht auf MII Diagnose), um flexible Freitexterfassung zu ermöglichen
* **Detailgrad**: Reduzierte Anforderungen an Diagnosesicherung, Topographie und weitere Details

-------

### Anwendungshinweise

#### Pflichtangaben

* **code.text**: Textuelle Beschreibung der früheren Tumorerkrankung (z.B. "Hautkrebs am Rücken, ca. 2010")
* **category**: Kategorisierung als onkologische Diagnose (SNOMED CT: 394593009 "Medical oncology")
* **subject**: Referenz auf den Patienten

#### Optionale Angaben

* **code.coding[icd10-gm]**: ICD-10-GM Kodierung, falls retrospektiv ermittelbar
* **bodySite.coding[icd-o-3]**: ICD-O-3 Topographie, falls bekannt
* **extension[assertedDate]**: Diagnosedatum der früheren Tumorerkrankung
* **clinicalStatus**: Aktueller klinischer Status (z.B. resolved, remission)
* **verificationStatus**: Verifizierungsstatus (z.B. confirmed, unconfirmed)
* **note**: Zusätzliche Informationen zur früheren Tumorerkrankung

-------

### Mapping zu oBDS 5.9

Das Profil bildet die oBDS-Anforderung für "Frühere Tumorerkrankungen" (Abschnitt 5.9) ab:

| | | |
| :--- | :--- | :--- |
| Frühere Tumorerkrankung Beschreibung | code.text | Pflichtfeld |
| Frühere Tumorerkrankung ICD-10-GM Code | code.coding[icd10-gm].code | Optional |
| Frühere Tumorerkrankung ICD-10-GM Version | code.coding[icd10-gm].version | Optional |
| Frühere Tumorerkrankung Diagnosedatum | extension[assertedDate].valueDateTime | Optional |
| Frühere Tumorerkrankung ICD-O-3 Topographie | bodySite.coding[icd-o-3].code | Optional |

-------

### Beispiele

**Beispiel 1: Mit ICD-10-GM Kodierung**

```
Code.text: "Mamma-Ca, links"
Code.coding[icd10-gm]: C50.9 (ICD-10-GM 2013)
BodySite.coding[icd-o-3]: C50.9 "Breast, NOS"
Extension[assertedDate]: 2013
ClinicalStatus: resolved

```

**Beispiel 2: Nur Freitext (typische anamnestische Angabe)**

```
Code.text: "Hautkrebs am Rücken, ca. 2010"
Extension[assertedDate]: 2010
ClinicalStatus: resolved
Note: "Patient berichtet von operativ entferntem Hautkrebs vor ca. 14 Jahren"

```

Vollständige Beispiele finden sich in den Instanzen:

* `mii-exa-onko-fruehere-tumorerkrankung-cervix` - Cervix-Ca in situ
* `mii-exa-onko-fruehere-tumorerkrankung-mamma` - Mammakarzinom
* `mii-exa-onko-fruehere-tumorerkrankung-prostata` - Prostatakarzinom
* `mii-exa-onko-fruehere-tumorerkrankung-freetext` - Nur Freitext ohne ICD-Kodierung

-------

### Konformität

Das Profil ist kompatibel mit der FHIR Condition-Ressource R4.

-------

**Suchparameter**

Folgende Suchparameter sind für das Profil Frühere Tumorerkrankung relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?code=http://fhir.de/CodeSystem/bfarm/icd-10-gm|C50.9`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?subject=Patient/test`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "patient" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?patient=Patient/test`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "body-site" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?body-site=http://terminology.hl7.org/CodeSystem/icd-o-3|C50.9`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.bodySite" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "clinical-status" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?clinical-status=resolved`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.clinicalStatus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

-------

**Beispiele**

Beispiel 1: Frühere Tumorerkrankung Mamma (mit ICD-10-GM und ICD-O-3 Kodierung)

[Beispiel: mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.md)

-------

Beispiel 2: Frühere Tumorerkrankung Cervix in situ (mit ICD-10-GM Kodierung)

[Beispiel: mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.md)

-------

Beispiel 3: Frühere Tumorerkrankung Prostata (mit ICD-10-GM und ICD-O-3 Kodierung)

[Beispiel: mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.md)

-------

Beispiel 4: Frühere Tumorerkrankung nur Freitext (typische anamnestische Angabe ohne Kodierung)

[Beispiel: mii-exa-onko-fruehere-tumorerkrankung-freetext](Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* Examples for this Profile: [Condition/mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-freetext](Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.md), [Condition/mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.md) and [Condition/mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.csv), [Excel](../StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-fruehere-tumorerkrankung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Fruehere_Tumorerkrankung",
  "title" : "MII PR Onkologie Frühere Tumorerkrankung",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Frühere Tumorerkrankung"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
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
  "description" : "Dieses Profil beschreibt frühere Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert/behandelt wurden. Basiert auf FHIR Condition, da historische Daten oft nur als Freitext vorliegen.",
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankungen"
      }]
    },
    {
      "id" : "Condition.meta.profile",
      "path" : "Condition.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension",
      "path" : "Condition.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:assertedDate",
      "path" : "Condition.extension",
      "sliceName" : "assertedDate",
      "short" : "Diagnosedatum der früheren Tumorerkrankung",
      "definition" : "Datum der früheren Tumorerkrankung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/condition-assertedDate"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:assertedDate.value[x]",
      "path" : "Condition.extension.value[x]",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung Diagnosedatum"
      }]
    },
    {
      "id" : "Condition.extension:morphology-behavior-icdo3",
      "path" : "Condition.extension",
      "sliceName" : "morphology-behavior-icdo3",
      "short" : "ICD-O-Morphologie",
      "definition" : "Morphologie der früheren Tumorerkrankung nach ICD-O-3",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-clinical"
      }
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-ver-status"
      }
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.category:oncology",
      "path" : "Condition.category",
      "sliceName" : "oncology",
      "short" : "Kategorisierung als onkologische Diagnose",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kategorisierung als onkologische Diagnose"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "394593009",
          "display" : "Medical oncology (qualifier value)"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.code.coding:icd10-gm",
      "path" : "Condition.code.coding",
      "sliceName" : "icd10-gm",
      "short" : "ICD-10-GM Kodierung (optional)",
      "definition" : "ICD-10-GM Kodierung der früheren Tumorerkrankung, falls verfügbar",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:icd10-gm.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "patternUri" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:icd10-gm.version",
      "path" : "Condition.code.coding.version",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung ICD-10-GM Version"
      }]
    },
    {
      "id" : "Condition.code.coding:icd10-gm.code",
      "path" : "Condition.code.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung ICD-10-GM Code"
      }]
    },
    {
      "id" : "Condition.code.text",
      "path" : "Condition.code.text",
      "short" : "Textuelle Beschreibung der früheren Tumorerkrankung (Pflichtfeld)",
      "definition" : "Freitextbeschreibung der früheren Tumorerkrankung",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung Beschreibung"
      }]
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite.coding",
      "path" : "Condition.bodySite.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.bodySite.coding:icd-o-3",
      "path" : "Condition.bodySite.coding",
      "sliceName" : "icd-o-3",
      "short" : "ICD-O-3 Topographie",
      "definition" : "Anatomische Lokalisation nach ICD-O-3",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite.coding:icd-o-3.system",
      "path" : "Condition.bodySite.coding.system",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite.coding:icd-o-3.code",
      "path" : "Condition.bodySite.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-topographie"
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankung ICD-O-3 Topographie"
      }]
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "mustSupport" : true
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "mustSupport" : true
    }]
  }
}

```
