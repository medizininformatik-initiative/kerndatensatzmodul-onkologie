# MII PR Onkologie Strahlentherapie Nuklearmedizin - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Strahlentherapie Nuklearmedizin**

## Resource Profile: MII PR Onkologie Strahlentherapie Nuklearmedizin 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_PR_Onko_Strahlentherapie_Bestrahlung_Nuklearmedizin |

 
Strahlentherapie. Dieses Profil beschreibt eine Nuklearmedizinische in der Onkologie. 

This profile describes "individual irradiations" of nuclear medicine therapy in oncology. This profile is intended to cover both brachytherapies and the systemic administration of radioactive metabolites or similar. The profile for oncology is based on the procedure profile of the MII base module Procedure. Each brachytherapeutic procedure or systemic nuclear medicine therapy refers to a parent radiotherapy procedure, which contains overarching information such as intention and outcome.

#### Implementation recommendation

From the points mentioned above, the following coding recommendation results for the oBDS nuclear medicine treatment:

* Category as SNOMED code 
* Category for nuclear medicine `399315003 | Radionuclide therapy (procedure)`
 
* Coding via OPS 
* Nuclear medicine therapy as OPS `8-53 Nuklearmedizinische Therapie` (or more specific if available)
 

-------

### Conformance

The present profiling is compatible with the procedure profile of the ISiK base modules level 4. https://simplifier.net/isik-basis-v4/isikprozedur

-------

Mapping dataset to FHIR

> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Strahlentherapie Nuklearmedizin](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.md).

