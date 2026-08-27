<!-- TODO:REVIEW machine translation of source page tumormarker-loinc.md (de) -->
<!-- markdownlint-disable MD041 -->
<!-- Source: MIIIGModulOnkologie/TechnischeImplementierung/Biomarker-Tumormarker-LOINC.page.md.
     keep both language versions in step. -->

### Context and Purpose

According to the ENCR recommendation *Basis of Diagnosis* (October 2022), a
cancer diagnosis can also be made without histology via **specific tumour
markers** in combination with clinical examination (*Basis of Diagnosis 4* —
corresponding to oBDS diagnostic confirmation `4` "specific tumour markers").
Table 4 of the recommendation names the serum/plasma and urine markers accepted
for this purpose together with the associated entities.

This page documents the **curated LOINC code list** for that table. It serves as
a reference for implementers who wish to link tumour marker laboratory values
(via the KDS module **Laboratory**) with oncological diagnoses. A binding
ValueSet is **deliberately not yet** part of the package — it will follow once
the clinical review of the core list is complete and the binding location has
been decided (a dedicated laboratory profile vs. a reference to the KDS
Laboratory module).

### Curation Principle

For each marker, the **method-independent** LOINC code of the usual matrix is
chosen (serum/plasma; for catecholamine metabolites, 24-hour urine). This keeps
the list stable against variations in method, unit and device; more specific
codes can be added as needed via the LOINC-SNOMED ontology (see below).

Each code was verified individually against LOINC (MII terminology server and
tx.fhir.org). This is not optional: during curation, five obvious candidates
turned out to be **false matches** — for example `3126-0` would have been
*vasopressin* instead of VIP (`3125-2`), and `15061-5` *erythropoietin* instead
of somatostatin (`2961-1`).

### Core List: General LOINC Codes

| Marker | LOINC | Display | Typical entity |
|---|---|---|---|
| CEA | `2039-6` | Carcinoembryonic Ag [Mass/volume] in Serum or Plasma | Colorectal carcinoma |
| AFP | `1834-1` | Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma | HCC, germ cell tumours |
| CA 19-9 | `24108-3` | Cancer Ag 19-9 [Units/volume] in Serum or Plasma | Pancreatic/bile duct carcinoma |
| CA-125 | `10334-1` | Cancer Ag 125 [Units/volume] in Serum or Plasma | Ovarian carcinoma |
| PSA | `2857-1` | Prostate specific Ag [Mass/volume] in Serum or Plasma | Prostate carcinoma |
| hCG | `19080-1` | Choriogonadotropin [Units/volume] in Serum or Plasma | Choriocarcinoma, germ cell tumours |
| β-hCG | `21198-7` | Choriogonadotropin.beta subunit [Units/volume] in Serum or Plasma | Choriocarcinoma, germ cell tumours |
| Chromogranin A | `9811-1` | Chromogranin A [Mass/volume] in Serum or Plasma | NET, phaeochromocytoma |
| Insulin | `20448-7` | Insulin [Units/volume] in Serum or Plasma | Insulinoma |
| Glucagon | `2338-2` | Glucagon [Mass/volume] in Serum or Plasma | Glucagonoma |
| Gastrin | `2333-3` | Gastrin [Mass/volume] in Serum or Plasma | Gastrinoma |
| VIP | `3125-2` | Vasoactive intestinal peptide [Mass/volume] in Serum or Plasma | VIPoma |
| Somatostatin | `2961-1` | Somatostatin [Mass/volume] in Plasma | Somatostatinoma |
| Serotonin | `18253-5` | Serotonin [Mass/time] in 24 hour Urine | NET (serotonin-producing) |
| ACTH | `2141-0` | Corticotropin [Mass/volume] in Plasma | ACTH-producing tumours |
| Calcitonin | `1992-7` | Calcitonin [Mass/volume] in Serum or Plasma | Medullary thyroid carcinoma |
| HVA (urine) | `2436-4` | Homovanillate [Mass/time] in 24 hour Urine | Neuroblastoma |
| VMA (urine) | `3122-9` | Vanillylmandelate [Mass/time] in 24 hour Urine | Neuroblastoma |
| Catecholamines (urine) | `27055-3` | Catecholamines Free [Mass/time] in 24 hour Urine | Phaeochromocytoma |
| Prolactin | `2842-3` | Prolactin [Mass/volume] in Serum or Plasma | Prolactinoma |
| GH/somatotropin | `2963-7` | Somatotropin [Mass/volume] in Serum or Plasma | Pituitary tumours |
| FSH | `15067-2` | Follitropin [Units/volume] in Serum or Plasma | Pituitary tumours |
| LH | `10501-5` | Lutropin [Units/volume] in Serum or Plasma | Pituitary tumours |
| TSH | `3016-3` | Thyrotropin [Units/volume] in Serum or Plasma | Pituitary tumours |
| M protein | `33358-3` | Protein.monoclonal [Mass/volume] in Serum or Plasma by Electrophoresis | Multiple myeloma |
| IgG | `2465-3` | IgG [Mass/volume] in Serum or Plasma | Multiple myeloma |
| IgA | `2458-8` | IgA [Mass/volume] in Serum or Plasma | Multiple myeloma |
| IgM | `2472-9` | IgM [Mass/volume] in Serum or Plasma | Waldenström's disease, myeloma |

Note on serotonin: the 24-hour urine code was chosen (clinically, 5-HIAA in
urine or serotonin in serum are also common) — the matrix question is part of
the open clinical review.

### Extension via the LOINC-SNOMED Ontology

The **LOINC-SNOMED ontology** (LOINC concepts as SNOMED CT observables in a
dedicated extension module) makes it possible, for each marker, to navigate by
subsumption from the general "Measurement of …" observable to all more specific
variants (method, unit, specimen material) — and thus to form implicit,
hierarchically defined ValueSets instead of maintaining individual codes.

For **16 of the 28 markers** the observable anchor has already been verified
(e.g. CEA → *Measurement of carcinoembryonic antigen in serum or plasma*
`723431010000109` with mass/substance/arbitrary concentration children). For the
remaining ones (β-hCG, gastrin, calcitonin, HVA, VMA, ACTH, FSH, LH, TSH,
M protein, IgA, IgM) the anchor is still outstanding — the initial search
returned either no hits or recognisably wrong ones (for instance the CRF
observable instead of the ACTH one), which were discarded.

The complete curation report with all anchors and child concepts is located in
the repository at `input/examples-source/biomarker/biomarker-snomed-report.md`.

### Open Points

- Clinical review of the core list (codes and entity assignments).
- Completion of the LOINC-SNOMED anchors (12 markers outstanding).
- Decision on the binding location: a dedicated tumour marker profile in the
  module vs. guidance only with a reference to the KDS Laboratory module.
- Serotonin: matrix (24-hour urine vs. serum) and possibly the addition of 5-HIAA.
