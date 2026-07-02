# MII PR Onkologie Diagnose Primärtumor - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Ressourcenprofil: MII PR Onkologie Diagnose Primärtumor 

 
Diagnose des Primärtumors bzw. der primären hämatologisch-myeloneoplastischen Erkrankung im Rahmen einer onkologischen Erkrankung, basierend auf dem MII KDS Modul Diagnose 

### Inhalt

Dieses Profil beschreibt eine Diagnose in der Onkologie. Es basiert auf dem MII KDS Modul Diagnose.

Der oBDS erwartet die Kodierung der Diagnose via ICD-10 sowie die Kodierung der Topographie des Primärtumors und der histologischen Morphologie über ICD-O-3. In FHIR kann diese Kombination bereits vollständig über die MII-Diagnose abgebildet werden:

* ICD-10-GM über `Condition.code[icd10-gm]`, (abgeleitet von MII-Diagnose)
* ICD-O-3-Morphologie über `Condition.extension[morphology-behavior-icdo3]` (vergleichbar mCODE-Erweiterung)
* ICD-O-3-Topgraphie über `Condition.bodySite`.

Weitere histologische Untersuchungen mit abweichenden Morphologien im Therapieverlauf SOLLEN über das Histologie-Profil erfasst werden.

-------

### Verknüpfungen zu anderen Ressourcen

Die onkologische Diagnose ist das zentrale Kernelement des Basisdatensatzes. Alle fallbezogenen Beobachtungen sind direkt oder indirekt damit verknüpft:

* alle Beobachtungen verweisen über `Observation.focus` auf die Primärdiagnose
* die Tumorkonferenz-Ressource verweist über `CarePlan.addresses` auf die Primärdiagnose
* alle Prozeduren (OP, Strahlentherapie, Systemische Therapie) verweisen über `reasonReference` auf die Primärdiagnose

-------

### Zeitliche Zuordnung im Verlauf

Im oBDS ist eine Zuordung der Beobachtungen als wichtig für die Erstdiagnosestellung dadurch gegeben, dass diese Teil der Diagnosemeldung sind. Spätere Meldungen können dann bsw. als Verlaufs-, Pathologie- oder Todesmeldung gemacht werden.

Beobachtungen, die nach Stellung der Erstdiagnose gemacht werden, verweisen in der vorliegenden Profilierung auf eine "Verlauf"-Observation-Ressource mit einem eigenen Datum. Die Beobachtungen, die zum Zeitpunkt der Erstdiagnosestellung bekannt sind, sind von besonderem Interesse für prognostische Forschungsfragen. Um diese Datenpunkte leichter zu identifizieren, **SOLLEN** alle Beobachtungen aus der oBDS-Diagnosemeldung in einer FHIR-Liste mit dem Profil "Evidenz Erstdiagnose" über `evidence.detail` referenziert werden.

-------

### Konformität

Die vorliegende Profilierung ist kompatibel mit dem Diagnoseprofil der ISiK-Basismodule Stufe 4. https://simplifier.net/isik-basis-v4/isikdiagnose

-------

Mapping Datensatz zu FHIR

-------

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

-------

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?_id=12345`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "code" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?code=http://fhir.de/CodeSystem/bfarm/icd-10-gm|A15.0`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?subject=Patient/test`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "patient" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?patient=Patient/test`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "body-site" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?body-site=http://terminology.hl7.org/CodeSystem/icd-o-3|C44.2`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.body-site" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "morphology-behaviour-icd03" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?morphology-behaviour-icdo3=http://terminology.hl7.org/CodeSystem/icd-o-3|8503/2`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.extension[morphology-behaviour-icdo3]" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "icd10gm-diagnosesicherheit" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?icd10gm-diagnosesicherheit=https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT|G`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code.coding.extension.where(url='http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit').value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "icd10gm-mehrfachcodierung" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?icd10gm-mehrfachcodierung=http://fhir.de/CodeSystem/icd-10-gm-mehrfachcodierungs-kennzeichen|†`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code.coding.extension.where(url='http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen').value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).
1. Der Suchparameter "icd10gm-seitenlokalisation" MUSS unterstützt werden:Beispiele:`GET [base]/Condition?icd10gm-seitenlokalisation=https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION|B`Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code.coding.extension.where(url = 'http://fhir.de/StructureDefinition/seitenlokalisation').value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

