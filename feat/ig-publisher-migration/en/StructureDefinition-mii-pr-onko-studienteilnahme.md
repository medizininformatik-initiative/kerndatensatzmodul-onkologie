# MII PR Onkologie Studienteilnahme - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Resource Profile: MII PR Onkologie Studienteilnahme 

 
Dieses Profil beschreibt Studienteilnahmen in der Onkologie 

Dieses Profil beschreibt ob und wann ein Patient an einer Studie teilgenommen hat.

Es beinhaltet:

* eine Referenz auf Patient
* eine Referenz auf die Primärdiagnose
*  

| | |
| :--- | :--- |
| den Observation-Code "709491003 | Enrollment in clinical trial (procedure)" (SNOMED-CT) |

 
* das genaue Ersteinschlusssdatum zu einer Studie mit Ethikvotum
* den Status zur Studienteilnahme (Ja, Nein, Unbekannt)

Im Falle einer pharmakologischen Studie SOLLTE am besten eine Referenz zu einer Procedure / Systemischen Therapie bestehen, entweder über Observation.partOf = Reference (SystemischeTherapie), Observation.basedOn = Reference (MedicationRequest); oder Procedure.basedOn.

### Referenzierung von Studien

Informationen über die genaue Studie (Organisation, StudienID, Studienphase, etc.) KÖNNEN über das Element `Observation.focus[studie]` mit einer Referenz auf eine ResearchStudy-Ressource aus dem [MII Modul Studie](https://simplifier.net/medizininformatikinitiative-modul-studie) bereitgestellt werden.

Die ResearchStudy-Ressource ermöglicht die strukturierte Erfassung von:

* Studienidentifikatoren (DRKS, ClinicalTrials.gov, EudraCT, Innovationsfonds-Projektnummer)
* Studientyp und -phase
* Primäre Studienziele
* Studienkontext und Indikation
* Studienstatus

Ein vollständiges Beispiel findet sich in der PRO-B Studienteilnahme, die eine ResearchStudy mit DRKS-Registrierung (DRKS00024015) und Innovationsfonds-Projektnummer (01NVF19013) referenziert.

-------

Mapping Datensatz zu FHIR

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

-------

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter `_id` MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_id=1234`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-studienteilnahme`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|709491003`Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der FHIR-Basisspezifikation - Abschnitt "token".
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?subject=Patient/example`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "focus" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?focus=Condition/example`Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "encounter" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?encounter=Encounter/example`Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".
1. Der Suchparameter "date" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?date=2024-02-08`Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der FHIR-Basisspezifikation - Abschnitt "date".
1. Der Suchparameter "derived-from" MUSS unterstützt werden:Beispiele:`GET [base]/Observation?derived-from=Observation/example`Anwendungshinweise: Weitere Informationen zur Suche nach "derived-from" finden sich in der FHIR-Basisspezifikation - Abschnitt "reference".

**Beispiele**

Beispiel 1: Einfache Studienteilnahme

[Beispiel: mii-exa-onko-studienteilnahme](Observation-mii-exa-onko-studienteilnahme.md)

-------

Beispiel 2: Studienteilnahme mit ResearchStudy-Referenz (PRO-B Studie)

Dieses Beispiel zeigt die Dokumentation einer Studienteilnahme mit Referenz auf eine ResearchStudy-Ressource, die detaillierte Studieninformationen inkl. DRKS-Registrierung und Innovationsfonds-Projektnummer enthält.

[Beispiel: mii-exa-onko-studienteilnahme-prob](Observation-mii-exa-onko-studienteilnahme-prob.md)

ResearchStudy-Ressource:

[Beispiel: mii-exa-onko-studie-prob](ResearchStudy-mii-exa-onko-studie-prob.md)

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-studienteilnahme-prob](Observation-mii-exa-onko-studienteilnahme-prob.md) and [Observation/mii-exa-onko-studienteilnahme](Observation-mii-exa-onko-studienteilnahme.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-pr-onko-studienteilnahme.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-studienteilnahme.csv), [Excel](../StructureDefinition-mii-pr-onko-studienteilnahme.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-studienteilnahme.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-studienteilnahme",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-studienteilnahme",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Studienteilnahme",
  "title" : "MII PR Onkologie Studienteilnahme",
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
  "description" : "Dieses Profil beschreibt Studienteilnahmen in der Onkologie",
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
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "24",
        "comment" : "Studienteilnahme"
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
      "short" : "Studienteilnahme laut oBDS",
      "definition" : "SCTID: 709491003 | Enrollment in clinical trial (procedure)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "709491003"
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
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this.resolve()"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.focus:primaertumor",
      "path" : "Observation.focus",
      "sliceName" : "primaertumor",
      "short" : "Referenz zum Primärtumor",
      "definition" : "Referenz zur Primärtumordiagnose, auf die sich die Studienteilnahme bezieht",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.focus:studie",
      "path" : "Observation.focus",
      "sliceName" : "studie",
      "short" : "Referenz zur Studie",
      "definition" : "Referenz zur konkreten Studie (ResearchStudy), an der der Patient teilnimmt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/ResearchStudy"]
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
      "short" : "Studienteilnahme Datum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Studienteilnahme Datum"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Studienteilnahme Datum gemäß 24.2 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Studienteilnahme Datum gemäß 24.2 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "24.2",
        "comment" : "Studienteilnahme Datum"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-studienteilnahme"
      }
    },
    {
      "id" : "Observation.value[x].coding",
      "path" : "Observation.value[x].coding",
      "short" : "Studienteilnahme",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Studienteilnahme"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Studienteilnahme gemäß 24.1 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Studienteilnahme gemäß 24.1 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.value[x].coding.system",
      "path" : "Observation.value[x].coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-studienteilnahme"
    },
    {
      "id" : "Observation.value[x].coding.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "24.1",
        "comment" : "Studienteilnahme Status"
      }]
    }]
  }
}

```
