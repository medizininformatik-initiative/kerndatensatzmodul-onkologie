# MII PR Onkologie Diagnose Primärtumor - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Onkologie Diagnose Primärtumor**

## Resource Profile: MII PR Onkologie Diagnose Primärtumor 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-03 | *Computable Name*:MII_PR_Onko_Diagnose_Primaertumor |

 
Dieses Profil beschreibt die Diagnose des Primärtumors (bzw. der primären hämatologisch-myeloneoplastischen Erkrankung) und basiert auf dem MII KDS Modul Diagnose. 

### Content

This profile describes a diagnosis in oncology. It is based on the MII KDS module Diagnose.

The oBDS requires the diagnosis to be coded via ICD-10, as well as the coding of the topography of the primary tumour and of the histological morphology via ICD-O-3. In FHIR this combination can already be represented completely by the MII Diagnose profile:

* ICD-10-GM via `Condition.code[icd10-gm]` (inherited from MII Diagnose)
* ICD-O-3 morphology via `Condition.extension[morphology-behavior-icdo3]` (comparable to the mCODE extension)
* ICD-O-3 topography via `Condition.bodySite`.

Further histological examinations with deviating morphologies during the course of therapy SHOULD be recorded via the Histologie profile.

### Relations to previous tumour diseases: two axes

An oncological diagnosis can be related to a previous tumour disease in two different ways — the profile deliberately separates these cases into **two orthogonal extensions**:

| | | | |
| :--- | :--- | :--- | :--- |
| Meaning | "occurred**after**" — independent second disease | "was**caused by**" | "is a**transformation of**" — the same tumour lineage |
| Extension | HL7 standard | HL7 standard | module-specific`mii-ex-onko-transformation-von` |
| Target | registered oncology diagnosis**or**[Previous tumour disease](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md) | Condition, Procedure, MedicationStatement/-Administration | **only**a registered oncology diagnosis |
| Typical cases | second carcinoma years after a treated first tumour | **therapy-associated secondary malignancy**(e.g. t-AML`9920/3`after chemotherapy → reference to the therapy) | MDS → secondary AML · CNS /0 → /3 (the registry keeps a**new**entity) |

**oBDS classification:** `occurredFollowing` represents oBDS 5.9; `dueTo` and `transformationVon` are **not part of the registry report** — they are FHIR added value beyond the oBDS for structured linkage (hence without an oBDS mapping). Examples: `mii-exa-onko-diagnose-taml-nach-chemo` (t-AML `9920/3` dueTo a cyclophosphamide MedicationStatement) and `mii-exa-onko-diagnose-angiosarkom-nach-radiatio` (haemangiosarcoma `9120/3` dueTo a radiotherapy Procedure).

**Why not simply use `condition-dueTo` for transformations?** `dueTo` models causation — if transformations were represented through it, lineage transformation (MDS → AML) and external causation (t-AML after chemotherapy) would no longer be distinguishable. The three axes are deliberately kept apart; R5/R6 do not offer a core element for this either (the standard extensions live in the cross-version HL7 extensions pack).

**Why the separation?** A plain `occurredFollowing` would wrongly suggest an **independent** second disease in the case of a transformation; `transformationVon` makes the tumour lineage traceable in a structured way.

**Clinical correctness vs. cancer registry requirements:** `transformationVon` links two diagnosis resources and is therefore only to be used where the **registry rule set actually keeps a new tumour entity** (MDS → AML, CNS /0 → /3). The **CUP resolution** following the best-of rule (Manual ch. 6.2) is deliberately **not** a use case: there **the same entity is changed** — histology, localisation and ICD-10 are rewritten to the primary tumour that was found, while the tumour ID and the original diagnosis date are retained. In registry-conformant terms this is an update of the **same** Condition resource (FHIR versioning, possibly with Provenance); a second resource with `transformationVon` would only arise if a system deviates and keeps its own history of the former CUP version.

