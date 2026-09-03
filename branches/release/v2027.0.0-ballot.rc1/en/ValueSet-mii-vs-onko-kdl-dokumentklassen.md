# MII VS Onkologie KDL Dokumentklassen - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie KDL Dokumentklassen**

## ValueSet: MII VS Onkologie KDL Dokumentklassen 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-kdl-dokumentklassen | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-03 | *Computable Name*:MII_VS_Onko_KDL_Dokumentklassen |

 
Kuratierte Auswahl der KDL-Dokumentklassen (KDL 2025) entlang des onkologischen Behandlungspfads (oBDS-Kapitel: Diagnose/Pathologie, Staging-Bildgebung, Tumorkonferenz, Operation, Strahlentherapie, Systemische Therapie, Verlauf/Labor, Tod, Studien, übergreifende Dokumente) als Begleitartefakt für DocumentReference.type. Teilmenge des KDL-Bindings im MII-KDS-Modul Dokument; deprecated-Klassen sind ausgeschlossen. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

Oncological care produces documents across all specialties — pathology reports, imaging reports, therapy protocols, tumour board minutes, registry notifications. At the document level (e.g. `DocumentReference.type` in document exchange) these are classified in Germany via the **Klinische Dokumentenklassen-Liste (KDL)** of the DVMD (CodeSystem `http://dvmd.de/fhir/CodeSystem/kdl`, as of version 2025).

This page assigns the KDL document classes to the oncological treatment pathway (oBDS chapters) and shows which MII KDS module represents the respective content in a structured way. It complements the page **Context within the overall project / relations to other modules** with the document perspective.

### Basic principle

The KDL knows **no oncology-specific report classes** — apart from the small subclass `SD1501` "Onkologische Dokumente" (oncological documents) from the registry/centre perspective. All treatment-related documents run through specialty-neutral classes (imaging by modality, pathology by method, therapy by procedure). The oncological semantics only arise from:

1. the**context**:`DocumentReference.context.practiceSetting`with the specialty oncology (IHE-D terminology), and
1. the**structured representation**via the profiles of this module or of the linked KDS modules.

### KDL classes along the oncological treatment pathway

| | | |
| :--- | :--- | :--- |
| **Diagnosis & initial notification**(ch. 5, 6) | `PT080102`Histologiebefund ·`PT260102`Zytologiebefund ·`SD150102`Meldebogen Krebsregister ·`SD150104`Tumorlokalisationsbogen | Onkologie (Diagnose Primärtumor, Histologie),**Pathologiebefundbericht** |
| **Molecular diagnostics**(ch. 23) | `PT130102`Molekularpathologiebefund | Onkologie (Genetische Variante),**Molekulargenetischer Befundbericht (MolGen)** |
| **Staging & imaging**(ch. 8, 11) | `DG020103`CT ·`DG020107`MRT ·`DG020109`PET ·`DG020112`SPECT ·`DG020113`Szintigraphie ·`DG020110`Röntgen ·`DG020111`Sonographie ·`DG020114`Mammographie ·`DG020105`Endoskopie | Onkologie (TNM, Fernmetastasen),**Bildgebung**(integration planned for v2027) |
| **Tumour board**(ch. 18/19) | `SD150103`Tumorkonferenzprotokoll ·`AD060103`/`AD060110`Konsilberichte | Onkologie (Tumorkonferenz),**Molekulares Tumorboard** |
| **Surgery**(ch. 13) | `OP150103`OP-Bericht ·`OP150106`OP-Protokoll ·`OP150104`OP-Bilddokumentation ·`AM010303`Operationsaufklärungsbogen | Onkologie (Operation),**Prozedur** |
| **Radiotherapy**(ch. 14) | `TH020101`Bestrahlungsplan ·`TH020102`Bestrahlungsprotokoll ·`TH020103`Bestrahlungsverordnung ·`TH020104`Radiojodtherapieprotokoll ·`TH020105`Therapieprotokoll mit Radionukliden | Onkologie (Strahlentherapie),**Prozedur** |
| **Systemic therapy**(ch. 16) | `TH130103`Chemotherapieprotokoll ·`TH130104`Hormontherapieprotokoll ·`TH130107`Medikationsplan ·`TH130102`Arzneiadministration ·`AM010304`Aufklärungsbogen Therapie | Onkologie (Systemische Therapie),**Medikation** |
| **Course of disease & aftercare**(ch. 17) | `SD150101`Follow up-Bogen ·`LB120107`Laborbefund ·`LB120106`Hämatologisches Speziallabor | Onkologie (Verlauf),**Labor** |
| **Death**(ch. 20) | `AD020103`Todesbescheinigung | Onkologie (Tod), Vitalstatus (alignment planned) |
| **Studies** | `SF190101`CRF-Bogen ·`SF190102`Einwilligung Studie ·`SF190106`Studienbericht | **Studie / Forschungsvorhaben** |
| **Cross-cutting** | `AD010103`/`AD010104`Entlassungsbericht ·`SD150199`Sonstiger onkologischer Dokumentationsbogen (incl. Psychoonkologische Basisdokumentation, Tumorverlaufsblatt) | — |

