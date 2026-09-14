<!-- TODO:REVIEW machine translation of source page ValueSet-mii-vs-onko-kdl-dokumentklassen-intro.md (de) -->
<!-- TODO:REVIEW KDL class designations and MII module names are official German labels and were kept verbatim; only the surrounding prose and the table headers were translated. -->
Oncological care produces documents across all specialties — pathology reports, imaging reports,
therapy protocols, tumour board minutes, registry notifications. At the document level
(e.g. `DocumentReference.type` in document exchange) these are classified in Germany via the
**Klinische Dokumentenklassen-Liste (KDL)** of the DVMD
(CodeSystem `http://dvmd.de/fhir/CodeSystem/kdl`, as of version 2025).

This page assigns the KDL document classes to the oncological treatment pathway (oBDS chapters)
and shows which MII KDS module represents the respective content in a structured way. It
complements the page *Context within the overall project / relations to other modules* with the
document perspective.

### Basic principle

The KDL knows **no oncology-specific report classes** — apart from the small subclass
`SD1501` "Onkologische Dokumente" (oncological documents) from the registry/centre perspective.
All treatment-related documents run through specialty-neutral classes (imaging by modality,
pathology by method, therapy by procedure). The oncological semantics only arise from:

1. the **context**: `DocumentReference.context.practiceSetting` with the specialty oncology
   (IHE-D terminology), and
2. the **structured representation** via the profiles of this module or of the linked KDS modules.

### KDL classes along the oncological treatment pathway

| Treatment phase (oBDS) | KDL document classes | Structured representation (MII module) |
|---|---|---|
| **Diagnosis & initial notification** (ch. 5, 6) | `PT080102` Histologiebefund · `PT260102` Zytologiebefund · `SD150102` Meldebogen Krebsregister · `SD150104` Tumorlokalisationsbogen | Onkologie (Diagnose Primärtumor, Histologie), **Pathologiebefundbericht** |
| **Molecular diagnostics** (ch. 23) | `PT130102` Molekularpathologiebefund | Onkologie (Genetische Variante), **Molekulargenetischer Befundbericht (MolGen)** |
| **Staging & imaging** (ch. 8, 11) | `DG020103` CT · `DG020107` MRT · `DG020109` PET · `DG020112` SPECT · `DG020113` Szintigraphie · `DG020110` Röntgen · `DG020111` Sonographie · `DG020114` Mammographie · `DG020105` Endoskopie | Onkologie (TNM, Fernmetastasen), **Bildgebung** (integration planned for v2027) |
| **Tumour board** (ch. 18/19) | `SD150103` Tumorkonferenzprotokoll · `AD060103`/`AD060110` Konsilberichte | Onkologie (Tumorkonferenz), **Molekulares Tumorboard** |
| **Surgery** (ch. 13) | `OP150103` OP-Bericht · `OP150106` OP-Protokoll · `OP150104` OP-Bilddokumentation · `AM010303` Operationsaufklärungsbogen | Onkologie (Operation), **Prozedur** |
| **Radiotherapy** (ch. 14) | `TH020101` Bestrahlungsplan · `TH020102` Bestrahlungsprotokoll · `TH020103` Bestrahlungsverordnung · `TH020104` Radiojodtherapieprotokoll · `TH020105` Therapieprotokoll mit Radionukliden | Onkologie (Strahlentherapie), **Prozedur** |
| **Systemic therapy** (ch. 16) | `TH130103` Chemotherapieprotokoll · `TH130104` Hormontherapieprotokoll · `TH130107` Medikationsplan · `TH130102` Arzneiadministration · `AM010304` Aufklärungsbogen Therapie | Onkologie (Systemische Therapie), **Medikation** |
| **Course of disease & aftercare** (ch. 17) | `SD150101` Follow up-Bogen · `LB120107` Laborbefund · `LB120106` Hämatologisches Speziallabor | Onkologie (Verlauf), **Labor** |
| **Death** (ch. 20) | `AD020103` Todesbescheinigung | Onkologie (Tod), Vitalstatus (alignment planned) |
| **Studies** | `SF190101` CRF-Bogen · `SF190102` Einwilligung Studie · `SF190106` Studienbericht | **Studie / Forschungsvorhaben** |
| **Cross-cutting** | `AD010103`/`AD010104` Entlassungsbericht · `SD150199` Sonstiger onkologischer Dokumentationsbogen (incl. Psychoonkologische Basisdokumentation, Tumorverlaufsblatt) | — |