**Note on modelling:** `transformationVon` is deliberately a **normal** extension (not a modifierExtension): its absence does not make any statement of the resource wrong — the diagnosis remains true and can be processed safely, only the provenance context is missing. Where the WHO has made the transformation origin an entity of its own, the morphology code itself carries it anyway (e.g. `9895/3` AML-MRC); this is, however, not guaranteed (a secondary glioblastoma may simply be coded as `9440/3`) — which is precisely why the extension provides the structured provenance link.

Both extensions can be combined (a transformation always also occurred temporally "afterwards"); example: `mii-exa-onko-diagnose-aml-transformation` (MDS → secondary AML).

-------

### Links to other resources

The oncological diagnosis is the central core element of the base data set. All case-related observations are linked to it directly or indirectly:

* all observations reference the primary diagnosis via `Observation.focus`
* the tumour board resource references the primary diagnosis via `CarePlan.addresses`
* all procedures (surgery, radiotherapy, systemic therapy) reference the primary diagnosis via `reasonReference`

-------

### Temporal assignment over the course of disease

In the oBDS, the assignment of observations as relevant for establishing the initial diagnosis is given by the fact that they are part of the diagnosis report. Later reports can then be made, for example, as follow-up, pathology or death reports.

Observations made after the initial diagnosis has been established reference, in the present profiling, a "Verlauf" (course) Observation resource with a date of its own. The observations that are known at the time the initial diagnosis is established are of particular interest for prognostic research questions. In order to identify these data points more easily, all observations from the oBDS diagnosis report **SHOULD** be referenced via `evidence.detail` in a FHIR list using the profile "[Evidenz Erstdiagnose](StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose.md)".

-------

### Conformance

The present profiling is compatible with the diagnosis profile of the ISiK base modules stage 4. https://simplifier.net/isik-basis-v4/isikdiagnose

-------

**Examples**

[mii-exa-onko-diagnose](Condition-mii-exa-onko-diagnose.md)

**Usages:**