### Notes on usage

* **Tumour board minutes**: In KDL 2025 the older code `AD060106` (under "Fallbesprechungen") is marked as **deprecated** — the class was moved into the oncological subclass. **`SD150103`** is to be used.
* **Oncological documents (`SD1501`)** comprises exactly five classes: Follow up-Bogen, Meldebogen Krebsregister, Tumorkonferenzprotokoll, Tumorlokalisationsbogen and the catch-all class `SD150199`.
* **Known gaps of the KDL** from an oncological point of view: no oncological imaging report (only modality classes), no human genetics/germline report class (only molecular pathology), no autopsy class. For these cases the closest specialty-neutral class plus `practiceSetting` is to be used.

### Relation to the MII KDS module Dokument and to the ISiK document exchange

The Onkologie module **deliberately defines no DocumentReference profiles of its own**. For the document level, reference is made to the **[MII KDS module Dokument](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.dokument)**: its profile `MII_PR_Dokument_Dokument` (DocumentReference) already foresees the KDL as a mandatory slice on `type.coding` (alongside LOINC, SNOMED CT and IHE-XDS), binds `context.practiceSetting` to a specialty ValueSet and `category` to, among others, the IHE-D classCodes. The KDL codes recommended on this page are to be given there in the slice `type.coding:KDL`; the specialty oncology belongs in `context.practiceSetting`.

Since the Dokument module uses the same axes as the ISiK document exchange (KDL, IHE-D/XDS), oncological document instances thereby also remain **ISiK-compatible**, without this module deriving from either of the two. The structured representation of the content takes place independently of this via the profiles of this module.

### Accompanying artefact: curated ValueSet

The selection derived on this page is available as the ValueSet **`mii-vs-onko-kdl-dokumentklassen`** (45 KDL classes along clusters 1–10, KDL 2025). It is a **subset** of the KDL binding in the Dokument module slice `type.coding:KDL` — it defines no codes of its own and excludes deprecated classes (in particular `AD060106` Tumorkonferenzprotokoll, which in KDL 2025 is replaced by `SD150103`). The ValueSet is intended as selection support and for queries, not as a mandatory restriction: instances may still use any valid KDL class.

### Mapping to IHE XDS, SNOMED CT and LOINC

For document-based exchange (XDS infrastructures) and international interoperability, the 45 KDL classes are mapped to the corresponding document-type terminologies. Legend: ≡ equivalent, ⊃ target concept is broader, ⊂ target concept is narrower, — no defensible mapping.

**Provenance and reliability:** The **IHE XDS column** is official — it is derived via `$translate` from the official DVMD ConceptMap (`kdl-ihe-typecode`, KDL→IHE-D XDS typeCode) on the MII terminology server. No official KDL→SNOMED CT or KDL→LOINC mapping exists; the SNOMED CT column (subtree `229059009 |Report|` / `419891008 |Record artifact|`) and the LOINC column (Document Ontology) are a **project-side, conservative curation** (as of 2026-08-28, all target codes server-verified and active). No guarantee is given for completeness or correctness; independent professional review is required before use in production systems. German registry and study forms (e.g. cancer registry notification form, CRF) have, as expected, no international equivalent and remain KDL-only.

**Cluster 1 — Diagnose & Erstmeldung (oBDS 5, 6)**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `PT080102` | Histologiebefund | `PATH`Pathologiebefundberichte (⊃) | `371528001`Pathology report (⊃) | `11526-1`Pathology study (⊃) |
| `PT260102` | Zytologiebefund | `PATH`Pathologiebefundberichte (⊃) | `726738003`Cytology report (≡) | `11526-1`Pathology study (⊃) |
| `PT130102` | Molekularpathologiebefund | `PATH`Pathologiebefundberichte (⊃) | `371528001`Pathology report (⊃) | `51969-4`Genetic analysis report (⊃) |
| `SD150102` | Meldebogen Krebsregister | `ONKO`Onkologische Dokumente (⊃) | — | `72134-0`Cancer event report (≡) |
| `SD150104` | Tumorlokalisationsbogen | `ONKO`Onkologische Dokumente (⊃) | — | — |

