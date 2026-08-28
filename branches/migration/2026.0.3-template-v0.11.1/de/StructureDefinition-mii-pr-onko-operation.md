# MII PR Onkologie Operation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Onkologie Operation**

## Ressourcenprofil: MII PR Onkologie Operation 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_PR_Onko_Operation |

 
Operation nach OPS inklusive Intention, Datum und Komplikationen: 

Dieses Profil beschreibt eine Operation in der Onkologie.

* Das Operationsprofil für die Onkologie ist vom Prozedurenmodul der MII abgeleitet und für oBDS-Inhalten zusätzlich ausspezifiziert. https://simplifier.net/guide/mii-ig-modul-prozedur-2024-de/MIIIGModulProzedur/TechnischeImplementierung/FHIRProfile/Prozedur-Procedure.page.md?version=current

### Kategorie und Code

* Die MII-Prozedur empfiehlt die Abbildung der Kategorie mittels der in SNOMED übertragenen OPS-Hauptkategorien (https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct) , wobei der SNOMED-Code `38771300` der OPS-Kategorie "5 - Operationen" entspricht. Laut oBDS kann hier aber in begründeten Fällen auch ein andere Kodierung (z.B. `103693007` für "1 - Diagnostische Maßnahmen") eigetragen werden. Die Kategorie wird aus diesem Grund nicht weiter eingeschränkt.
* Die genaue Art der Prozedur wird im Feld `Procedure.code` kodiert. **WICHTIG**: Jede Procedure MUSS einen Code haben - entweder OPS oder SNOMED CT.
* Primär SOLL ein OPS-Code verwendet werden. Wenn kein passender OPS-Code existiert, MUSS ein SNOMED CT Code gewählt werden.
* Pro Procedure-Ressource SOLL maximal ein OPS-Wert kodiert werden. Zusätzliche Prozeduren werden als einzelne Procedure-Ressourcen abgebildet.
* Achtung: Innerhalb des KDS-Moduls Onkologie wird die übergeorndete MII-Prozedur auch für die Abbildung der Strahlen- und Systemischen/abwartenden Therapie genutzt. Für die Besondheiten bei Kategorien und Code - siehe [Strahlentherapie:Procedure ](StructureDefinition-mii-pr-onko-strahlentherapie.md) und [Systemische Therapie: Procedure](StructureDefinition-mii-pr-onko-systemische-therapie.md).

### Mehrteilige Eingriffe und zusammenhängende Operationen

Bei komplexen onkologischen Eingriffen werden häufig mehrere operative Prozeduren in einer Sitzung durchgeführt. Da pro Procedure-Ressource nur ein OPS-Code kodiert werden sollte, werden zwei Modellierungsansätze unterstützt:

#### Ansatz 1: Übergeordnete Procedure mit allgemeinem Code

**WICHTIG**: Eine Procedure MUSS entweder einen OPS-Code ODER einen SNOMED CT Code haben. Wenn kein passender OPS-Code für die übergeordnete Procedure existiert, MUSS ein geeigneter SNOMED CT Code gewählt werden.

1. **Übergeordnete Procedure**: Eine Haupt-Procedure mit allgemeinem SNOMED CT Code für die Lokation/Art des Eingriffs
* `Procedure.code`: SNOMED CT Code (z.B. 86481000 "Laparotomy (procedure)")
* `Procedure.code.coding[ops]`: Bleibt leer, da kein spezifischer OPS-Code existiert
* Diese Procedure SOLLTE das MII_PR_Onko_Operation Profil erfüllen
* **Hinweis**: Der SNOMED CT Code muss aus verfügbaren SNOMED CT Konzepten gewählt werden

1. **Detaillierte Teil-Procedures**: Einzelne Procedure-Ressourcen für jeden spezifischen OPS-Code
* Verknüpfung über `Procedure.partOf` zur übergeordneten Procedure
* Jede mit ihrem spezifischen OPS-Code

**Beispiel:**

```
Procedure/haupteingriff (SNOMED: 176282005 "Resektion des Rektums")
├── Procedure/teileingriff1 (partOf → haupteingriff)
│   └── OPS: 5-484.35 "Rektumresektion mit Anastomose"
└── Procedure/teileingriff2 (partOf → haupteingriff)
    └── OPS: 5-469.21 "Andere Operationen am Darm"

```

#### Ansatz 2: Gleichberechtigte Procedures

Bei komplexen Tumoroperationen, wo die Hierarchie nicht eindeutig ist:

