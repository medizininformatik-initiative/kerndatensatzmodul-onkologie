<!-- TODO:REVIEW machine translation of source page molgen-variantentypen.md (de) -->
<!-- markdownlint-disable MD041 -->
<!-- Source: MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/MolGen-Abbildung-Variantentypen.page.md.
     keep both language versions in step. -->

### Purpose

The oBDS records genetic variants in a coarse-grained way (free-text designation
plus one qualifier out of `M`/`W`/`P`/`N`/`U`, or free text instead, oBDS
23.1/23.2 — see the section *Qualifiers of the genetics report*). For a
**structured, interoperable** representation, the
[MII Molecular Genetics Report (MolGen)](https://simplifier.net/medizininformatikinitiative-modulomics)
**SHOULD** be used where available; it is based on the HL7 Clinical Genomics
*Genomics Reporting* IG and uses international nomenclatures (**HGNC**,
**HGVS**, **ISCN**, **Sequence Ontology**).

For the variant and marker types typical of oncological practice, this page gives
a **concrete recommendation** on which MolGen structure to use for representing
them (as of `molgen 2026.x`, also valid for 2027). It is based on an example
marker list (57 genes, approximately 300 gene × variant combinations); the
recommendation is deliberately **not normative**, but an implementation aid.

> **Profile reference:** [`MII_PR_MolGen_Variante`](https://simplifier.net/medizininformatikinitiative-modulomics/sdmiimolgenvariante)
> (parent: `http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant`)

### Overview: Marker Type → MolGen Representation

| oBDS/list type | Example | Recommended MolGen representation |
|------------------|----------|------------------------------|
| **Gene** (identity) | `BRAF`, `ALK` | `Variante.component:gene-studied` → **HGNC** (`http://www.genenames.org/geneId`) |
| **Specific mutation** (protein) | `BRAF V600E` = p.Val600Glu | `component:representative-protein-hgvs` (**p.HGVS**) |
| **Specific mutation** (DNA) | `c.1799T>A` | `component:representative-coding-hgvs` (**c.HGVS**) |
| **Formula / HGVS free text** | any HGVS statement | matching `*-hgvs` component; otherwise `value`/`note` |
| **Exon statement** | `EGFR exon 19`, `FGFR2 exon 12` | `component:dna-region` (LOINC 47999-8, DNA region name), where applicable plus `exact-start-end` |
| **Fusion** | `EML4::ALK`, `BCR::ABL1` | `component:gene-fusion` → **HGNC pair** `GENE1::GENE2` (ValueSet `hgnc-vs`) |
| **Amplification** | `ERBB2`/`HER2` amplification | `component:copy-number` (copy number) |
| **Translocation / rearrangement** | `del(17)(p13)`, ROS1 rearrangement | `component:cytogenetic-location` (**ISCN**) |
| **LOH / co-deletion** | `LOH 1p/19q` | `component:cytogenetic-location` or `copy-number` |
| **Promoter hypermethylation** | `MGMT` | special case — a dedicated methylation observation (LOINC), **not** a variant |
| **Unknown** | gene without further detail | `component:gene-studied` + `value` = *indeterminate* |
| **IHC marker** | `PD-L1`, `HER2 IHC`, `p16`, `p53` | **not a variant** → `MII_PR_MTB_Immunohistochemistry` (Molecular Tumour Board module) |

### Transmission notation of the §65c marker list

The §65c platform marker list ([Genetische Marker](https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/122945632/Genetische+Marker),
as of 2023-11-27, ~300 gene×variant combinations) prescribes a fixed
**two-position notation** for transmission, combined in `Bezeichnung` with `||`:

- **Position 1 — gene:** HGNC symbol from the list's gene sheet. The sheet also
  carries pseudo-entries that are not genes (IHC markers such as
  `ALK_IHC`/`HER2_IHC`, and cytogenetic entries such as `del(17)(p13)`) — for the
  FHIR representation the special cases of the table above apply (IHC → MTB
  profile, cytogenetics → `cytogenetic-location`).
- **Position 2 — additional information**, depending on the kind of entry:

| Kind (list) | Position-2 notation | Example |
|---|---|---|
| `<Formel>` | formula **"e.g. according to HGVSp or HGVSc"** (official wording) | `p.Val600Glu`, `c.1799T>A` |
| specific mutation | codon level: gene symbol-codon | `BRAF-V600` |
| exon | `Exon <no>` | `Exon 19` |
| fusion | `GENE1::GENE2`, optionally with a trailing additional mutation | `EML4::ALK`, `BCR::ABL1 T315I` |
| amplification / translocation / rearrangement / promoter hypermethylation | literal keyword | `Amplifikation` |
| IHC | empty (score via `Sonstige_Auspraegung`) | — |
| `<Freitext>` | free text for unlisted alterations | — |
| unknown | empty | — |

For the structured FHIR view this notation is the **parser contract**: position 1
becomes `gene-studied` (HGNC); position 2 maps, depending on its kind, to the
matching component of the marker-type table above (HGVS formulas to `*-hgvs`,
`GENE1::GENE2` to `gene-fusion` — a trailing additional mutation such as `T315I`
is carried as a **separate** HGVS component of the same variant).

### Notes on Special Cases

**Gene identity (HGNC).** The gene symbols in the list are already HGNC-approved
symbols. In MolGen the gene is carried in structured form via `gene-studied`
(HGNC); the oBDS free-text entry `Observation.note` is therefore not needed for
the structured view.

**Exon level.** Statements such as "exon 19" do not describe an individual
variant, but a region. MolGen/Genomics Reporting represents this via `dna-region`
(named DNA region) — a dedicated GA4GH **Cat-VRS** is **not** required for this.
Cat-VRS remains reserved for genuine *categories* (e.g. "any activating EGFR
mutation") and is to be considered later on (post-2027).

**Fusions.** `gene-fusion.value` is bound to the HGNC ValueSet and expects the
notation `GENESYMBOL1::GENESYMBOL2` (e.g. `EML4::ALK`). Plain "fusion without
partner" statements are carried via the gene studied (`gene-studied`) plus a
fusion flag.

**IHC markers (MTB).** Immunohistochemical markers (PD-L1, HER2 IHC, p16, p53,
panTRK, ROS1 IHC, …) are protein expression findings, not sequence variants. The
**MII extension module Molecular Tumour Board (MTB)** provides dedicated profiles
for them (base: `MII_PR_MTB_Immunohistochemistry`, parent
`MII_PR_MTB_Molekularer_Biomarker`):

| Marker | MTB profile | Code (authoritative) |
|--------|-----------|--------------------|
| generic (all IHC) | `mii-pr-mtb-immunohistochemistry` | SNOMED `1234806008` "Observation using immunohistochemistry" + target via `component:gene-studied` |
| HER2 IHC | `mii-pr-mtb-immunohistochemistry-her2` | LOINC `18474-7` "HER2 Ag [Presence] in Tissue by Immune stain" |
| PD-L1 IHC | `mii-pr-mtb-immunohistochemistry-pdl1` | scores: NCIt `C184941` (TPS), `C176582` (CPS), `C199175` (ICS), LOINC `83053-9` (TC) |
| MMR (dMMR/pMMR) | `mii-pr-mtb-immunohistochemistry-mmr` | LOINC per protein: MLH1 `81691-8`, MSH2 `81692-6`, MSH6 `81693-4`, PMS2 `81694-2` |

For markers without a specific profile (p16, p53, panTRK, ROS1 IHC, …) use the
base profile `mii-pr-mtb-immunohistochemistry` with the generic SNOMED code plus
`component:gene-studied`.

> **Note (architecture and maturity):** The MTB module integrates genetic findings
> **above** Oncology and MolGen — it declares `kerndatensatz.onkologie` and
> `kerndatensatz.molgen` as dependencies itself. Oncology can therefore **not**
> take MTB as a dependency (circular reference); the MTB references here are
> **documentary** (recommended target location), not technically resolved. The
> modules involved are in **draft/STU/trial-use** — this assignment is a guide and
> may still change as MolGen/MTB mature.

### Qualifiers of the Genetics Report (section 65c / oBDS `Menge_Genetik_Typ`)

The marker type (table above) is only one axis of the report. The second axis is
the **qualifier** of the finding. The oBDS type `Menge_Genetik_Typ` provides for
exactly **one** statement per `Genetische_Variante` — either a code from the
selection list `Auspraegung` **or** the free-text field `Sonstige_Auspraegung`
(`xs:choice`). The selection list comprises five codes; the module terminology
adds `S` as the code for the free-text case.

| oBDS code | Meaning (oBDS XSD) | SNOMED CT (module ConceptMap) | Recommendation MolGen/FHIR |
|-----------|----------------------|------------------------------|------------------------|
| `M` | mutation/positive | `55446002` *Genetic mutation (finding)* | `Observation.value[x]` = LOINC `LA9633-4` "Present" (for `Observation.code` = LOINC `69548-6`) |
| `W` | wild type/not mutated/negative | `412730000` *Genetic finding not detected (finding)* | negative finding; additionally `component:coding-change-type` (LOINC `48019-4`) = SO `SO:0002073` *no_sequence_alteration* (LOINC equivalent `LA9658-1` "Wild type") |
| `P` | polymorphism | `50334000` *Genetic polymorphism (finding)* | variant present (`value[x]` = `LA9633-4`); the assessment as a polymorphism does not belong in the variant, but in a separate finding interpretation (Genomics Reporting profile *diagnostic-implication*) |
| `N` | cannot be determined | `1156316003` *Cannot be determined (qualifier value)* | no `value[x]`; instead `Observation.dataAbsentReason`, e.g. `not-performed` |
| `U` | unknown | `261665006` *Unknown (qualifier value)* | no `value[x]`; `Observation.dataAbsentReason` = `unknown` |
| `S` | other (module addition for `Sonstige_Auspraegung`) | `74964007` *Other (qualifier value)* | free text into `Observation.note`; structured only insofar as the content corresponds to one of the cases above |

The SNOMED column reflects the ConceptMap maintained in the module,
[`mii-cm-onko-genetische-variante-auspraegung-sct`](ConceptMap-mii-cm-onko-genetische-variante-auspraegung-sct.html),
and is therefore binding for the module. The MolGen column — like the marker type
table above — is a **non-normative** implementation recommendation.

**Relation to the example marker list.** In the underlying marker list, almost
all rows provide only for `M`/`W`; `P`, `N` and `U` do not occur there, and the
immunohistochemistry rows (scores `0`/`+`/`++`/`+++` and `IC`/`TPS`/`CPS`)
already point to the free-text route `Sonstige_Auspraegung`. The list is
therefore a **subset** of the oBDS system, not a divergent value range.

**Sources.** Authoritative for the qualifier list is the type
`Menge_Genetik_Typ` of the oBDS XML schema (`oBDS_v3.0.4.xsd` /
`oBDS_v3.0.5.xsd`, unchanged there), described in the section 65c platform
documentation:
[Menge_Genetik_Typ](https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532120/Menge_Genetik_Typ).
Gene and variant are currently transmitted combined in `Bezeichnung` with the
separator `||` — this composite free text is the starting point for the marker
type assignment in the table above.

### Fallback (direct oBDS mapping)

If MolGen **cannot** be implemented at a site, the direct mapping of the oBDS
fields according to the profile
[Genetische Variante](StructureDefinition-mii-pr-onko-genetische-variante.html)
continues to apply: `Observation.note` (variant name) and
`Observation.interpretation` (qualifier).

### Implementation Status

This page is the **clinical documentation basis** for representing the variant
types. The *tiered* strategy is **partly profiled**:

- **Implemented (v2027):** **gene identity** is structurally profiled —
  `Observation.component:gene-studied` is bound **extensibly** in profile
  [`MII_PR_Onko_Genetische_Variante`](StructureDefinition-mii-pr-onko-genetische-variante.html)
  to the value set
  [`mii-vs-onko-marker-gene-hgnc`](ValueSet-mii-vs-onko-marker-gene-hgnc.html)
  (40 HGNC genes from the §65c marker list). Extensible means: the list covers
  the common oncological marker genes, further genes are explicitly permitted.
  The free-text gene name per oBDS 23.1 remains in `note.text`.
- **Still a recommendation (not profiled):** marker-type codes via LOINC and
  categorical variants (exon, fusion, amplification) via GA4GH Cat-VRS — the
  FHIR binding for these is too young for binding constraints.