**Cluster 2 — Staging & Bildgebung (oBDS 8, 11)**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `DG020103` | CT-Befund | `BILD`Ergebnisse bildgebender Diagnostik (⊃) | `4261000179100`Computed tomography imaging report (≡) | `18748-4`Diagnostic imaging study (⊃) |
| `DG020105` | Endoskopiebefund | `BILD`Ergebnisse bildgebender Diagnostik (⊃) | — | `18751-8`Endoscopy study (≡) |
| `DG020107` | MRT-Befund | `BILD`Ergebnisse bildgebender Diagnostik (⊃) | `4251000179103`Magnetic resonance imaging report (≡) | `18748-4`Diagnostic imaging study (⊃) |
| `DG020109` | PET-Befund | `BILD`Ergebnisse bildgebender Diagnostik (⊃) | `4271000179106`Nuclear medicine report (⊃) | `18748-4`Diagnostic imaging study (⊃) |
| `DG020110` | Röntgenbefund | `BILD`Ergebnisse bildgebender Diagnostik (⊃) | `371527006`Radiology report (⊃) | `18748-4`Diagnostic imaging study (⊃) |
| `DG020111` | Sonographiebefund | `BILD`Ergebnisse bildgebender Diagnostik (⊃) | `4221000179107`Ultrasound imaging report (≡) | `18748-4`Diagnostic imaging study (⊃) |
| `DG020112` | SPECT-Befund | `BILD`Ergebnisse bildgebender Diagnostik (⊃) | `4271000179106`Nuclear medicine report (⊃) | `18748-4`Diagnostic imaging study (⊃) |
| `DG020113` | Szintigraphiebefund | `BILD`Ergebnisse bildgebender Diagnostik (⊃) | `4271000179106`Nuclear medicine report (⊃) | `18748-4`Diagnostic imaging study (⊃) |
| `DG020114` | Mammographiebefund | `BILD`Ergebnisse bildgebender Diagnostik (⊃) | `4231000179109`Mammography report (≡) | `18748-4`Diagnostic imaging study (⊃) |
| `DG020199` | Sonstige Dokumentation bildgebende Diagnostik | `BILD`Ergebnisse bildgebender Diagnostik (⊃) | `4201000179104`Imaging report (⊃) | `18748-4`Diagnostic imaging study (⊃) |

**Cluster 3 — Tumorkonferenz (oBDS 18/19); NICHT AD060106 (deprecated)**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `SD150103` | Tumorkonferenzprotokoll | `ONKO`Onkologische Dokumente (⊃) | `444804000`Multidisciplinary care conference report (⊃) | `85231-9`Tumor board Note (≡) |
| `AD060103` | Konsilbericht intern | `FALL`Fallbesprechungen (⊃) | `371530004`Clinical consultation report (⊃) | `11488-4`Consult note (⊃) |
| `AD060104` | Konsilbericht extern | `FALL`Fallbesprechungen (⊃) | `371530004`Clinical consultation report (⊃) | `11488-4`Consult note (⊃) |
| `AD060110` | Konsilbericht | `FALL`Fallbesprechungen (⊃) | `371530004`Clinical consultation report (≡) | `11488-4`Consult note (≡) |

**Cluster 4 — Operation (oBDS 13)**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `OP150103` | OP-Bericht | `OPDK`OP-Dokumente (⊃) | `371526002`Operative report (≡) | `11504-8`Surgical operation note (≡) |
| `OP150104` | OP-Bilddokumentation | `OPDK`OP-Dokumente (⊃) | `723394009`Photographic image record (⊃) | `72170-4`Photographic image (⊃) |
| `OP150106` | OP-Protokoll | `OPDK`OP-Dokumente (⊃) | `416868005`Surgical intraoperative record (≡) | `11504-8`Surgical operation note (⊃) |
| `AM010303` | Operationsaufklärungsbogen | `EINW`Einwilligungen/Aufklärungen (⊃) | `721914005`Patient consent document (⊃) | `61358-8`Surgical operation consent Document (≡) |

