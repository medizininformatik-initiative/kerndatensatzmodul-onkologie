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

### ENCR Table 4: marker → permissible morphology

**Table 4** of the ENCR recommendation *Basis of Diagnosis* lists the entities that
may be recorded on the basis of elevated tumour markers (together with clinical
investigations) when pathological confirmation is unavailable — each with the
morphology to be assigned in that case. This is the clinical basis of oBDS
basis-of-diagnosis code `4` "specific tumour markers". All ICD-O codes are verified
against the MII terminology server (ICD-O-3 second revision 2019).

| Entity | Tumour marker | ICD-O morphology |
|---|---|---|
| Kolorektales Karzinom | CEA | `8000/3` Maligne Neoplasie |
| Hepatozelluläres Karzinom | AFP | `8170/3` Hepatozelluläres Karzinom o.n.A. |
| Pankreas-, Gallenblasen-/Gallenwegskarzinom | CA 19-9 | `8000/3` Maligne Neoplasie |
| Ovarialkarzinom | CA-125 | `8000/3` Maligne Neoplasie |
| Prostatakarzinom | PSA | `8000/3` Maligne Neoplasie |
| Chorionkarzinom der Plazenta | hCG | `9100/3` Chorionkarzinom o.n.A. |
| Keimzelltumor | hCG oder AFP (± hCG) | `9064/3` Germinom bzw. `9065/3` Nichtseminomatöser Keimzelltumor |
| Neuroendokriner Tumor | Chromogranin A | `8240/3` Neuroendokriner Tumor o.n.A. |
| Funktionelle neuroendokrine Tumoren | Insulin, Glukagon, Gastrin, VIP, Somatostatin, Serotonin, ACTH | `8151/3`–`8158/3` (z. B. `8151/3` Insulinom o.n.A., `8158/3` ACTH-produzierender Tumor) |
| Medulläres Schilddrüsenkarzinom | Calcitonin | `8345/3` Medulläres Schilddrüsenkarzinom |
| Neuroblastom | Katecholaminabbauprodukte (HVA, VMA) | `9500/3` Neuroblastom o.n.A. |
| Prolaktinom | Prolaktin | `8271/0` Laktotrophes Adenom |
| Andere funktionelle Hypophysentumoren | STH, FSH, LH, ACTH, TSH | `8272/0` Hypophysenadenom o.n.A. |
| Phäochromozytom | Katecholamine, Chromogranin A | `8700/3` Phäochromozytom o.n.A. |
| Multiples Myelom | M-Protein (IgG, IgM, IgA) > 30 g/L | `9732/3` Plasmazellmyelom |
| Morbus Waldenström | IgM | `9761/3` Waldenström-Makroglobulinämie |

**Completeness:** every marker named in Table 4 carries a LOINC code in the core list
above; the core list goes further (e.g. β-hCG listed separately).

Source: Van Eycken L. et al., *2022 revised European recommendations for the coding of
the basis of diagnosis of cancer cases in population-based cancer registries*,
Front Oncol 2023;13:1250549 —
[doi:10.3389/fonc.2023.1250549](https://doi.org/10.3389/fonc.2023.1250549).

### Extension via the LOINC-SNOMED Ontology

The **LOINC-SNOMED ontology** (LOINC concepts as SNOMED CT observables in a
dedicated extension module) makes it possible, for each marker, to navigate by
subsumption from the general "Measurement of …" observable to all more specific
variants (method, unit, specimen material) — and thus to form implicit,
hierarchically defined ValueSets instead of maintaining individual codes.

For **23 of the 28 markers** the observable anchor has been verified
(e.g. CEA → *Measurement of carcinoembryonic antigen in serum or plasma*
`723431010000109` with mass/substance/arbitrary concentration children). For the
remaining five (gastrin, calcitonin, M protein, IgA, IgM) no grouper concept
exists — see the addendum below.

The complete curation report with all anchors and child concepts is located in
the repository at `input/examples-source/biomarker/biomarker-snomed-report.md`.

**Addendum 2026-08-28.** For seven of the twelve previously open markers the anchor
has now been determined and verified (Snowstorm branch `MAIN/SNOMEDCT-LOINC`, ECL over
`<<363787002 |Observable entity|`):

| Marker | LOINC | SNOMED anchor | Designation | Children |
|---|---|---|---|---|
| beta-hCG | `21198-7` | `727021010000108` | Measurement of human chorionic gonadotropin beta subunit in serum or plasma | 4 |
| HVA | `2436-4` | `732491010000101` | Measurement of homovanillic acid in urine | 10 |
| VMA | `3122-9` | `731001010000107` | Measurement of vanillylmandelic acid in urine | 11 |
| ACTH | `2141-0` | `721541010000101` | Measurement of adrenocorticotropic hormone in plasma | 200 |
| FSH | `15067-2` | `726901010000101` | Measurement of pituitary follicle stimulating hormone in serum or plasma | 100 |
| LH | `10501-5` | `724461010000100` | Measurement of pituitary luteinizing hormone in serum or plasma | 96 |
| TSH | `3016-3` | `727041010000103` | Measurement of thyrotrophin in serum or plasma | 79 |

For **gastrin, calcitonin, M-protein, IgA and IgM** the LOINC-SNOMED ontology holds
**no "Measurement of …" grouper** for the serum/plasma determination in question —
only the concrete measurands (mass/substance concentration …) are modelled there.
For those markers navigation via the general LOINC code remains the only option;
a grouper would have to be requested from SNOMED International.

{:.bg-info}
**Methodological note:** the LOINC-SNOMED concepts live in a separate Snowstorm branch
(`MAIN/SNOMEDCT-LOINC`) and are **not** discoverable through the standard FHIR expansion
of the International Edition. A naive text search is also reliably misleading — it
returns *corticotropin releasing factor* for ACTH and the *thyrotropin receptor antibody*
for TSH. The anchors listed here were cross-checked individually via FSN and child concepts.

### Open Points

- Clinical review of the core list (codes and entity assignments).
- LOINC-SNOMED anchors: 23 of 28 verified; for 5 markers no grouper exists (a request to SNOMED International would be required).
- ~~Decision on the binding location~~ **decided (2026-08-28):** laboratory values are carried by the CDS module Laboratory Report. This module provides the profile [`MII_PR_Onko_Tumormarker`](StructureDefinition-mii-pr-onko-tumormarker.html) — a derivation of `MII_PR_Labor_Laboruntersuchung` that binds `Observation.code` extensibly to the union list [`mii-vs-onko-tumormarker-loinc`](ValueSet-mii-vs-onko-tumormarker-loinc.html) and adds the link to the oncological diagnosis (`focus`).
- Serotonin: matrix (24-hour urine vs. serum) and possibly the addition of 5-HIAA.