1. **Alle Procedures gleichberechtigt**: Jede Procedure repräsentiert einen OPS-Code
1. **Gemeinsame übergeordnete Procedure optional**: Kann als Gruppierung dienen
1. **Alternative**: Eine der Procedures als "Haupt-Procedure" wählen (Entscheidung kann arbiträr sein)

**Hinweis zur Harmonisierung**: Die Entscheidung, welche Procedure als "Haupt-Procedure" gilt, kann bei komplexen Tumoroperationen schwierig und post-hoc kaum harmonisierbar sein.

#### Gemeinsame Aspekte bei mehrteiligen Eingriffen:

* **Zeitpunkt**: Alle verknüpften Prozeduren sollten dasselbe `performedDateTime` haben, wenn sie in einer Sitzung durchgeführt wurden
* **Intention**: Die Extension für die OP-Intention sollte bei allen verknüpften Prozeduren konsistent sein
* **Komplikationen**: Können bei der betroffenen Einzelprozedur oder bei der übergeordneten Procedure dokumentiert werden
* **Residualstatus**: Der lokale Residualstatus wird bei der resezierenden Prozedur dokumentiert
* **Referenzen**: Alle Procedures sollten auf dieselbe Primärdiagnose (`reasonReference`) und ggf. Tumorboard-Empfehlung (`basedOn`) verweisen

#### Visualisierung am Beispiel Kim Musterperson

![](MII_Onko_MultiPartSurgery_Example.png)

### Extensions

#### Intention

Das MII-Modul Prozedur besitzt bereits eine Extension [Durchführungsabsicht](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht) mit Binding auf SNOMED-CT Codes. Da die Intention der OP im oBDS jedoch durch ein oBDS-spezifisches Antwortspektrum erfasst wird, wurde die Prozedur um eine zusätzliches Element "Intention" erweitert. Vorhandene Erweiterungen des MII-Moduls Prozedur sind optional und für das Mapping von oBDS nicht direkt relevant.

Weitere Informationen: [Extension Intention (Operation)](StructureDefinition-mii-ex-onko-operation-intention.md)

#### Urgency (Art des Eingriffs)

Die Extension "Urgency" erfasst die Modalität der Eingriffsdurchführung. Dieser Datenpunkt stammt ursprünglich aus dem organspezifischen Modul Kolorektales Karzinom (KRK 6 oBDS 2021), ist aber **universell auf alle Procedures anwendbar** und wurde daher in das allgemeine Operation-Profil integriert.

Die Extension unterscheidet zwischen:

* **E**: Elektiveingriff (geplanter Eingriff)
* **N**: Notfalleingriff
* **U**: Unbekannt

Diese Extension ist besonders relevant für die Qualitätssicherung und statistische Auswertungen, da Notfalleingriffe oft andere Ergebnisse und Komplikationsraten aufweisen als geplante Eingriffe. Obwohl ursprünglich für kolorektale Eingriffe definiert, ist die Unterscheidung zwischen elektiven und Notfalleingriffen für alle chirurgischen Prozeduren klinisch relevant.

**Verwendung:**

```
* extension[urgency].valueCodeableConcept = $mii-cs-onko-operation-urgency#E "Elektiveingriff"

```

Weitere Informationen: [Extension Urgency (Art des Eingriffs)](StructureDefinition-mii-ex-onko-operation-urgency.md)

### Residualstatus und weitere Beobachtungen

Der oBDS sieht bei Resektion von Tumorgewebe eine Erfassung des R-Status vor. Je nach durchgeführter Prozedur soll die Beurteilung des Residualstatus dabei **lokal** oder **global** vorgenommen werden. Diese werden im oBDS als zwei verschieden Datenpunkte erfasst. In der vorliegenden FHIR-Profilierung ist der lokale Residualstatus (wenn zutreffend) unter Procedure.outcome kodiert. Der globale Residualstatus wird über eine eigene Observation erfasst (siehe Residualstatus: Observation.)

Es gibt nebem dem Residualstatus weitere Datenpunkte, die auf eine Operation verweisen können und im oBDS gemeinsam mit dieser gemeldet werden. Dazu gehören die histologischen Untersuchungen (Lymphknoten, Grading) sowie ICD-O Morphologie, TNM und/oder ggfs. weitere Klassifikationen.

-------

#### Verweise auf andere Profile

