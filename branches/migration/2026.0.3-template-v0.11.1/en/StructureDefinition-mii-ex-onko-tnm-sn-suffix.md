# MII EX Onkologie TNM SN Suffix - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Onkologie TNM SN Suffix**

## Extension: MII EX Onkologie TNM SN Suffix 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-sn-suffix | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_EX_Onko_TNM_SN_Suffix |

Die Extension verleiht der TNM N-Kategorie das Schildwächterlymphknoten (Sentinel Lymph Node) Suffix.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Onkologie TNM N-Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md)
* Examples for this Extension: [Observation/mii-exa-onko-tnm-n-kategorie-pN0i-sn](Observation-mii-exa-onko-tnm-n-kategorie-pN0i-sn.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-ex-onko-tnm-sn-suffix.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-onko-tnm-sn-suffix.csv), [Excel](../StructureDefinition-mii-ex-onko-tnm-sn-suffix.xlsx), [Schematron](../StructureDefinition-mii-ex-onko-tnm-sn-suffix.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-onko-tnm-sn-suffix",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-sn-suffix",
  "version" : "2026.0.3",
  "name" : "MII_EX_Onko_TNM_SN_Suffix",
  "title" : "MII EX Onkologie TNM SN Suffix",
  "status" : "active",
  "date" : "2026-08-28T07:24:31+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Die Extension verleiht der TNM N-Kategorie das Schildwächterlymphknoten (Sentinel Lymph Node) Suffix.",
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
    "expression" : "CodeableConcept"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Onkologie TNM SN Suffix",
      "definition" : "Die Extension verleiht der TNM N-Kategorie das Schildwächterlymphknoten (Sentinel Lymph Node) Suffix."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-sn-suffix"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-sn-suffix"
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
