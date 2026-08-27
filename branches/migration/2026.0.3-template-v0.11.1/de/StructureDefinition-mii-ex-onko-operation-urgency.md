# MII EX Onko Operation Urgency - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX Onko Operation Urgency**

## Extension: MII EX Onko Operation Urgency 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_EX_Onko_Operation_Urgency |

Modalität der Eingriffsdurchführung (Art des Eingriffs) im Rahmen des oBDS (KR6)

**Context of Use**

### Inhalt

Diese Extension erfasst die **Modalität der Eingriffsdurchführung** (Art des Eingriffs) und unterscheidet zwischen elektiven und Notfalleingriffen.

### Herkunft und Anwendungsbereich

Dieser Datenpunkt stammt ursprünglich aus dem organspezifischen Modul **Kolorektales Karzinom (KRK 6)** gemäß oBDS 2021. Da die Unterscheidung zwischen elektiven und Notfalleingriffen jedoch für alle chirurgischen Prozeduren klinisch relevant ist, wurde die Extension in das allgemeine Operation-Profil integriert und kann **universell auf alle onkologischen Operationen angewandt werden**.

### Klinische Relevanz

Die Erfassung der Eingriffsmodalität ist aus mehreren Gründen wichtig:

* **Qualitätssicherung**: Notfalleingriffe weisen oft andere Komplikationsraten auf als geplante Eingriffe
* **Risikostratifizierung**: Die Dringlichkeit beeinflusst die perioperative Morbidität und Mortalität
* **Statistische Auswertungen**: Faire Vergleiche zwischen Zentren erfordern die Berücksichtigung des Notfallanteils
* **Ressourcenplanung**: Unterscheidung zwischen planbaren und ungeplanten Eingriffen

### Wertebereich

> Die enthaltenen Codes sind in der Artefaktdarstellung aufgeführt: [MII CS Onkologie Operation Urgency](CodeSystem-mii-cs-onko-operation-urgency.md).

### Mapping

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

Dieses Extension mappt auf das **KRK-Modul** Feld:

* **KR6**: Art des Eingriffs (Modalität der Eingriffsdurchführung)

> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII EX Onko Operation Urgency](StructureDefinition-mii-ex-onko-operation-urgency.md).

### Verwandte Profile

* [Operation: Procedure](StructureDefinition-mii-pr-onko-operation.md)
* [Extension Intention (Operation)](StructureDefinition-mii-ex-onko-operation-intention.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-ex-onko-operation-urgency.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept: Modalität der Eingriffsdurchführung (Art des Eingriffs) im Rahmen des oBDS (KR6)

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept: Modalität der Eingriffsdurchführung (Art des Eingriffs) im Rahmen des oBDS (KR6)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-onko-operation-urgency.csv), [Excel](../StructureDefinition-mii-ex-onko-operation-urgency.xlsx), [Schematron](../StructureDefinition-mii-ex-onko-operation-urgency.sch) 



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
  "date" : "2026-08-27T12:06:00+00:00",
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
