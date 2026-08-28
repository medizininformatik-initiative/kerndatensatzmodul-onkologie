# MII EX Onko Operation Urgency - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EX Onko Operation Urgency**

## Extension: MII EX Onko Operation Urgency 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_EX_Onko_Operation_Urgency |

Modalität der Eingriffsdurchführung (Art des Eingriffs) im Rahmen des oBDS (KR6)

**Context of Use**

### Content

This extension captures the **modality of procedure performance** (type of procedure) and distinguishes between elective and emergency procedures.

### Origin and scope

This data point originates from the organ-specific module **colorectal cancer (KRK 6)** according to oBDS 2021. However, since the distinction between elective and emergency procedures is clinically relevant for all surgical procedures, the extension was integrated into the general Operation profile and can be **applied universally to all oncological operations**.

### Clinical relevance

Capturing the modality of the procedure is important for several reasons:

* **Quality assurance**: Emergency procedures often show different complication rates than planned procedures
* **Risk stratification**: Urgency influences perioperative morbidity and mortality
* **Statistical analyses**: Fair comparisons between centers require accounting for the proportion of emergencies
* **Resource planning**: Distinction between plannable and unplanned procedures

### Value range

> The codes it contains are listed in the artefact view: [MII CS Onkologie Operation Urgency](CodeSystem-mii-cs-onko-operation-urgency.md).

### Mapping

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

This extension maps to the **KRK module** field:

* **KR6**: Type of procedure (modality of procedure performance)

> The oBDS mappings are recorded in the artefact view of this profile: [MII EX Onko Operation Urgency](StructureDefinition-mii-ex-onko-operation-urgency.md).

### Related profiles

* [Operation: Procedure](StructureDefinition-mii-pr-onko-operation.md)
* [Extension Intention (Operation)](StructureDefinition-mii-ex-onko-operation-intention.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-ex-onko-operation-urgency.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-ex-onko-operation-urgency.csv), [Excel](../StructureDefinition-mii-ex-onko-operation-urgency.xlsx), [Schematron](../StructureDefinition-mii-ex-onko-operation-urgency.sch) 



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
  "date" : "2026-08-28T08:03:44+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Modalität der Eingriffsdurchführung (Art des Eingriffs) im Rahmen des oBDS (KR6)",
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