-------

**Beispiele**

[Beispiel: mii-exa-onko-diagnose](Condition-mii-exa-onko-diagnose.md)

**Usages:**

* Refer to this Profile: [MII PR Onkologie Anzahl der befallenen Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-befallene-lymphknoten.md), [MII PR Onkologie Anzahl der befallenen Sentinel-Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-befallene-sentinel-lymphknoten.md), [MII PR Onkologie Anzahl der untersuchten Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-untersuchte-lymphknoten.md), [MII PR Onkologie Anzahl der untersuchten Sentinel-Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten.md)... Show 55 more, [MII PR Onkologie ASA-Klassifikation](StructureDefinition-mii-pr-onko-asa-klassifikation.md), [MII PR Onkologie Fernmetastasen](StructureDefinition-mii-pr-onko-fernmetastasen.md), [MII PR Onkologie Genetische Variante](StructureDefinition-mii-pr-onko-genetische-variante.md), [MII PR Onkologie Grading](StructureDefinition-mii-pr-onko-grading.md), [MII PR Onkologie Histologie ICD-O-3](StructureDefinition-mii-pr-onko-histologie-icdo3.md), [MII PR Onkologie Abstand Aboral](StructureDefinition-mii-pr-onko-krk-abstand-aboral.md), [MII PR Onkologie Abstand Anokutan](StructureDefinition-mii-pr-onko-krk-abstand-anokutan.md), [MII PR Onkologie Abstand Circumferelle Resektionsebene](StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene.md), [MII PR Onkologie KRK MRT/CT Abstand Mesorektale Faszie](StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie.md), [MII PR Onkologie Präoperative Drahtmarkierung Mamma](StructureDefinition-mii-pr-onko-krk-operation.md), [MII PR Onkologie KRK Stoma-Markierung](StructureDefinition-mii-pr-onko-krk-stoma-markierung.md), [MII PR Onkologie Her2neu Status](StructureDefinition-mii-pr-onko-mamma-her2neu-status.md), [MII PR Onkologie Menopausenstatus Mamma](StructureDefinition-mii-pr-onko-mamma-menopause-status.md), [MII PR Onkologie Mamma Operation](StructureDefinition-mii-pr-onko-mamma-operation.md), [MII PR Onkologie Rezeptorstatus Estrogen](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.md), [MII PR Onkologie Rezeptorstatus Progesteron](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron.md), [MII PR Onkologie Präoperative Drahtmarkierung Mamma](StructureDefinition-mii-pr-onko-mamma-sozialdienst.md), [MII PR Onkologie Melanom Breslow Tiefe](StructureDefinition-mii-pr-onko-melanom-breslow-tiefe.md), [MII PR Onkologie Melanom LDH](StructureDefinition-mii-pr-onko-melanom-ldh.md), [MII PR Onkologie Melanom Sicherheitsabstand](StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand.md), [MII PR Onkologie Melanom Ulzeration](StructureDefinition-mii-pr-onko-melanom-ulzeration.md), [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md), [MII PR Onkologie Prostata Anzahl positiver Stanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.md), [MII PR Onkologie Prostata Anzahl Stanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen.md), [MII PR Onkologie Ca-Befall Stanze](StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.md), [MII PR Onkologie Clavien Dindo](StructureDefinition-mii-pr-onko-prostate-clavien-dindo.md), [MII PR Onkologie Prostata Gleason Grade Group](StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.md), [MII PR Onkologie Prostata Gleason Primär](StructureDefinition-mii-pr-onko-prostate-gleason-patterns.md), [MII PR Onkologie PSA-Wert](StructureDefinition-mii-pr-onko-prostate-psa.md), [MII PR Onkologie Residualstatus](StructureDefinition-mii-pr-onko-residualstatus.md), [MII PR Onkologie Strahlentherapie Nuklearmedizin](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.md), [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.md), [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie.md), [MII PR Onkologie Studienteilnahme](StructureDefinition-mii-pr-onko-studienteilnahme.md), [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md), [MII PR Onkologie Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md), [MII PR Onkologie Therapieempfehlung Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md), [MII PR Onkologie Therapieempfehlung Operation](StructureDefinition-mii-pr-onko-therapieempfehlung-operation.md), [MII PR Onkologie TNM a-Symbol](StructureDefinition-mii-pr-onko-tnm-a-symbol.md), [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md), [MII PR Onkologie TNM L-Kategorie](StructureDefinition-mii-pr-onko-tnm-l-kategorie.md), [MII PR Onkologie TNM M-Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md), [MII PR Onkologie TNM m-Symbol](StructureDefinition-mii-pr-onko-tnm-m-symbol.md), [MII PR Onkologie TNM N-Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md), [MII PR Onkologie TNM Pn-Kategorie](StructureDefinition-mii-pr-onko-tnm-pn-kategorie.md), [MII PR Onkologie TNM r-Symbol](StructureDefinition-mii-pr-onko-tnm-r-symbol.md), [MII PR Onkologie TNM S-Kategorie](StructureDefinition-mii-pr-onko-tnm-s-kategorie.md), [MII PR Onkologie TNM T-Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md), [MII PR Onkologie TNM V-Kategorie](StructureDefinition-mii-pr-onko-tnm-v-kategorie.md), [MII PR Onkologie TNM y-Symbol](StructureDefinition-mii-pr-onko-tnm-y-symbol.md), [MII PR Onkologie Tod](StructureDefinition-mii-pr-onko-tod.md), [MII PR Onkologie Tumorgröße](StructureDefinition-mii-pr-onko-tumorgroesse.md), [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md), [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.md) and [MII PR Onkologie Weitere Klassifikationen](StructureDefinition-mii-pr-onko-weitere-klassifikationen.md)
* Examples for this Profile: [Condition/PatientKimMusterperson-Diagnosis-1](Condition-PatientKimMusterperson-Diagnosis-1.md), [Condition/PatientKimMusterperson-PrimaryDiagnosis-2](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md), [Condition/mii-exa-onko-ascending-colon-cancer-diagnosis](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md), [Condition/mii-exa-onko-colorectal-cancer-diagnosis](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md)... Show 6 more, [Condition/mii-exa-onko-diagnose](Condition-mii-exa-onko-diagnose.md), [Condition/mii-exa-onko-krk-diagnose](Condition-mii-exa-onko-krk-diagnose.md), [Condition/mii-exa-onko-mamma-diagnose](Condition-mii-exa-onko-mamma-diagnose.md), [Condition/mii-exa-onko-melanom-diagnose](Condition-mii-exa-onko-melanom-diagnose.md), [Condition/mii-exa-onko-prostata-diagnose](Condition-mii-exa-onko-prostata-diagnose.md) and [Condition/primaertumor-example](Condition-primaertumor-example.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-ig-onko-de-v2026|current/StructureDefinition/StructureDefinition-mii-pr-onko-diagnose-primaertumor.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Diagnose_Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Diagnose_Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose) 

