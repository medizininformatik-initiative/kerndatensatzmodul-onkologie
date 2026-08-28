# MII PR Onkologie Fernmetastasen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Fernmetastasen**

## Resource Profile: MII PR Onkologie Fernmetastasen 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_PR_Onko_Fernmetastasen |

 
OBDS Beschreibung von Fernmetastasen (Lokalisation und Datum) 

This profile describes distant metastases as they are recorded within the oBDS in oncology for reporting to the cancer registries. The following data fields are to be given individually for each metastasis:

* date of detection
* localisation based on the oBDS-specific coding

In the FHIR profiling, each distant metastasis **SHALL** be created as an individual resource. The oBDS does not provide for recording non-invasive diagnostic procedures. Nor does the oBDS require the degree of diagnostic confirmation (clinical, radiological, histological) to be recorded. Where needed, a distant metastasis **MAY** reference the corresponding diagnostic procedures.

This profile is conformant to the [Patho Finding profile of the MII pathology report](https://simplifier.net/guide/mii-ig-pathologie/Befund-TechnischeImplementierung-FHIRProfile-MII-PR-Patho-Finding?version=current) and can therefore be embedded as an Observation in a pathological findings report.

-------

**Examples**

[mii-exa-onko-fernmetastasen-1](Observation-mii-exa-onko-fernmetastasen-1.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie TNM M-Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md)
* Examples for this Profile: [Observation/mii-exa-onko-cup-fernmetastase-hep](Observation-mii-exa-onko-cup-fernmetastase-hep.md), [Observation/mii-exa-onko-cup-fernmetastase-pul](Observation-mii-exa-onko-cup-fernmetastase-pul.md) and [Observation/mii-exa-onko-fernmetastasen-1](Observation-mii-exa-onko-fernmetastasen-1.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-fernmetastasen.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-fernmetastasen.csv), [Excel](../StructureDefinition-mii-pr-onko-fernmetastasen.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-fernmetastasen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-fernmetastasen",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fernmetastasen",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Fernmetastasen",
  "title" : "MII PR Onkologie Fernmetastasen",
  "status" : "active",
  "date" : "2026-08-28T06:49:57+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "OBDS Beschreibung von Fernmetastasen (Lokalisation und Datum)",
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
      "path" : "Observation",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "11",
        "comment" : "Fernmetastasen"
      }]
    },
    {
      "id" : "Observation.meta.profile",
      "path" : "Observation.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Lokalisation einer Fernmetastase laut oBDS",
      "definition" : "SCTID: 385421009 | Site of distant metastasis",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "385421009"
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
      "short" : "Datum der diagnostischen Sicherung von Fernmetastasen",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der diagnostischen Sicherung von Fernmetastasen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Gibt an, wann die Fernmetastase festgestellt wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gibt an wann die Fernmetastase festgestellt wurde."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "11.2",
        "comment" : "Datum der diagnostischen Sicherung von Fernmetastasen"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding",
      "path" : "Observation.value[x].coding",
      "short" : "Lokalisation der Fernmetastase laut oBDS/TNM-Kodierung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Lokalisation der Fernmetastasen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "weitere Lokalisationen sind als einzelne Ressourcen zu kodieren",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Lokalisation der Fernmetastasen laut 11.1 oBDS 2021 / TNM Kodierung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-fernmetastasen"
      }
    },
    {
      "id" : "Observation.value[x].coding.system",
      "path" : "Observation.value[x].coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].coding.code",
      "path" : "Observation.value[x].coding.code",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "11.1",
        "comment" : "Lokalisation von Fernmetastase(n)"
      }]
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "short" : "Exakter Ort der Fernmetastase (ICD-O-3-Topographie und/oder SNOMED CT)",
      "comment" : "Optionale Präzisierung zusätzlich zum oBDS-Kurzschlüssel im value (z.B. Retroperitoneum: value #OTH + bodySite ICD-O-3 #C48.0). ICD-10-Diagnosecodes (C79.x) gehören NICHT hierher.",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite.coding",
      "path" : "Observation.bodySite.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.bodySite.coding:icd-o-3",
      "path" : "Observation.bodySite.coding",
      "sliceName" : "icd-o-3",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-topographie"
      }
    },
    {
      "id" : "Observation.bodySite.coding:icd-o-3.system",
      "path" : "Observation.bodySite.coding.system",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/icd-o-3"
    },
    {
      "id" : "Observation.bodySite.coding:snomed",
      "path" : "Observation.bodySite.coding",
      "sliceName" : "snomed",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-koerperstruktur-sct"
      }
    },
    {
      "id" : "Observation.bodySite.coding:snomed.system",
      "path" : "Observation.bodySite.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct"
    }]
  }
}

```