**Cluster 5 — Strahlentherapie (oBDS 14)**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `TH020101` | Bestrahlungsplan | `BSTR`Bestrahlungsdokumentation (⊃) | `736249004`Radiotherapy care plan (⊃) | — |
| `TH020102` | Bestrahlungsprotokoll | `BSTR`Bestrahlungsdokumentation (⊃) | — | `34832-6`Radiation oncology Note (⊃) |
| `TH020103` | Bestrahlungsverordnung | `BSTR`Bestrahlungsdokumentation (⊃) | — | — |
| `TH020104` | Radiojodtherapieprotokoll | `BSTR`Bestrahlungsdokumentation (⊃) | — | `90344-3`Nuclear medicine Note (⊃) |
| `TH020105` | Therapieprotokoll mit Radionukliden | `BSTR`Bestrahlungsdokumentation (⊃) | — | `90344-3`Nuclear medicine Note (⊃) |

**Cluster 6 — Systemische Therapie (oBDS 16)**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `TH130102` | Arzneiadministration | `MEDI`Medikamentöse Therapien (⊃) | — | `80565-5`Medication administration record (≡) |
| `TH130103` | Chemotherapieprotokoll | `MEDI`Medikamentöse Therapien (⊃) | — | `11486-8`Chemotherapy records (⊃) |
| `TH130104` | Hormontherapieprotokoll | `MEDI`Medikamentöse Therapien (⊃) | — | — |
| `TH130107` | Medikationsplan | `MEDI`Medikamentöse Therapien (⊃) | `761931002`Medication treatment plan report (≡) | `56445-0`Medication summary Document (≡) |
| `AM010304` | Aufklärungsbogen Therapie | `EINW`Einwilligungen/Aufklärungen (⊃) | `721914005`Patient consent document (⊃) | `59284-0`Consent Document (⊃) |

**Cluster 7 — Verlauf & Nachsorge (oBDS 17)**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `SD150101` | Follow up-Bogen | `ONKO`Onkologische Dokumente (⊃) | — | `72134-0`Cancer event report (⊃) |
| `LB120102` | Laborbefund extern | `BEFU`Ergebnisse Diagnostik (⊃) | `4241000179101`Laboratory report (⊃) | `11502-2`Laboratory report (⊃) |
| `LB120103` | Laborbefund intern | `BEFU`Ergebnisse Diagnostik (⊃) | `4241000179101`Laboratory report (⊃) | `11502-2`Laboratory report (⊃) |
| `LB120106` | Hämatologisches Speziallabor | `BEFU`Ergebnisse Diagnostik (⊃) | `4321000179101`Hematology report (⊃) | `11502-2`Laboratory report (⊃) |
| `LB120107` | Laborbefund | `BEFU`Ergebnisse Diagnostik (⊃) | `4241000179101`Laboratory report (≡) | `11502-2`Laboratory report (≡) |

**Cluster 8 — Tod (oBDS 20)**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `AD020103` | Todesbescheinigung | `BESC`Ärztliche Bescheinigungen (⊃) | `307930005`Death certificate (≡) | `64297-5`Death certificate (≡) |

**Cluster 9 — Studien / Forschungsvorhaben**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `SF190101` | CRF-Bogen | `STUD`Studiendokumente (⊃) | — | — |
| `SF190102` | Einwilligung Studie | `STUD`Studiendokumente (⊃) | `721914005`Patient consent document (⊃) | `77602-1`Research study consent (≡) |
| `SF190106` | Studienbericht | `STUD`Studiendokumente (⊃) | — | — |