### Notes on usage

- **Tumour board minutes**: In KDL 2025 the older code `AD060106` (under "Fallbesprechungen")
  is marked as *deprecated* — the class was moved into the oncological subclass. **`SD150103`**
  is to be used.
- **Oncological documents (`SD1501`)** comprises exactly five classes: Follow up-Bogen, Meldebogen
  Krebsregister, Tumorkonferenzprotokoll, Tumorlokalisationsbogen and the catch-all class
  `SD150199`.
- **Known gaps of the KDL** from an oncological point of view: no oncological imaging report
  (only modality classes), no human genetics/germline report class (only molecular pathology),
  no autopsy class. For these cases the closest specialty-neutral class plus `practiceSetting`
  is to be used.

### Relation to the MII KDS module Dokument and to the ISiK document exchange

The Onkologie module **deliberately defines no DocumentReference profiles of its own**. For the
document level, reference is made to the **[MII KDS module Dokument][kds-dok]**: its profile
`MII_PR_Dokument_Dokument` (DocumentReference) already foresees the KDL as a mandatory slice on
`type.coding` (alongside LOINC, SNOMED CT and IHE-XDS), binds `context.practiceSetting` to a
specialty ValueSet and `category` to, among others, the IHE-D classCodes. The KDL codes
recommended on this page are to be given there in the slice `type.coding:KDL`; the specialty
oncology belongs in `context.practiceSetting`.

Since the Dokument module uses the same axes as the ISiK document exchange (KDL, IHE-D/XDS),
oncological document instances thereby also remain **ISiK-compatible**, without this module
deriving from either of the two. The structured representation of the content takes place
independently of this via the profiles of this module.

[kds-dok]: https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.dokument "MII KDS module Dokument"

### Accompanying artefact: curated ValueSet

The selection derived on this page is available as the ValueSet
**`mii-vs-onko-kdl-dokumentklassen`** (45 KDL classes along clusters 1–10, KDL 2025). It is a
**subset** of the KDL binding in the Dokument module slice `type.coding:KDL` — it defines no
codes of its own and excludes deprecated classes (in particular `AD060106`
Tumorkonferenzprotokoll, which in KDL 2025 is replaced by `SD150103`). The ValueSet is intended
as selection support and for queries, not as a mandatory restriction: instances may still use
any valid KDL class.

### Mapping to IHE XDS, SNOMED CT and LOINC

For document-based exchange (XDS infrastructures) and international interoperability,
the 45 KDL classes are mapped to the corresponding document-type terminologies.
Legend: ≡ equivalent, ⊃ target concept is broader, ⊂ target concept is narrower,
— no defensible mapping.

{:.bg-info}
**Provenance and reliability:** The **IHE XDS column** is official — it is derived
via `$translate` from the official DVMD ConceptMap (`kdl-ihe-typecode`,
KDL→IHE-D XDS typeCode) on the MII terminology server. No official KDL→SNOMED CT or
KDL→LOINC mapping exists; the SNOMED CT column (subtree `229059009 |Report|` /
`419891008 |Record artifact|`) and the LOINC column (Document Ontology) are a
**project-side, conservative curation** (as of 2026-08-28, all target codes
server-verified and active). No guarantee is given for completeness or correctness;
independent professional review is required before use in production systems.
German registry and study forms (e.g. cancer registry notification form, CRF) have,
as expected, no international equivalent and remain KDL-only.


**Cluster 1 — Diagnose & Erstmeldung (oBDS 5, 6)**

| KDL | Document class | IHE XDS typeCode (official, DVMD) | SNOMED CT (curated) | LOINC (curated) |
|---|---|---|---|---|
| `PT080102` | Histologiebefund | `PATH` Pathologiebefundberichte (⊃) | `371528001` Pathology report (⊃) | `11526-1` Pathology study (⊃) |
| `PT260102` | Zytologiebefund | `PATH` Pathologiebefundberichte (⊃) | `726738003` Cytology report (≡) | `11526-1` Pathology study (⊃) |
| `PT130102` | Molekularpathologiebefund | `PATH` Pathologiebefundberichte (⊃) | `371528001` Pathology report (⊃) | `51969-4` Genetic analysis report (⊃) |
| `SD150102` | Meldebogen Krebsregister | `ONKO` Onkologische Dokumente (⊃) | — | `72134-0` Cancer event report (≡) |
| `SD150104` | Tumorlokalisationsbogen | `ONKO` Onkologische Dokumente (⊃) | — | — |