Eine im Rahmen der Krebsregister erfasste und gemeldete Operation basiert häufig auf einer Therapieempfehlung eines Tumorboards. In diesem Fall sollte eine Verknüpfung der Elemente über `Procedure.basedOn(Reference(CarePlan))` hergestellt werden. Weiterhin verweist die Operation über `Procedure.reasonReference` auf die Primärdiagnose.

-------

### Konformität

Die vorliegende Profilierung ist kompatibel mit dem Prozedurenprofil der ISiK-Basismodule Stufe 4. https://simplifier.net/isik-basis-v4/isikprozedur

-------

Mapping Datensatz zu FHIR

> Die Zuordnung der Datensatzfelder ist im logischen Modell dokumentiert: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

> Die oBDS-Mappings sind in der Artefaktdarstellung des Profils hinterlegt: [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md).

**Beispiele**

[mii-exa-onko-operation-1](Procedure-mii-exa-onko-operation-1.md)

**Usages:**

* Derived from this Profile: [MII PR Onkologie Präoperative Drahtmarkierung Mamma](StructureDefinition-mii-pr-onko-krk-operation.md), [MII PR Onkologie Mamma Operation](StructureDefinition-mii-pr-onko-mamma-operation.md), [MII PR Onkologie Präoperative Drahtmarkierung Mamma](StructureDefinition-mii-pr-onko-mamma-sozialdienst.md), [MII PR Onko Melanom Exzision](StructureDefinition-mii-pr-onko-melanom-exzision.md) and [MII PR Onko Prostata Operation](StructureDefinition-mii-pr-onko-prostata-operation.md)
* Refer to this Profile: [MII PR Onkologie Präoperative Drahtmarkierung Mamma](StructureDefinition-mii-pr-onko-krk-operation.md), [MII PR Onkologie Mamma Operation](StructureDefinition-mii-pr-onko-mamma-operation.md), [MII PR Onkologie Präoperative Markierung Mamma](StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.md), [MII PR Onkologie Clavien Dindo](StructureDefinition-mii-pr-onko-prostate-clavien-dindo.md) and [MII PR Onkologie Residualstatus](StructureDefinition-mii-pr-onko-residualstatus.md)
* Examples for this Profile: [Procedure/PatientKimMusterperson-Procedure-4](Procedure-PatientKimMusterperson-Procedure-4.md), [Procedure/mii-exa-onko-operation-1](Procedure-mii-exa-onko-operation-1.md), [Procedure/mii-exa-onko-prostata-surgery-1](Procedure-mii-exa-onko-prostata-surgery-1.md), [Procedure/mii-exa-onko-prostata-surgery-2](Procedure-mii-exa-onko-prostata-surgery-2.md)... Show 5 more, [Procedure/mii-exa-onko-right-hemicolectomy](Procedure-mii-exa-onko-right-hemicolectomy.md), [Procedure/mii-exa-onko-sigmoid-resection-part1](Procedure-mii-exa-onko-sigmoid-resection-part1.md), [Procedure/mii-exa-onko-sigmoid-resection-part2](Procedure-mii-exa-onko-sigmoid-resection-part2.md), [Procedure/mii-exa-onko-sigmoid-resection-part3](Procedure-mii-exa-onko-sigmoid-resection-part3.md) and [Procedure/mii-exa-onko-sigmoid-resection](Procedure-mii-exa-onko-sigmoid-resection.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-operation.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Prozedur_Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Prozedur_Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure) 

** Summary **

Mandatory: 2 elements(3 nested mandatory elements)
 Must-Support: 13 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Tumorkonferenz (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)](StructureDefinition-mii-pr-onko-tumorkonferenz.md)
* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention](StructureDefinition-mii-ex-onko-operation-intention.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency](StructureDefinition-mii-ex-onko-operation-urgency.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.basedOn
* The element 1 is sliced based on the value of Procedure.complication

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Prozedur_Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Prozedur_Procedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure) 

** Summary **

Mandatory: 2 elements(3 nested mandatory elements)
 Must-Support: 13 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Tumorkonferenz (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)](StructureDefinition-mii-pr-onko-tumorkonferenz.md)
