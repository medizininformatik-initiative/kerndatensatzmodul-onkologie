# MII EX Onkologie TNM c/p Präfix - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Onkologie TNM c/p Präfix**

## Extension: MII EX Onkologie TNM c/p Präfix 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_EX_Onko_TNM_cp_Praefix |

Die Extension verleiht einer TNM T-, N- oder M-Kategorie ein c, p oder u Präfix zur Angabe der Klassifikationsmethode: 'c' = klinische Klassifikation (basierend auf klinischen Angaben), 'p' = pathologische Klassifikation (basierend auf pathohistologischer Untersuchung), 'u' = Ultraschall-basierte Klassifikation.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Onkologie TNM M-Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md), [MII PR Onkologie TNM N-Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md) and [MII PR Onkologie TNM T-Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md)
* Examples for this Extension: [Bundle/mii-exa-onko-folfox-workflow-bundle](Bundle-mii-exa-onko-folfox-workflow-bundle.md), [Observation/TNM-M-Observation-2](Observation-TNM-M-Observation-2.md), [Observation/TNM-T-Observation-2](Observation-TNM-T-Observation-2.md), [Observation/mii-exa-onko-ascending-colon-tnm-m](Observation-mii-exa-onko-ascending-colon-tnm-m.md)... Show 11 more, [Observation/mii-exa-onko-ascending-colon-tnm-n](Observation-mii-exa-onko-ascending-colon-tnm-n.md), [Observation/mii-exa-onko-ascending-colon-tnm-t](Observation-mii-exa-onko-ascending-colon-tnm-t.md), [Observation/mii-exa-onko-colorectal-tnm-m](Observation-mii-exa-onko-colorectal-tnm-m.md), [Observation/mii-exa-onko-colorectal-tnm-n](Observation-mii-exa-onko-colorectal-tnm-n.md), [Observation/mii-exa-onko-colorectal-tnm-t](Observation-mii-exa-onko-colorectal-tnm-t.md), [Observation/mii-exa-onko-tnm-m-kategorie-M0](Observation-mii-exa-onko-tnm-m-kategorie-M0.md), [Observation/mii-exa-onko-tnm-m-kategorie-cM1](Observation-mii-exa-onko-tnm-m-kategorie-cM1.md), [Observation/mii-exa-onko-tnm-n-kategorie-N0](Observation-mii-exa-onko-tnm-n-kategorie-N0.md), [Observation/mii-exa-onko-tnm-n-kategorie-pN0i-sn](Observation-mii-exa-onko-tnm-n-kategorie-pN0i-sn.md), [Observation/mii-exa-onko-tnm-t-kategorie-Tis](Observation-mii-exa-onko-tnm-t-kategorie-Tis.md) and [Observation/mii-exa-onko-tnm-t-kategorie-uT2a2](Observation-mii-exa-onko-tnm-t-kategorie-uT2a2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-ex-onko-tnm-cp-praefix.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-ex-onko-tnm-cp-praefix.csv), [Excel](StructureDefinition-mii-ex-onko-tnm-cp-praefix.xlsx), [Schematron](StructureDefinition-mii-ex-onko-tnm-cp-praefix.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-onko-tnm-cp-praefix",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
  "version" : "2026.0.3",
  "name" : "MII_EX_Onko_TNM_cp_Praefix",
  "title" : "MII EX Onkologie TNM c/p Präfix",
  "status" : "active",
  "date" : "2026-07-23T12:42:42+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Die Extension verleiht einer TNM T-, N- oder M-Kategorie ein c, p oder u Präfix zur Angabe der Klassifikationsmethode: 'c' = klinische Klassifikation (basierend auf klinischen Angaben), 'p' = pathologische Klassifikation (basierend auf pathohistologischer Untersuchung), 'u' = Ultraschall-basierte Klassifikation.",
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
    "expression" : "CodeableConcept"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Onkologie TNM c/p Präfix",
      "definition" : "Die Extension verleiht einer TNM T-, N- oder M-Kategorie ein c, p oder u Präfix zur Angabe der Klassifikationsmethode: 'c' = klinische Klassifikation (basierend auf klinischen Angaben), 'p' = pathologische Klassifikation (basierend auf pathohistologischer Untersuchung), 'u' = Ultraschall-basierte Klassifikation."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-cp-praefix"
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
