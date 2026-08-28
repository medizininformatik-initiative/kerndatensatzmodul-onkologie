# MII PR Onkologie TNM-Klassifikation (synthetisiert) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie TNM-Klassifikation (synthetisiert)**

## Resource Profile: MII PR Onkologie TNM-Klassifikation (synthetisiert) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_PR_Onko_TNM_Klassifikation_Synthetisiert |

 
Synthetisierte TNM-Klassifikation: Aggregat aus mehreren Meldungs-bezogenen TNM-Klassifikationen, das den Stand zum Entscheidungszeitpunkt (z. B. Tumorkonferenz) zusammenfasst. UICC-Regeln zur Stage-Auswahl (pTNM > cTNM, jüngste Bewertung innerhalb derselben Krankheitsphase, r-Präfix als Bruchpunkt) werden vom erzeugenden System angewendet. Provenienz wird über derivedFrom auf die Quell-Klassifikationen abgebildet. 

**Usages:**

* Examples for this Profile: [Observation/mii-exa-onko-kim-synth1](Observation-mii-exa-onko-kim-synth1.md), [Observation/mii-exa-onko-kim-synth2](Observation-mii-exa-onko-kim-synth2.md), [Observation/mii-exa-onko-kim-synth3](Observation-mii-exa-onko-kim-synth3.md), [Observation/mii-exa-onko-kim-synth4](Observation-mii-exa-onko-kim-synth4.md) and [Observation/mii-exa-onko-tnm-synth-klassifikation](Observation-mii-exa-onko-tnm-synth-klassifikation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.csv), [Excel](../StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-tnm-klassifikation-synthetisiert",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_TNM_Klassifikation_Synthetisiert",
  "title" : "MII PR Onkologie TNM-Klassifikation (synthetisiert)",
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
  "description" : "Synthetisierte TNM-Klassifikation: Aggregat aus mehreren Meldungs-bezogenen TNM-Klassifikationen, das den Stand zum Entscheidungszeitpunkt (z. B. Tumorkonferenz) zusammenfasst. UICC-Regeln zur Stage-Auswahl (pTNM > cTNM, jüngste Bewertung innerhalb derselben Krankheitsphase, r-Präfix als Bruchpunkt) werden vom erzeugenden System angewendet. Provenienz wird über derivedFrom auf die Quell-Klassifikationen abgebildet.",
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
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "399703000",
          "display" : "Integrated TNM category"
        }]
      }
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "Entscheidungsdatum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Entscheidungsdatum"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum, zu dem die synthetisierte TNM-Klassifikation gilt — typischerweise das Datum der Tumorkonferenz oder Therapieentscheidung.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Tumorkonferenz oder Therapieentscheidung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "short" : "Erzeugendes System (bei automatisierter Synthese)",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Erzeugendes System bei automatisierter Synthese"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Referenz auf das erzeugende System (Device) bei automatisierter Erzeugung. Die Algorithmus-/Softwareversion wird in Device.version dokumentiert; eine zusätzliche Provenance-Ressource (activity = Derivation) KANN für Audit-Anforderungen ergänzt werden.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "short" : "Auswahl der gewinnenden T/N/M/L/V/Pn/S/a/r/y-Beobachtungen",
      "definition" : "Referenzen auf die per UICC-Regel ausgewählten Per-Kategorie-Beobachtungen aus den derivedFrom-Quellen."
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "Quell-Klassifikationen",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Quell-Klassifikationen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Pflicht-Referenzen auf die zugrunde liegenden Meldungs-bezogenen TNM-Klassifikationen, aus denen die synthetisierte Klassifikation abgeleitet wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Pflicht-Referenzen auf die zugrunde liegenden Meldungs-bezogenen TNM-Klassifikationen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:tnmFormel",
      "path" : "Observation.component",
      "sliceName" : "tnmFormel",
      "short" : "Generierte TNM-Gesamtformel",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Generierte TNM-Gesamtformel"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zusammengeführte TNM-Gesamtformel als generierte Darstellung der gewinnenden Kategorie-Beobachtungen inklusive Präfixe (z. B. 'ypT0 ypN0 cM0'). Wird aus den hasMember-Referenzen abgeleitet und darf diesen nicht widersprechen.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:tnmFormel.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-formel",
          "code" : "tnm-formel",
          "display" : "TNM-Formel"
        }]
      }
    },
    {
      "id" : "Observation.component:tnmFormel.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
