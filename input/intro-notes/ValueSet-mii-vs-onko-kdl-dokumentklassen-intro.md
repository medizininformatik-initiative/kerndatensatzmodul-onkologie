<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/ValueSet-mii-vs-onko-kdl-dokumentklassen-intro.md) -->
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