-------

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Procedure?_id=103270`Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "_profile" MUST be supported:Examples:`GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure`Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "status" MUST be supported:Examples:`GET [base]/Procedure?status=completed`Usage notes: Further information on searching by "Procedure.status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "category" MUST be supported:Examples:`GET [base]/Procedure?category=http://snomed.info/sct|103693007`Usage notes: Further information on searching by "Procedure.category" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37`Usage notes: Further information on searching by "Procedure.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "date" MUST be supported:Examples:`GET [base]/Procedure?date=2022-01-01`Usage notes: Further information on searching by "Procedure.performed" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).
1. The search parameter "subject" MUST be supported:Examples:`GET [base]/Procedure?subject=Patient/test`Usage notes: Further information on searching by "Procedure.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "patient" MUST be supported:Examples:`GET [base]/Procedure?patient=Patient/test`Usage notes: Further information on searching by "Procedure.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "bodySite" MUST be supported:Examples:`GET [base]/Procedure?bodySite=http://snomed.info/sct|80891009`Usage notes: Further information on searching by "Procedure.bodySite" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "dokumentationsdatum" MUST be supported:Examples:`GET [base]/Procedure?dokumentationsdatum=2022-01-01`Usage notes: Further information on searching by "Procedure.extension:Dokumentationsdatum" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).
1. The search parameter "durchfuehrungsabsicht" MUST be supported:Examples:`GET [base]/Procedure?durchfuehrungsabsicht=http://snomed.info/sct|262202000`Usage notes: Further information on searching by "Procedure.extension:Durchfuehrungsabsicht" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "outcome" MUST be supported:Examples:`GET [base]/Procedure?outcome=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund|R1`Usage notes: Further information on searching by "Procedure.extension:Durchfuehrungsabsicht" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "extension-intention" MUST be supported:Examples:`GET [base]/Procedure?extension-intention=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention|K`Usage notes: Further information on searching by "Procedure.extension:Intention" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "extension-stellung" MUST be supported:Examples:`GET [base]/Procedure?extension-stellung=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-stellung|K`Usage notes: Further information on searching by "Procedure.extension:Stellung" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "extension-stellung" MUST be supported:Examples:`GET [base]/Procedure?extension-stellung=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-stellung|K`Usage notes: Further information on searching by "Procedure.extension:Stellung" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "extension-bestrahlung-applikationsart" MUST be supported:Examples:`GET [base]/Procedure?extension-bestrahlung-applikationsart=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-applikationsart|KLDR`Usage notes: Further information on searching by "Procedure.extension:Stellung" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "extension-bestrahlung-strahlenart" MUST be supported:Examples:`GET [base]/Procedure?extension-bestrahlung-strahlenart=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-strahlenarart|PN`Usage notes: Further information on searching by "Procedure.extension:Stellung" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "extension-bestrahlung-zielgebiet" MUST be supported:Examples:`GET [base]/Procedure?extension-bestrahlung-zielgebiet=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-zielgebiet|4.9`Usage notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Applikationsart" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "extension-bestrahlung-zielgebiet-Lateralitaet" MUST be supported:Examples:`GET [base]/Procedure?extension-bestrahlung-zielgebiet-Lateralitaet=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation|L`Usage notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Zielgebiet_Lateralitaet" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "extension-bestrahlung-boost" MUST be supported:Examples:`GET [base]/Procedure?extension-bestrahlung-boost=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost|SIB`Usage notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Boost" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. The search parameter "extension-bestrahlung-einzeldosis" MUST be supported:Examples:`GET [base]/Procedure?extension-bestrahlung-einzeldosis=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-einzeldosis`Usage notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Einzeldosis" can be found in the [FHIR base specification - section "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).
1. The search parameter "extension-bestrahlung-gesamtdosis" MUST be supported:Examples:`GET [base]/Procedure?extension-bestrahlung-gesamtdosis=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-gesamtdosis`Usage notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Gesamtdosis" can be found in the [FHIR base specification - section "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

**Examples**

[mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1.md)

**Usages:**

* Examples for this Profile: [Procedure/mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1](Procedure-mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.csv), [Excel](../StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Strahlentherapie_Bestrahlung_Nuklearmedizin",
  "title" : "MII PR Onkologie Strahlentherapie Nuklearmedizin",
  "status" : "active",
  "date" : "2026-08-27T10:41:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Strahlentherapie. Dieses Profil beschreibt eine Nuklearmedizinische  in der Onkologie.",
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
      "short" : "Gesamtdosis",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtdosis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Gesamtdosis gemäß 14.9 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gesamtdosis gemäß 14.9 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.9",
        "comment" : "Strahlentherapie Gesamtdosis"
      }]
    },
    {
      "id" : "Procedure.extension:Gesamtdosis.value[x].unit",
      "path" : "Procedure.extension.value[x].unit",
      "short" : "Einheit der Gesamtdosis",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einheit der Gesamtdosis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Einheit der Gesamtdosis gemäß 14.11 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einheit der Gesamtdosis gemäß 14.11 oBDS 2021. Hier werden sowohl Bestrahlungen als auch Radioisotope angegeben."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
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
      "short" : "Einzeldosis",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einzeldosis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Einzeldosis der Strahlentherapie gemäß 14.10 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einzeldosis der Strahlentherapie gemäß 14.10 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14.10",
        "comment" : "Strahlentherapie Einzeldosis pro Tag"
      }]
    },
    {
      "id" : "Procedure.extension:Einzeldosis.value[x].unit",
      "path" : "Procedure.extension.value[x].unit",
      "short" : "Einheit der Einzeldosis",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einheit der Einzeldosis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Einheit der Einzeldosis der Strahlentherapie gemäß 14.11 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einheit der Einzeldosis gemäß 14.11 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
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
      "id" : "Procedure.extension:Boost.value[x].coding",
      "path" : "Procedure.extension.value[x].coding",
      "short" : "Boost",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Boost"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verwendung von Boosts als Teil der Bestrahlung gemäß 14.12 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verwendung von Boosts als Teil der Bestrahlung gemäß 14.12 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
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
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "399315003",
          "display" : "Radionuclide therapy"
        }]
      }
    },
    {
      "id" : "Procedure.code.coding",
      "path" : "Procedure.code.coding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-ops-nuklearmedizin"
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