**Cluster 2 — Staging & Bildgebung (oBDS 8, 11)**

| KDL | Document class | IHE XDS typeCode (official, DVMD) | SNOMED CT (curated) | LOINC (curated) |
|---|---|---|---|---|
| `DG020103` | CT-Befund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4261000179100` Computed tomography imaging report (≡) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020105` | Endoskopiebefund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | — | `18751-8` Endoscopy study (≡) |
| `DG020107` | MRT-Befund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4251000179103` Magnetic resonance imaging report (≡) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020109` | PET-Befund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4271000179106` Nuclear medicine report (⊃) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020110` | Röntgenbefund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `371527006` Radiology report (⊃) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020111` | Sonographiebefund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4221000179107` Ultrasound imaging report (≡) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020112` | SPECT-Befund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4271000179106` Nuclear medicine report (⊃) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020113` | Szintigraphiebefund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4271000179106` Nuclear medicine report (⊃) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020114` | Mammographiebefund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4231000179109` Mammography report (≡) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020199` | Sonstige Dokumentation bildgebende Diagnostik | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4201000179104` Imaging report (⊃) | `18748-4` Diagnostic imaging study (⊃) |

**Cluster 3 — Tumorkonferenz (oBDS 18/19); NICHT AD060106 (deprecated)**

| KDL | Document class | IHE XDS typeCode (official, DVMD) | SNOMED CT (curated) | LOINC (curated) |
|---|---|---|---|---|
| `SD150103` | Tumorkonferenzprotokoll | `ONKO` Onkologische Dokumente (⊃) | `444804000` Multidisciplinary care conference report (⊃) | `85231-9` Tumor board Note (≡) |
| `AD060103` | Konsilbericht intern | `FALL` Fallbesprechungen (⊃) | `371530004` Clinical consultation report (⊃) | `11488-4` Consult note (⊃) |
| `AD060104` | Konsilbericht extern | `FALL` Fallbesprechungen (⊃) | `371530004` Clinical consultation report (⊃) | `11488-4` Consult note (⊃) |
| `AD060110` | Konsilbericht | `FALL` Fallbesprechungen (⊃) | `371530004` Clinical consultation report (≡) | `11488-4` Consult note (≡) |

**Cluster 4 — Operation (oBDS 13)**

| KDL | Document class | IHE XDS typeCode (official, DVMD) | SNOMED CT (curated) | LOINC (curated) |
|---|---|---|---|---|
| `OP150103` | OP-Bericht | `OPDK` OP-Dokumente (⊃) | `371526002` Operative report (≡) | `11504-8` Surgical operation note (≡) |
| `OP150104` | OP-Bilddokumentation | `OPDK` OP-Dokumente (⊃) | `723394009` Photographic image record (⊃) | `72170-4` Photographic image (⊃) |
| `OP150106` | OP-Protokoll | `OPDK` OP-Dokumente (⊃) | `416868005` Surgical intraoperative record (≡) | `11504-8` Surgical operation note (⊃) |
| `AM010303` | Operationsaufklärungsbogen | `EINW` Einwilligungen/Aufklärungen (⊃) | `721914005` Patient consent document (⊃) | `61358-8` Surgical operation consent Document (≡) |

**Cluster 5 — Strahlentherapie (oBDS 14)**

| KDL | Document class | IHE XDS typeCode (official, DVMD) | SNOMED CT (curated) | LOINC (curated) |
|---|---|---|---|---|
| `TH020101` | Bestrahlungsplan | `BSTR` Bestrahlungsdokumentation (⊃) | `736249004` Radiotherapy care plan (⊃) | — |
| `TH020102` | Bestrahlungsprotokoll | `BSTR` Bestrahlungsdokumentation (⊃) | — | `34832-6` Radiation oncology Note (⊃) |
| `TH020103` | Bestrahlungsverordnung | `BSTR` Bestrahlungsdokumentation (⊃) | — | — |
| `TH020104` | Radiojodtherapieprotokoll | `BSTR` Bestrahlungsdokumentation (⊃) | — | `90344-3` Nuclear medicine Note (⊃) |
| `TH020105` | Therapieprotokoll mit Radionukliden | `BSTR` Bestrahlungsdokumentation (⊃) | — | `90344-3` Nuclear medicine Note (⊃) |

