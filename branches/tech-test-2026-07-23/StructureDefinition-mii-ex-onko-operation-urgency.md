# MII EX Onko Operation Urgency - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Onko Operation Urgency**

## Extension: MII EX Onko Operation Urgency 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency | *Version*:2026.0.3 |
| Active as of 2026-07-23 | *Computable Name*:MII_EX_Onko_Operation_Urgency |

Modalität der Eingriffsdurchführung (Art des Eingriffs) im Rahmen des oBDS (KR6)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-ex-onko-operation-urgency.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mii-ex-onko-operation-urgency.csv), [Excel](StructureDefinition-mii-ex-onko-operation-urgency.xlsx), [Schematron](StructureDefinition-mii-ex-onko-operation-urgency.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-onko-operation-urgency",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency",
  "version" : "2026.0.3",
  "name" : "MII_EX_Onko_Operation_Urgency",
  "title" : "MII EX Onko Operation Urgency",
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
  "description" : "Modalität der Eingriffsdurchführung (Art des Eingriffs) im Rahmen des oBDS (KR6)",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "oBDS",
    "name" : "Mapping FHIR zu oBDS"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Procedure"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Onko Operation Urgency",
      "definition" : "Modalität der Eingriffsdurchführung (Art des Eingriffs) im Rahmen des oBDS (KR6)"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency"
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
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-urgency"
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "KR6",
        "comment" : "Art des Eingriffs (Modalität der Eingriffsdurchführung: E=Elektiveingriff, N=Notfalleingriff, U=Unbekannt)"
      }]
    },
    {
      "id" : "Extension.value[x].coding.system",
      "path" : "Extension.value[x].coding.system",
      "min" : 1,
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-urgency"
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
