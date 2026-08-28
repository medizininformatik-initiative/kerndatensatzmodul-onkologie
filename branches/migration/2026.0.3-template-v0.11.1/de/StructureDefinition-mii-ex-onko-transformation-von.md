# MII EX Onkologie Transformation von - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Onkologie Transformation von**

## Extension: MII EX Onkologie Transformation von 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-transformation-von | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_EX_Onko_Transformation_Von |

Kennzeichnet, dass diese onkologische Diagnose eine Transformation aus einem bereits registrierten Primärtumor derselben Tumor-Linie ist — für Fälle, in denen das Krebsregister-Regelwerk eine neue Tumor-Entität führt (z. B. MDS → sekundäre AML, ZNS-Tumor /0 → /3). Abzugrenzen von occurredFollowing (rein zeitliche Abfolge unabhängiger Erkrankungen) und von der CUP-Auflösung nach der Best-Of-Regel, bei der dieselbe Entität aktualisiert wird (keine zweite Ressource).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* Examples for this Extension: [Condition/mii-exa-onko-diagnose-aml-transformation](Condition-mii-exa-onko-diagnose-aml-transformation.md) and [Condition/mii-exa-onko-diagnose-meningeom-maligne-transformation](Condition-mii-exa-onko-diagnose-meningeom-maligne-transformation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-ex-onko-transformation-von.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type Reference: Kennzeichnet, dass diese onkologische Diagnose eine Transformation aus einem bereits registrierten Primärtumor derselben Tumor-Linie ist — für Fälle, in denen das Krebsregister-Regelwerk eine neue Tumor-Entität führt (z. B. MDS → sekundäre AML, ZNS-Tumor /0 → /3). Abzugrenzen von occurredFollowing (rein zeitliche Abfolge unabhängiger Erkrankungen) und von der CUP-Auflösung nach der Best-Of-Regel, bei der dieselbe Entität aktualisiert wird (keine zweite Ressource).

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Snapshot-Ansicht** 

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type Reference: Kennzeichnet, dass diese onkologische Diagnose eine Transformation aus einem bereits registrierten Primärtumor derselben Tumor-Linie ist — für Fälle, in denen das Krebsregister-Regelwerk eine neue Tumor-Entität führt (z. B. MDS → sekundäre AML, ZNS-Tumor /0 → /3). Abzugrenzen von occurredFollowing (rein zeitliche Abfolge unabhängiger Erkrankungen) und von der CUP-Auflösung nach der Best-Of-Regel, bei der dieselbe Entität aktualisiert wird (keine zweite Ressource).

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-onko-transformation-von.csv), [Excel](../StructureDefinition-mii-ex-onko-transformation-von.xlsx), [Schematron](../StructureDefinition-mii-ex-onko-transformation-von.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-onko-transformation-von",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-transformation-von",
  "version" : "2026.0.3",
  "name" : "MII_EX_Onko_Transformation_Von",
  "title" : "MII EX Onkologie Transformation von",
  "status" : "active",
  "date" : "2026-08-28T09:05:47+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Kennzeichnet, dass diese onkologische Diagnose eine Transformation aus einem bereits registrierten Primärtumor derselben Tumor-Linie ist — für Fälle, in denen das Krebsregister-Regelwerk eine neue Tumor-Entität führt (z. B. MDS → sekundäre AML, ZNS-Tumor /0 → /3). Abzugrenzen von occurredFollowing (rein zeitliche Abfolge unabhängiger Erkrankungen) und von der CUP-Auflösung nach der Best-Of-Regel, bei der dieselbe Entität aktualisiert wird (keine zweite Ressource).",
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
    "expression" : "Condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX Onkologie Transformation von",
      "definition" : "Kennzeichnet, dass diese onkologische Diagnose eine Transformation aus einem bereits registrierten Primärtumor derselben Tumor-Linie ist — für Fälle, in denen das Krebsregister-Regelwerk eine neue Tumor-Entität führt (z. B. MDS → sekundäre AML, ZNS-Tumor /0 → /3). Abzugrenzen von occurredFollowing (rein zeitliche Abfolge unabhängiger Erkrankungen) und von der CUP-Auflösung nach der Best-Of-Regel, bei der dieselbe Entität aktualisiert wird (keine zweite Ressource)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-transformation-von"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Transformation aus registriertem Primärtumor",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Transformation aus registriertem Primärtumor"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }]
    }]
  }
}

```
