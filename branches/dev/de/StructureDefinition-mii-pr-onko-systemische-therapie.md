# MII PR Onkologie Systemische Therapie - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Systemische Therapie**

## Ressourcenprofil: MII PR Onkologie Systemische Therapie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-05 | *Maschinenlesbarer Name*:MII_PR_Onko_Systemische_Therapie |

 
Systemische Therapie. Dieses Profil beschreibt eine Systemische Therapie für den oBDS. Da die Granularität der Anforderungen des oBDS nicht deckungsgleich mit den FHIR-Profilen für Medikation sind, wurde die Systemische Therapie als Prozedur umgesetzt 

Dieses Profil beschreibt eine systemische oder abwartende Therapie in der Onkologie.

### Beschreibung

Im oBDS werden mehrere klinische Konzepte innerhalb der Systemische Therapie abbgebildet

* Systemische Therapien 
* Chemotherapie
* Immuntherapie
* Targeted Therapy
* Kombinationstherapien der oben genannten Therapien
* Hormontherapie
* Stammzell- und Knochenmarkstransplantation
 
* Abwartende Therapien 
* Watchful Waiting
* Active Surveillance
* Wait and see
 

Zu diesen einzelnen Therapien werden im oBDS weitere Datenelemente erfasst und hier abgebildet, darunter:

* Start und Endezeitpunkt der Therapie
* Zusammenhang zur OP und Intention der Therapie
* der Grund der Beendigung (unabhängig ob erfolgreich oder nicht erfolgreich)
* das verwendete Therapieprotokoll mit Substanzkombinationen (gemäß oBDS Umsetzungsleitfaden).

#### Kategorie

* Die verwendete MII-Prozedur empfiehlt die Abbildung der **Kategorie** mittels der in SNOMED übertragenen OPS-Hauptkategorien (https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct)
* Die vorliegende Kategorie SNOMED `277132007 | Therapeutic procedure` , die der OPS Kategorie 8 ("Nicht-operative therapeutische Maßnahmen") entspricht, beinhaltet sowohl Strahlen - als auch Nuklearmedizinische Therapie als auch bestimmte systemische Therapien (z.B. Chemo- und Immuntherapie), wobei andere systemische medikamtöse Therapien (z.B. Hormontherapie, Targeted Therapy) auch unter Kategorie 6 "Medikamente" kodiert werden können. Er ist daher unspezifisch und nicht geeignet, um z.B. innerhalb einer Forschungsfrage gezielt nach Nuklearmedizinischen Therapien zu filtern.

#### Code

* Als **Code** wird von der MII-Prozedur ein OPS-Code oder ein SNOMED-Code verlangt.
* Die medikationsbasierten systemischen Therapien werden je nach Art der Therapie durch unterschiedlichen OPS-Kategorien kodiert.
* Für die abwartenden Therapien sind keine OPS-Codes im aktuellen Katalog hinterlegt.
* In der MII-Prozedur SOLL genau eine Kodierung (OPS oder SNOMED CT) für genau eine Therapie verwendet werden. Zusätzliche Prozeduren werden als einzelne Procedure-Ressourcen abgebildet.

#### Therapieprotokoll

* Als **usedCode** werden die spezifischen Therapieprotokolle dokumentiert, die in der systemischen Therapie verwendet werden.
* Die Protokolle basieren auf dem [oBDS Umsetzungsleitfaden](https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532385/Systemische+Therapie+SYST+Protokolle) und enthalten standardisierte Substanzkombinationen.
* Jedes Protokoll ist mit seiner charakteristischen Bezeichnung (z.B. "FOLFOX", "R-CHOP", "AC") und den enthaltenen Wirkstoffen dokumentiert.
* Die Kodierung erfolgt über das **MII CodeSystem Systemische Therapie Protokolle**, das alle gängigen onkologischen Therapieprotokolle umfasst.
* Nicht enthaltene Protokolle können trotzdem dokumentiert werden - hier ist jedoch eine Harmonisierung über die Standorte entscheidend. Neue Protokolle sind daher bitte unter [GitHub Issues](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues) einzureichen.
* **Führendes Element für oBDS 16.4:** Das Protokoll wird führend an der Therapie-Klammer dokumentiert (`Procedure.usedCode`, extensible an das Protokoll-ValueSet gebunden). Die zusätzliche Freitext-Angabe unter `MedicationStatement.note.text` der einzelnen Wirkstoff-Ressourcen dient ausschließlich der Zuordnung der Einzelwirkstoffe zu ihrem Schema (z.B. bei Kombinationstherapien) und ist keine eigenständige zweite Kodierung.

#### Implementierungsempfehlung

Aus den oben genannten Punkten ergibt sich folgende Kodierempfehlung für die Systemische / abwartende Therapie aus dem oBDS:

* Kategorie als SNOMED - Code 
* Kategorie für Systemische Therapien `18629005 | Administration of drug or medicament (procedure)`
* Kategorie für Abwartende Therapien : keine (kein geeignetes Parent-Konzept, Suche direkt über Kodierung empfohlen)
 