* Refer to this Profile: [MII EX Onkologie Transformation von](StructureDefinition-mii-ex-onko-transformation-von.md), [MII PR Onkologie Allgemeiner Leistungszustand ECOG](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog.md), [MII PR Onkologie Allgemeiner Leistungszustand nach Karnofsky](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.md), [MII PR Onkologie Anzahl der befallenen Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-befallene-lymphknoten.md)... Show 61 more, [MII PR Onkologie Anzahl der befallenen Sentinel-Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-befallene-sentinel-lymphknoten.md), [MII PR Onkologie Anzahl der untersuchten Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-untersuchte-lymphknoten.md), [MII PR Onkologie Anzahl der untersuchten Sentinel-Lymphknoten](StructureDefinition-mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten.md), [MII PR Onkologie ASA-Klassifikation](StructureDefinition-mii-pr-onko-asa-klassifikation.md), [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md), [MII PR Onkologie Fernmetastasen](StructureDefinition-mii-pr-onko-fernmetastasen.md), [MII PR Onkologie Genetische Variante](StructureDefinition-mii-pr-onko-genetische-variante.md), [MII PR Onkologie Grading](StructureDefinition-mii-pr-onko-grading.md), [MII PR Onkologie Histologie ICD-O-3](StructureDefinition-mii-pr-onko-histologie-icdo3.md), [MII PR Onkologie Abstand Aboral](StructureDefinition-mii-pr-onko-krk-abstand-aboral.md), [MII PR Onkologie Abstand Anokutan](StructureDefinition-mii-pr-onko-krk-abstand-anokutan.md), [MII PR Onkologie Abstand Circumferelle Resektionsebene](StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene.md), [MII PR Onkologie KRK MRT/CT Abstand Mesorektale Faszie](StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie.md), [MII PR Onkologie Präoperative Drahtmarkierung Mamma](StructureDefinition-mii-pr-onko-krk-operation.md), [MII PR Onkologie KRK Stoma-Markierung](StructureDefinition-mii-pr-onko-krk-stoma-markierung.md), [MII PR Onkologie Her2neu Status](StructureDefinition-mii-pr-onko-mamma-her2neu-status.md), [MII PR Onkologie Menopausenstatus Mamma](StructureDefinition-mii-pr-onko-mamma-menopause-status.md), [MII PR Onkologie Mamma Operation](StructureDefinition-mii-pr-onko-mamma-operation.md), [MII PR Onkologie Rezeptorstatus Estrogen](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.md), [MII PR Onkologie Rezeptorstatus Progesteron](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron.md), [MII PR Onkologie Präoperative Drahtmarkierung Mamma](StructureDefinition-mii-pr-onko-mamma-sozialdienst.md), [MII PR Onkologie Melanom Breslow Tiefe](StructureDefinition-mii-pr-onko-melanom-breslow-tiefe.md), [MII PR Onkologie Melanom LDH](StructureDefinition-mii-pr-onko-melanom-ldh.md), [MII PR Onkologie Melanom Sicherheitsabstand](StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand.md), [MII PR Onkologie Melanom Ulzeration](StructureDefinition-mii-pr-onko-melanom-ulzeration.md), [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.md), [MII PR Onkologie Prostata Anzahl positiver Stanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.md), [MII PR Onkologie Prostata Anzahl Stanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen.md), [MII PR Onkologie Ca-Befall Stanze](StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.md), [MII PR Onkologie Clavien Dindo](StructureDefinition-mii-pr-onko-prostate-clavien-dindo.md), [MII PR Onkologie Prostata Gleason Grade Group](StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.md), [MII PR Onkologie Prostata Gleason Pattern](StructureDefinition-mii-pr-onko-prostate-gleason-patterns.md), [MII PR Onkologie Prostata Gleason Score Gesamt](StructureDefinition-mii-pr-onko-prostate-gleason-score-gesamt.md), [MII PR Onkologie PSA-Wert](StructureDefinition-mii-pr-onko-prostate-psa.md), [MII PR Onkologie Residualstatus](StructureDefinition-mii-pr-onko-residualstatus.md), [MII PR Onkologie Strahlentherapie Nuklearmedizin](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin.md), [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.md), [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie.md), [MII PR Onkologie Studienteilnahme](StructureDefinition-mii-pr-onko-studienteilnahme.md), [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md), [MII PR Onkologie Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.md), [MII PR Onkologie Therapieempfehlung Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.md), [MII PR Onkologie Therapieempfehlung Operation](StructureDefinition-mii-pr-onko-therapieempfehlung-operation.md), [MII PR Onkologie TNM a-Symbol](StructureDefinition-mii-pr-onko-tnm-a-symbol.md), [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md), [MII PR Onkologie TNM L-Kategorie](StructureDefinition-mii-pr-onko-tnm-l-kategorie.md), [MII PR Onkologie TNM M-Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md), [MII PR Onkologie TNM m-Symbol](StructureDefinition-mii-pr-onko-tnm-m-symbol.md), [MII PR Onkologie TNM N-Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md), [MII PR Onkologie TNM Pn-Kategorie](StructureDefinition-mii-pr-onko-tnm-pn-kategorie.md), [MII PR Onkologie TNM r-Symbol](StructureDefinition-mii-pr-onko-tnm-r-symbol.md), [MII PR Onkologie TNM S-Kategorie](StructureDefinition-mii-pr-onko-tnm-s-kategorie.md), [MII PR Onkologie TNM T-Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md), [MII PR Onkologie TNM V-Kategorie](StructureDefinition-mii-pr-onko-tnm-v-kategorie.md), [MII PR Onkologie TNM y-Symbol](StructureDefinition-mii-pr-onko-tnm-y-symbol.md), [MII PR Onkologie Tod](StructureDefinition-mii-pr-onko-tod.md), [MII PR Onkologie Tumorgröße](StructureDefinition-mii-pr-onko-tumorgroesse.md), [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.md), [MII PR Onkologie Tumormarker](StructureDefinition-mii-pr-onko-tumormarker.md), [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.md) and [MII PR Onkologie Weitere Klassifikationen](StructureDefinition-mii-pr-onko-weitere-klassifikationen.md)
* Examples for this Profile: [Condition/PatientKimMusterperson-Diagnosis-1](Condition-PatientKimMusterperson-Diagnosis-1.md), [Condition/PatientKimMusterperson-PrimaryDiagnosis-2](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md), [Condition/mii-exa-onko-ascending-colon-cancer-diagnosis](Condition-mii-exa-onko-ascending-colon-cancer-diagnosis.md), [Condition/mii-exa-onko-colorectal-cancer-diagnosis](Condition-mii-exa-onko-colorectal-cancer-diagnosis.md)... Show 18 more, [Condition/mii-exa-onko-cup-diagnose-aufgeloest](Condition-mii-exa-onko-cup-diagnose-aufgeloest.md), [Condition/mii-exa-onko-cup-diagnose](Condition-mii-exa-onko-cup-diagnose.md), [Condition/mii-exa-onko-diagnose-aml-transformation](Condition-mii-exa-onko-diagnose-aml-transformation.md), [Condition/mii-exa-onko-diagnose-angiosarkom-nach-radiatio](Condition-mii-exa-onko-diagnose-angiosarkom-nach-radiatio.md), [Condition/mii-exa-onko-diagnose-mds](Condition-mii-exa-onko-diagnose-mds.md), [Condition/mii-exa-onko-diagnose-meningeom-benigne](Condition-mii-exa-onko-diagnose-meningeom-benigne.md), [Condition/mii-exa-onko-diagnose-meningeom-maligne-transformation](Condition-mii-exa-onko-diagnose-meningeom-maligne-transformation.md), [Condition/mii-exa-onko-diagnose-taml-nach-chemo](Condition-mii-exa-onko-diagnose-taml-nach-chemo.md), [Condition/mii-exa-onko-diagnose](Condition-mii-exa-onko-diagnose.md), [Condition/mii-exa-onko-kim-synth-diagnose](Condition-mii-exa-onko-kim-synth-diagnose.md), [Condition/mii-exa-onko-krk-diagnose](Condition-mii-exa-onko-krk-diagnose.md), [Condition/mii-exa-onko-mamma-diagnose](Condition-mii-exa-onko-mamma-diagnose.md), [Condition/mii-exa-onko-melanom-diagnose](Condition-mii-exa-onko-melanom-diagnose.md), [Condition/mii-exa-onko-prostata-diagnose](Condition-mii-exa-onko-prostata-diagnose.md), [Condition/mii-exa-onko-tnm-bundle-diagnose](Condition-mii-exa-onko-tnm-bundle-diagnose.md), [Condition/mii-exa-onko-tnm-bundle-legacy-diagnose](Condition-mii-exa-onko-tnm-bundle-legacy-diagnose.md), [Condition/mii-exa-onko-tnm-synth-diagnose](Condition-mii-exa-onko-tnm-synth-diagnose.md) and [Condition/primaertumor-example](Condition-primaertumor-example.md)
* CapabilityStatements using this Profile: [MII CPS Onkology CapabilityStatement](CapabilityStatement-mii-cps-onko-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-pr-onko-diagnose-primaertumor.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-onko-diagnose-primaertumor.csv), [Excel](../StructureDefinition-mii-pr-onko-diagnose-primaertumor.xlsx), [Schematron](../StructureDefinition-mii-pr-onko-diagnose-primaertumor.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-onko-diagnose-primaertumor",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
  "version" : "2027.0.0-ballot.rc1",
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
  "date" : "2026-09-03T16:38:13+00:00",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
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
      "comment" : "An der Diagnose können mehrere Morphologie-Angaben stehen (0..*) — etwa bei gemischter Histologie oder Re-Klassifikation im Krankheitsverlauf. Befundbezogen wird jede Morphologie zusätzlich als Histologie-Observation (mii-pr-onko-histologie-icdo3) dokumentiert: dort genau eine Morphologie je Befund, mit Specimen- und Datumsbezug.",
      "min" : 0,
      "max" : "*",
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
      "short" : "Frühere Tumorerkrankungen (zeitliche Abfolge)",
      "definition" : "Verweis auf frühere Tumorerkrankungen, nach denen die aktuelle Diagnose aufgetreten ist — als registrierte onkologische Diagnose oder als nur anamnestisch bekannte frühere Tumorerkrankung. Rein zeitliche Abfolge; für Transformationen derselben Tumor-Linie ist die Extension transformationVon zu verwenden.",
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
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung"]
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankungen"
      }]
    },
    {
      "id" : "Condition.extension:dueTo",
      "path" : "Condition.extension",
      "sliceName" : "dueTo",
      "short" : "Verursacht durch (therapieassoziierte Sekundärmalignome)",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verursacht durch — therapieassoziierte Sekundärmalignome"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verursachung dieser Diagnose durch eine frühere Erkrankung oder Therapie (HL7-Standardextension condition-dueTo) — z. B. therapiebedingte myeloische Neoplasie (9920/3) nach Chemotherapie (Verweis auf MedicationStatement) oder radiogenes Sarkom nach Strahlentherapie (Verweis auf Procedure). Nicht Teil des oBDS; Abgrenzung zu transformationVon (Linien-Kontinuität) siehe IG-Seite.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/condition-dueTo"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.extension:dueTo.value[x]",
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
      "id" : "Condition.extension:dueTo.value[x]:valueReference",
      "path" : "Condition.extension.value[x]",
      "sliceName" : "valueReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung"]
      }]
    },
    {
      "id" : "Condition.extension:transformationVon",
      "path" : "Condition.extension",
      "sliceName" : "transformationVon",
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
      "definition" : "Kennzeichnet diese Diagnose als Transformation aus einem bereits registrierten Primärtumor derselben Tumor-Linie — für Konstellationen, in denen das Krebsregister-Regelwerk eine neue Tumor-Entität führt (z. B. MDS → sekundäre AML, ZNS-Tumor /0 → /3). Die CUP-Auflösung nach der Best-Of-Regel (Manual Kap. 6.2) ist davon abzugrenzen: Dort wird dieselbe Entität aktualisiert (Tumor-ID und Diagnosedatum bleiben erhalten), es entsteht keine zweite Diagnose-Ressource.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-transformation-von"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.identifier",
      "path" : "Condition.identifier",
      "short" : "Tumor-ID (Tumoridentität)",
      "definition" : "Lokale Tumor-Identität zur Bündelung aller Ressourcen eines Tumors (Therapie/Verlauf via reasonReference/focus) und zur Unterscheidung bei Mehrfachtumoren. In Primärsystemen als Klartext-ID nutzbar; für die MII-Nutzung MUSS dieser Identifier ebenfalls pseudonymisiert werden (analog zur Patienten-Pseudonymisierung, MII Base). Der Wert ist NICHT bundesweit eindeutig — 'system' ist standort-/quellspezifisch zu vergeben.",
      "mustSupport" : true
    },
    {
      "id" : "Condition.identifier.system",
      "path" : "Condition.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "Condition.identifier.value",
      "path" : "Condition.identifier.value",
      "mustSupport" : true
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
      "min" : 1
    },
    {
      "id" : "Condition.verificationStatus.coding:primaertumorDiagnosesicherung.code",
      "path" : "Condition.verificationStatus.coding.code",
      "min" : 1,
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "5.7",
        "comment" : "Primärtumor Diagnosesicherung"
      }]
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Condition.category:onkologie",
      "path" : "Condition.category",
      "sliceName" : "onkologie",
      "short" : "Onkologie-Kennzeichnung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Onkologie-Kennzeichnung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Kennzeichnet die Diagnose als onkologische Diagnose des KDS-Moduls Onkologie und macht sie über die category-Suche auffindbar",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "55342001",
          "display" : "Neoplastic disease"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:icd10-gm",
      "path" : "Condition.code.coding",
      "sliceName" : "icd10-gm",
      "constraint" : [{
        "key" : "onko-icd-meldepflicht",
        "severity" : "warning",
        "human" : "Der ICD-10-GM-Code sollte aus der Menge der krebsregister-meldepflichtigen Neubildungen stammen (C00-C97, D00-D09, D32-D33, D35.2-D35.4, D37-D48). Andere Codes sind zulässig, aber untypisch für eine onkologische Primärdiagnose.",
        "expression" : "$this.memberOf('https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icd10-meldepflichtige-tumoren')",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
      }]
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
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-topographie"
      }
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