** Summary **

Mandatory: 2 elements(6 nested mandatory elements)
 Must-Support: 15 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Frühere Tumorerkrankung (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung)](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md)
* [MII PR Onkologie Evidenz Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose)](StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3](StructureDefinition-mii-ex-onko-histology-morphology-behavior-icdo3.md)
* [http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-condition-occurredFollowing.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Condition.extension.value[x]
* The element 1 is sliced based on the value of Condition.verificationStatus.coding

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Diagnose_Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Diagnose_Condition](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose) 

** Summary **

Mandatory: 2 elements(6 nested mandatory elements)
 Must-Support: 15 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Frühere Tumorerkrankung (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung)](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md)
* [MII PR Onkologie Evidenz Diagnose Primärtumor (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose)](StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose.md)

**Extensions**

This structure refers to these extensions:

* [https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3](StructureDefinition-mii-ex-onko-histology-morphology-behavior-icdo3.md)
* [http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-condition-occurredFollowing.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Condition.extension.value[x]
* The element 1 is sliced based on the value of Condition.verificationStatus.coding

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-onko-diagnose-primaertumor.csv), [Excel](../StructureDefinition-mii-pr-onko-diagnose-primaertumor.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-diagnose-primaertumor.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-diagnose-primaertumor",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
  "version" : "2026.0.3",
  "name" : "MII_PR_Onko_Diagnose_Primaertumor",
  "title" : "MII PR Onkologie Diagnose Primärtumor",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Onkologische Diagnose im Rahmen einer onkologischen Erkrankung"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
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
  "description" : "Dieses Profil beschreibt die Diagnose des Primärtumors (bzw. der primären hämatologisch-myeloneoplastischen Erkrankung) und basiert auf dem MII KDS Modul Diagnose.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Diagnose des Primärtumors bzw. der primären hämatologisch-myeloneoplastischen Erkrankung im Rahmen einer onkologischen Erkrankung, basierend auf dem MII KDS Modul Diagnose"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "MII-FHIR-to-MVGenomSeq",
    "name" : "Onkologie LogicalModel MII Onkologie Mapping"
  },
  {
    "identity" : "oBDS",
    "name" : "Mapping FHIR zu oBDS"
  },
  {
    "identity" : "LogicalModel",
    "name" : "FHIR-Profil zu LogicalModel Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition",
      "mapping" : [{
        "identity" : "MII-FHIR-to-MVGenomSeq",
        "map" : "OnkologieFall.Diagnose"
      },
      {
        "identity" : "oBDS",
        "map" : "5",
        "comment" : "Diagnose"
      }]
    },
    {
      "id" : "Condition.extension",
      "path" : "Condition.extension",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:Feststellungsdatum",
      "path" : "Condition.extension",
      "sliceName" : "Feststellungsdatum",
      "min" : 1,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.6",
        "comment" : "Primärtumor Diagnosedatum"
      }]
    },
    {
      "id" : "Condition.extension:morphology-behavior-icdo3",
      "path" : "Condition.extension",
      "sliceName" : "morphology-behavior-icdo3",
      "short" : "ICD-O-Morphologie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ICD-O-Morphologie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Morphologie des Primärtumors nach ICD-O-3 nach 6.3 oBDS",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Morphologie des Primärtumors nach ICD-O-3 nach 6.3 oBDS"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:morphology-behavior-icdo3.value[x].coding.version",
      "path" : "Condition.extension.value[x].coding.version",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "6.4",
        "comment" : "Morphologie ICD-O/Blue Book Version"
      }]
    },
    {
      "id" : "Condition.extension:morphology-behavior-icdo3.value[x].coding.code",
      "path" : "Condition.extension.value[x].coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "6.3",
        "comment" : "Morphologie-Code"
      }]
    },
    {
      "id" : "Condition.extension:morphology-behavior-icdo3.value[x].text",
      "path" : "Condition.extension.value[x].text",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "6.5",
        "comment" : "Morphologie-Freitext"
      }]
    },
    {
      "id" : "Condition.extension:occurredFollowing",
      "path" : "Condition.extension",
      "sliceName" : "occurredFollowing",
      "short" : "Frühere Tumorerkrankungen",
      "definition" : "Verweis auf frühere Tumorerkrankungen, nach denen die aktuelle Diagnose aufgetreten ist",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:occurredFollowing.value[x]",
      "path" : "Condition.extension.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.extension:occurredFollowing.value[x]:valueReference",
      "path" : "Condition.extension.value[x]",
      "sliceName" : "valueReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung"]
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankungen"
      }]
    },
    {
      "id" : "Condition.verificationStatus.coding",
      "path" : "Condition.verificationStatus.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.verificationStatus.coding:condition-ver-status",
      "path" : "Condition.verificationStatus.coding",
      "sliceName" : "condition-ver-status",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-ver-status"
      }
    },
    {
      "id" : "Condition.verificationStatus.coding:primaertumorDiagnosesicherung",
      "path" : "Condition.verificationStatus.coding",
      "sliceName" : "primaertumorDiagnosesicherung",
      "short" : "Diagnosesicherung gemäß oBDS",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Diagnosesicherung gemäß oBDS"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Art der Diagnosesicherung nach 5.7 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Art der Diagnosesicherung nach 5.7 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-primaertumor-diagnosesicherung"
      }
    },
    {
      "id" : "Condition.verificationStatus.coding:primaertumorDiagnosesicherung.system",
      "path" : "Condition.verificationStatus.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.verificationStatus.coding:primaertumorDiagnosesicherung.code",
      "path" : "Condition.verificationStatus.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.7",
        "comment" : "Primärtumor Diagnosesicherung"
      }]
    },
    {
      "id" : "Condition.code.coding:icd10-gm",
      "path" : "Condition.code.coding",
      "sliceName" : "icd10-gm"
    },
    {
      "id" : "Condition.code.coding:icd10-gm.version",
      "path" : "Condition.code.coding.version",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.2",
        "comment" : "Primärtumor Tumordiagnose ICD-Version"
      }]
    },
    {
      "id" : "Condition.code.coding:icd10-gm.code",
      "path" : "Condition.code.coding.code",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.1",
        "comment" : "Primärtumor Tumordiagnose ICD Code"
      }]
    },
    {
      "id" : "Condition.code.text",
      "path" : "Condition.code.text",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.3",
        "comment" : "Primärtumor Tumordiagnose Text"
      }]
    },
    {
      "id" : "Condition.bodySite.coding:primaertumorSeitenlokalisation",
      "path" : "Condition.bodySite.coding",
      "sliceName" : "primaertumorSeitenlokalisation",
      "short" : "Seitenlokalisation des Primärtumors gemäß oBDS",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Seitenlokalisation des Primärtumors gemäß oBDS"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Seitenlokalisation des Primärtumors nach 5.8 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Seitenlokalisation des Primärtumors nach 5.8 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-seitenlokalisation"
      }
    },
    {
      "id" : "Condition.bodySite.coding:primaertumorSeitenlokalisation.system",
      "path" : "Condition.bodySite.coding.system",
      "min" : 1,
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite.coding:primaertumorSeitenlokalisation.code",
      "path" : "Condition.bodySite.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.8",
        "comment" : "Primärtumor Seitenlokalisation"
      }]
    },
    {
      "id" : "Condition.bodySite.coding:icd-o-3",
      "path" : "Condition.bodySite.coding",
      "sliceName" : "icd-o-3",
      "short" : "ICD-O-Topographie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ICD-O-Topographie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Topographie des Primärtumors nach ICD-O-3 nach 5.4 oBDS 2021",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Topographie des Primärtumors nach ICD-O-3 nach 5.4 oBDS 2021"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite.coding:icd-o-3.system",
      "path" : "Condition.bodySite.coding.system",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite.coding:icd-o-3.version",
      "path" : "Condition.bodySite.coding.version",
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.5",
        "comment" : "Primärtumor Topographie ICD-O-Version"
      }]
    },
    {
      "id" : "Condition.bodySite.coding:icd-o-3.code",
      "path" : "Condition.bodySite.coding.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-topographie"
      },
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.4",
        "comment" : "Primärtumor Topographie ICD-O"
      }]
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "Condition.evidence",
      "path" : "Condition.evidence",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.evidence.detail",
      "path" : "Condition.evidence.detail",
      "short" : "Evidenz für Erstdiagnose",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Evidenz für Erstdiagnose"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Liste aller für die Erstdiagnose ausschlaggebenden Beobachtungen",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Liste aller für die Erstdiagnose ausschlaggebenden Beobachtungen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose"]
      }],
      "mustSupport" : true
    }]
  }
}

```