* [MII PR Onkologie Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention](StructureDefinition-mii-ex-onko-operation-intention.md)
* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency](StructureDefinition-mii-ex-onko-operation-urgency.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Procedure.basedOn
* The element 1 is sliced based on the value of Procedure.complication

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-operation.csv), [Excel](../StructureDefinition-mii-pr-onko-operation.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-operation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-operation",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Operation",
  "title" : "MII PR Onkologie Operation",
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
  "description" : "Operation nach OPS inklusive Intention, Datum und Komplikationen:",
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
        "map" : "13",
        "comment" : "Operation"
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
      "short" : "Intention der OP",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Intention der OP"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Intention der OP gemäß 13.1 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Intention der OP gemäß 13.1 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:Intention.value[x].coding.code",
      "path" : "Procedure.extension.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "13.1",
        "comment" : "Intention der Operation"
      }]
    },
    {
      "id" : "Procedure.extension:Urgency",
      "path" : "Procedure.extension",
      "sliceName" : "Urgency",
      "short" : "Art des Eingriffs",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Art des Eingriffs"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Modalität der Eingriffsdurchführung gemäß KR6 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Modalität der Eingriffsdurchführung - Elektiveingriff vs. Notfalleingriff - gemäß KR6 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.extension:Urgency.value[x].coding.code",
      "path" : "Procedure.extension.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "KR6",
        "comment" : "Art des Eingriffs (Modalität der Eingriffsdurchführung)"
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
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/Procedure"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code.coding:ops",
      "path" : "Procedure.code.coding",
      "sliceName" : "ops",
      "short" : "OPS-Kode der Operation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "OPS-Kode der Operation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "OPS code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "OPS-Kode der Operation gemäß 13.3 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "OPS-Kode der Operation gemäß 13.3 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "A reference to a code defined by the German Procedure Classification OPS"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Procedure.code.coding:ops.version",
      "path" : "Procedure.code.coding.version",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "13.4",
        "comment" : "OPS Version"
      }]
    },
    {
      "id" : "Procedure.code.coding:ops.code",
      "path" : "Procedure.code.coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "13.3",
        "comment" : "OPS"
      }]
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
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Procedure.performed[x]:performedDateTime",
      "path" : "Procedure.performed[x]",
      "sliceName" : "performedDateTime",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "13.2",
        "comment" : "OP Datum"
      }]
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
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-beurteilung-lokaler-residualstatus"
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "10.1",
        "comment" : "Beurteilung des lokalen Residualstatus nach Abschluss der Operation"
      }]
    },
    {
      "id" : "Procedure.outcome.coding",
      "path" : "Procedure.outcome.coding",
      "short" : "Lokaler Residualstatus",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Lokaler Residualstatus"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Lokaler Residualstatus der OP gemäß 10.1 oBDS 2021. Globaler Residualstatus wird prozedurenunabhängig als eigenständige Observation kodiert.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Lokaler Residualstatus der OP gemäß 10.1 oBDS 2021. Globaler Residualstatus wird prozedurenunabhängig als eigenständige Observation kodiert."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Procedure.outcome.coding.system",
      "path" : "Procedure.outcome.coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.outcome.coding.code",
      "path" : "Procedure.outcome.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.complication",
      "path" : "Procedure.complication",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "13.5",
        "comment" : "OP Komplikationen "
      }]
    },
    {
      "id" : "Procedure.complication:compl_obds",
      "path" : "Procedure.complication",
      "sliceName" : "compl_obds",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-komplikation"
      }
    },
    {
      "id" : "Procedure.complication:compl_obds.coding",
      "path" : "Procedure.complication.coding",
      "short" : "Komplikation der OP laut oBDS",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Komplikation der OP laut oBDS"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Komplikation der OP gemäß 13.5 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Komplikation der OP gemäß 13.5 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Procedure.complication:compl_obds.coding.system",
      "path" : "Procedure.complication.coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-komplikation"
    },
    {
      "id" : "Procedure.complication:compl_obds.coding.code",
      "path" : "Procedure.complication.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Procedure.complication:compl_icd10",
      "path" : "Procedure.complication",
      "sliceName" : "compl_icd10",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://fhir.de/ValueSet/bfarm/icd-10-gm"
      }
    },
    {
      "id" : "Procedure.complication:compl_icd10.coding",
      "path" : "Procedure.complication.coding",
      "short" : "Komplikation der OP Sonstige ICD-10",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Komplikation der OP Sonstige ICD-10"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Komplikation der OP - soweit nicht in 13.1 oBDS 2021 enthalten - als ICD-10-GM",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Komplikation der OP - soweit nicht in 13.1 oBDS 2021 enthalten - als ICD-10-GM"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Procedure.complication:compl_icd10.coding.system",
      "path" : "Procedure.complication.coding.system",
      "min" : 1,
      "patternUri" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
    },
    {
      "id" : "Procedure.complication:compl_icd10.coding.code",
      "path" : "Procedure.complication.coding.code",
      "min" : 1
    }]
  }
}

```