**Cluster 6 — Systemische Therapie (oBDS 16)**

| KDL | Document class | IHE XDS typeCode (official, DVMD) | SNOMED CT (curated) | LOINC (curated) |
|---|---|---|---|---|
| `TH130102` | Arzneiadministration | `MEDI` Medikamentöse Therapien (⊃) | — | `80565-5` Medication administration record (≡) |
| `TH130103` | Chemotherapieprotokoll | `MEDI` Medikamentöse Therapien (⊃) | — | `11486-8` Chemotherapy records (⊃) |
| `TH130104` | Hormontherapieprotokoll | `MEDI` Medikamentöse Therapien (⊃) | — | — |
| `TH130107` | Medikationsplan | `MEDI` Medikamentöse Therapien (⊃) | `761931002` Medication treatment plan report (≡) | `56445-0` Medication summary Document (≡) |
| `AM010304` | Aufklärungsbogen Therapie | `EINW` Einwilligungen/Aufklärungen (⊃) | `721914005` Patient consent document (⊃) | `59284-0` Consent Document (⊃) |

**Cluster 7 — Verlauf & Nachsorge (oBDS 17)**

| KDL | Document class | IHE XDS typeCode (official, DVMD) | SNOMED CT (curated) | LOINC (curated) |
|---|---|---|---|---|
| `SD150101` | Follow up-Bogen | `ONKO` Onkologische Dokumente (⊃) | — | `72134-0` Cancer event report (⊃) |
| `LB120102` | Laborbefund extern | `BEFU` Ergebnisse Diagnostik (⊃) | `4241000179101` Laboratory report (⊃) | `11502-2` Laboratory report (⊃) |
| `LB120103` | Laborbefund intern | `BEFU` Ergebnisse Diagnostik (⊃) | `4241000179101` Laboratory report (⊃) | `11502-2` Laboratory report (⊃) |
| `LB120106` | Hämatologisches Speziallabor | `BEFU` Ergebnisse Diagnostik (⊃) | `4321000179101` Hematology report (⊃) | `11502-2` Laboratory report (⊃) |
| `LB120107` | Laborbefund | `BEFU` Ergebnisse Diagnostik (⊃) | `4241000179101` Laboratory report (≡) | `11502-2` Laboratory report (≡) |

**Cluster 8 — Tod (oBDS 20)**

| KDL | Document class | IHE XDS typeCode (official, DVMD) | SNOMED CT (curated) | LOINC (curated) |
|---|---|---|---|---|
| `AD020103` | Todesbescheinigung | `BESC` Ärztliche Bescheinigungen (⊃) | `307930005` Death certificate (≡) | `64297-5` Death certificate (≡) |

**Cluster 9 — Studien / Forschungsvorhaben**

| KDL | Document class | IHE XDS typeCode (official, DVMD) | SNOMED CT (curated) | LOINC (curated) |
|---|---|---|---|---|
| `SF190101` | CRF-Bogen | `STUD` Studiendokumente (⊃) | — | — |
| `SF190102` | Einwilligung Studie | `STUD` Studiendokumente (⊃) | `721914005` Patient consent document (⊃) | `77602-1` Research study consent (≡) |
| `SF190106` | Studienbericht | `STUD` Studiendokumente (⊃) | — | — |

**Cluster 10 — Übergreifend**

| KDL | Document class | IHE XDS typeCode (official, DVMD) | SNOMED CT (curated) | LOINC (curated) |
|---|---|---|---|---|
| `AD010103` | Entlassungsbericht intern | `BERI` Arztberichte (⊃) | `373942005` Discharge summary (⊃) | `18842-5` Discharge summary (⊃) |
| `AD010104` | Entlassungsbericht extern | `BERI` Arztberichte (⊃) | `373942005` Discharge summary (⊃) | `18842-5` Discharge summary (⊃) |
| `SD150199` | Sonstiger onkologischer Dokumentationsbogen | `ONKO` Onkologische Dokumente (⊃) | — | `34806-0` Oncology Note (⊃) |