* Kodierung 
* Systemische Therapie über OPS wie folgt. Es ist zu beachten, dass der exakte Wirkstoff mittels ATC als Teil der MedicationStatment-Ressource kodiert wird. Eine zusätzliche Dokumentation der Medikation über 
* Chemotherapie über OPS `8-54` oder spezifischer
* Immuntherapie über OPS `8-54` oder spezifischer (Zusatzangabe von )
* Stammzelltherapie über OPS `8-86` oder spezifischer
* Hormontherapie über OPS `6-xxx.y` (bsw.`6-009.0` für Olaparib, oral bei Prostatakarzinom)
 
* Abwartende Therapie über SNOMED-CT wie folgt 
* Watchful Waiting: SNOMED-CT `373818007 | No anti-cancer treatment - watchful waiting (finding)`
* Active Surveillance: SNOMED-CT `424313000 | Active surveillance (regime/therapy)`
* Wait and see: SNOMED-CT `310341009 | Follow-up (wait and see) (finding)`
 
 

-------

### Konformität

Die vorliegende Profilierung ist kompatibel mit dem Prozedurenprofil der ISiK-Basismodule Stufe 4. https://simplifier.net/isik-basis-v4/isikprozedur

-------

Mapping Datensatz zu FHIR

> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md).

**Beispiele**

[mii-exa-onko-systemische-therapie-1](Procedure-mii-exa-onko-systemische-therapie-1.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md), [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md) and [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md)
* Examples for this Profile: [Procedure/PatientKimMusterperson-SystemicTherapy-1](Procedure-PatientKimMusterperson-SystemicTherapy-1.md), [Procedure/PatientKimMusterperson-SystemicTherapy-2](Procedure-PatientKimMusterperson-SystemicTherapy-2.md), [Procedure/PatientKimMusterperson-SystemicTherapy-3](Procedure-PatientKimMusterperson-SystemicTherapy-3.md), [Procedure/mii-exa-onko-folfox-phase1](Procedure-mii-exa-onko-folfox-phase1.md)... Show 6 more, [Procedure/mii-exa-onko-folfox-procedure](Procedure-mii-exa-onko-folfox-procedure.md), [Procedure/mii-exa-onko-lv5fu2-phase2](Procedure-mii-exa-onko-lv5fu2-phase2.md), [Procedure/mii-exa-onko-palbociclib-therapie](Procedure-mii-exa-onko-palbociclib-therapie.md), [Procedure/mii-exa-onko-pertuzumab-therapie](Procedure-mii-exa-onko-pertuzumab-therapie.md), [Procedure/mii-exa-onko-systemische-therapie-1](Procedure-mii-exa-onko-systemische-therapie-1.md) and [Procedure/mii-exa-onko-trastuzumab-therapie](Procedure-mii-exa-onko-trastuzumab-therapie.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-systemische-therapie.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Prozedur_Procedure](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-prozedur-procedure.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Prozedur_Procedure](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-prozedur-procedure.html) 

** Summary **

Mandatory: 2 elements(5 nested mandatory elements)
 Must-Support: 13 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Tumorkonferenz (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)](StructureDefinition-mii-pr-onko-tumorkonferenz.md)
* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention](StructureDefinition-mii-ex-onko-systemische-therapie-intention.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellungzurop](StructureDefinition-mii-ex-onko-systemische-therapie-stellungzurop.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.basedOn

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Prozedur_Procedure](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-prozedur-procedure.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Prozedur_Procedure](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-prozedur-procedure.html) 

** Summary **

Mandatory: 2 elements(5 nested mandatory elements)
 Must-Support: 13 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Tumorkonferenz (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)](StructureDefinition-mii-pr-onko-tumorkonferenz.md)
* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention](StructureDefinition-mii-ex-onko-systemische-therapie-intention.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellungzurop](StructureDefinition-mii-ex-onko-systemische-therapie-stellungzurop.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.basedOn

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-systemische-therapie.csv), [Excel](../StructureDefinition-mii-pr-onko-systemische-therapie.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-systemische-therapie.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-systemische-therapie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "version" : "3.0.0",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C3262"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-01-03"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Onko_Systemische_Therapie",
  "title" : "MII PR Onkologie Systemische Therapie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-05T06:32:59+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Systemische Therapie. Dieses Profil beschreibt eine Systemische Therapie für den oBDS. Da die Granularität der Anforderungen des oBDS nicht deckungsgleich mit den FHIR-Profilen für Medikation sind, wurde die Systemische Therapie als Prozedur umgesetzt",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
        "map" : "16",
        "comment" : "Systemische Therapie"
      }]
    },
    {
      "id" : "Procedure.extension",
      "path" : "Procedure.extension",
      "min" : 1
    },
    {
      "id" : "Procedure.extension:Intention",
      "path" : "Procedure.extension",
      "sliceName" : "Intention",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:Intention.value[x].coding",
      "path" : "Procedure.extension.value[x].coding",
      "short" : "Intention der systemischen oder abwartenden Therapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Intention der systemischen oder abwartenden Therapie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Intention der systemischen oder abwartenden Therapie gemäß 16.1 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Intention der systemischen oder abwartenden Therapie gemäß 16.1 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Procedure.extension:Intention.value[x].coding.code",
      "path" : "Procedure.extension.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "16.1",
        "comment" : "Intention der systemischen Therapie"
      }]
    },
    {
      "id" : "Procedure.extension:StellungZurOp",
      "path" : "Procedure.extension",
      "sliceName" : "StellungZurOp",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellungzurop"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:StellungZurOp.value[x].coding",
      "path" : "Procedure.extension.value[x].coding",
      "short" : "Stellung der systemischen Therapie zu einer Operation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Stellung der systemischen Therapie zu einer Operation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Stellung der systemischen Therapie zu einer Operation gemäß 16.2 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Stellung der systemischen Therapie zu einer Operation gemäß 16.2 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Procedure.extension:StellungZurOp.value[x].coding.code",
      "path" : "Procedure.extension.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "16.2",
        "comment" : "Systemische Therapie Stellung zu operativer Therapie"
      }]
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this.resolve()"
        }],
        "rules" : "open"
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CarePlan"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.basedOn:tumorkonferenz",
      "path" : "Procedure.basedOn",
      "sliceName" : "tumorkonferenz",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "definition" : "Enthält den Code, der neben der oBDS-spezifischen Kodierungden optional mit Codings für OPS und SNOMED annotiert werden kann",
      "comment" : "Primäre Befüllung aus den oBDS / Tumordokumentatiosndaten. Beim Zusammenführen mit Daten aus KIS und anderen Quellen können hier ebenfalls OPS- und SNOMED-CT-Codings hinterlegt werden"
    },
    {
      "id" : "Procedure.code.coding",
      "path" : "Procedure.code.coding"
    },
    {
      "id" : "Procedure.code.coding.code",
      "path" : "Procedure.code.coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "16.3",
        "comment" : "Art der systemischen oder abwartenden Therapie"
      }]
    },
    {
      "id" : "Procedure.code.coding:systemische_therapie_art",
      "path" : "Procedure.code.coding",
      "sliceName" : "systemische_therapie_art",
      "short" : "Art der systemischen oder abwartenden Therapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Art der systemischen oder abwartenden Therapie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Art der systemischen oder abwartenden Therapie gemäß 16.3 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Art der systemischen oder abwartenden Therapie gemäß 16.3 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-art"
      }
    },
    {
      "id" : "Procedure.code.coding:systemische_therapie_art.system",
      "path" : "Procedure.code.coding.system",
      "min" : 1
    },
    {
      "id" : "Procedure.code.coding:systemische_therapie_art.code",
      "path" : "Procedure.code.coding.code",
      "min" : 1
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
        "map" : "16.5",
        "comment" : "Systemische Therapie Beginn"
      }]
    },
    {
      "id" : "Procedure.performed[x].end",
      "path" : "Procedure.performed[x].end",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "16.8",
        "comment" : "Systemische Therapie Ende"
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
      "short" : "Startdatum der systemischen oder abwartenden Therapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Startdatum der systemischen oder abwartenden Therapie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Startdatum der systemischen oder abwartenden Therapie gemäß 16.5 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Startdatum der systemischen oder abwartenden Therapie gemäß 16.5 oBDS 2021."
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
      "short" : "Enddatum der systemischen oder abwartenden Therapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Enddatum der systemischen oder abwartenden Therapie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Enddatum der systemischen oder abwartenden Therapie gemäß 16.8 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Enddatum der systemischen oder abwartenden Therapie - wenn vorhanden -  gemäß 16.8 oBDS 2021."
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
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-systemische-therapie-ende-grund"
      }
    },
    {
      "id" : "Procedure.outcome.coding",
      "path" : "Procedure.outcome.coding",
      "short" : "Grund für Ende der systemischen oder abwartenden Therapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund für Ende der systemischen oder abwartenden Therapie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Grund für Ende der systemischen oder abwartenden Therapie gemäß 16.7 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund für Ende der systemischen oder abwartenden Therapie gemäß 16.7 oBDS 2021."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Procedure.outcome.coding.system",
      "path" : "Procedure.outcome.coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund"
    },
    {
      "id" : "Procedure.outcome.coding.code",
      "path" : "Procedure.outcome.coding.code",
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "16.7",
        "comment" : "Systemische Therapie Ende Grund"
      }]
    },
    {
      "id" : "Procedure.usedCode",
      "path" : "Procedure.usedCode",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-protokolle"
      }
    },
    {
      "id" : "Procedure.usedCode.coding",
      "path" : "Procedure.usedCode.coding",
      "short" : "Protokoll der systemischen Therapie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Protokoll der systemischen Therapie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Protokoll der systemischen Therapie gemäß 16.4 oBDS 2021.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Protokoll der systemischen Therapie gemäß 16.4 oBDS 2021 - kodiert nach oBDS Umsetzungsleitfaden mit Substanzkombinationen."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Procedure.usedCode.coding.system",
      "path" : "Procedure.usedCode.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedCode.coding.code",
      "path" : "Procedure.usedCode.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "16.4",
        "comment" : "Protokoll der systemischen Therapie"
      }]
    }]
  }
}

```