**Cluster 10 — Übergreifend**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| `AD010103` | Entlassungsbericht intern | `BERI`Arztberichte (⊃) | `373942005`Discharge summary (⊃) | `18842-5`Discharge summary (⊃) |
| `AD010104` | Entlassungsbericht extern | `BERI`Arztberichte (⊃) | `373942005`Discharge summary (⊃) | `18842-5`Discharge summary (⊃) |
| `SD150199` | Sonstiger onkologischer Dokumentationsbogen | `ONKO`Onkologische Dokumente (⊃) | — | `34806-0`Oncology Note (⊃) |

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-kdl-dokumentklassen",
  "meta" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-license",
      "valueCode" : "CC-BY-4.0"
    },
    {
      "extension" : [{
        "url" : "packageId",
        "valueId" : "de.medizininformatikinitiative.kerndatensatz.onkologie"
      },
      {
        "url" : "version",
        "valueString" : "2026.0.3"
      },
      {
        "url" : "uri",
        "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
    }],
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "computable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-01-03"
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
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2026"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-kdl-dokumentklassen",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Onko_KDL_Dokumentklassen",
  "title" : "MII VS Onkologie KDL Dokumentklassen",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T10:10:01+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Kuratierte Auswahl der KDL-Dokumentklassen (KDL 2025) entlang des onkologischen Behandlungspfads (oBDS-Kapitel: Diagnose/Pathologie, Staging-Bildgebung, Tumorkonferenz, Operation, Strahlentherapie, Systemische Therapie, Verlauf/Labor, Tod, Studien, übergreifende Dokumente) als Begleitartefakt für DocumentReference.type. Teilmenge des KDL-Bindings im MII-KDS-Modul Dokument; deprecated-Klassen sind ausgeschlossen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://dvmd.de/fhir/CodeSystem/kdl",
      "concept" : [{
        "code" : "PT080102",
        "display" : "Histologiebefund"
      },
      {
        "code" : "PT260102",
        "display" : "Zytologiebefund"
      },
      {
        "code" : "PT130102",
        "display" : "Molekularpathologiebefund"
      },
      {
        "code" : "SD150102",
        "display" : "Meldebogen Krebsregister"
      },
      {
        "code" : "SD150104",
        "display" : "Tumorlokalisationsbogen"
      },
      {
        "code" : "DG020103",
        "display" : "CT-Befund"
      },
      {
        "code" : "DG020105",
        "display" : "Endoskopiebefund"
      },
      {
        "code" : "DG020107",
        "display" : "MRT-Befund"
      },
      {
        "code" : "DG020109",
        "display" : "PET-Befund"
      },
      {
        "code" : "DG020110",
        "display" : "Röntgenbefund"
      },
      {
        "code" : "DG020111",
        "display" : "Sonographiebefund"
      },
      {
        "code" : "DG020112",
        "display" : "SPECT-Befund"
      },
      {
        "code" : "DG020113",
        "display" : "Szintigraphiebefund"
      },
      {
        "code" : "DG020114",
        "display" : "Mammographiebefund"
      },
      {
        "code" : "DG020199",
        "display" : "Sonstige Dokumentation bildgebende Diagnostik"
      },
      {
        "code" : "SD150103",
        "display" : "Tumorkonferenzprotokoll"
      },
      {
        "code" : "AD060103",
        "display" : "Konsilbericht intern"
      },
      {
        "code" : "AD060104",
        "display" : "Konsilbericht extern"
      },
      {
        "code" : "AD060110",
        "display" : "Konsilbericht"
      },
      {
        "code" : "OP150103",
        "display" : "OP-Bericht"
      },
      {
        "code" : "OP150104",
        "display" : "OP-Bilddokumentation"
      },
      {
        "code" : "OP150106",
        "display" : "OP-Protokoll"
      },
      {
        "code" : "AM010303",
        "display" : "Operationsaufklärungsbogen"
      },
      {
        "code" : "TH020101",
        "display" : "Bestrahlungsplan"
      },
      {
        "code" : "TH020102",
        "display" : "Bestrahlungsprotokoll"
      },
      {
        "code" : "TH020103",
        "display" : "Bestrahlungsverordnung"
      },
      {
        "code" : "TH020104",
        "display" : "Radiojodtherapieprotokoll"
      },
      {
        "code" : "TH020105",
        "display" : "Therapieprotokoll mit Radionukliden"
      },
      {
        "code" : "TH130102",
        "display" : "Arzneiadministration"
      },
      {
        "code" : "TH130103",
        "display" : "Chemotherapieprotokoll"
      },
      {
        "code" : "TH130104",
        "display" : "Hormontherapieprotokoll"
      },
      {
        "code" : "TH130107",
        "display" : "Medikationsplan"
      },
      {
        "code" : "AM010304",
        "display" : "Aufklärungsbogen Therapie"
      },
      {
        "code" : "SD150101",
        "display" : "Follow up-Bogen"
      },
      {
        "code" : "LB120102",
        "display" : "Laborbefund extern"
      },
      {
        "code" : "LB120103",
        "display" : "Laborbefund intern"
      },
      {
        "code" : "LB120106",
        "display" : "Hämatologisches Speziallabor"
      },
      {
        "code" : "LB120107",
        "display" : "Laborbefund"
      },
      {
        "code" : "AD020103",
        "display" : "Todesbescheinigung"
      },
      {
        "code" : "SF190101",
        "display" : "CRF-Bogen"
      },
      {
        "code" : "SF190102",
        "display" : "Einwilligung Studie"
      },
      {
        "code" : "SF190106",
        "display" : "Studienbericht"
      },
      {
        "code" : "AD010103",
        "display" : "Entlassungsbericht intern"
      },
      {
        "code" : "AD010104",
        "display" : "Entlassungsbericht extern"
      },
      {
        "code" : "SD150199",
        "display" : "Sonstiger onkologischer Dokumentationsbogen"
      }]
    }]
  }
}

```
