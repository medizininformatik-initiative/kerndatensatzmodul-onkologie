# HDB Ballot Integration Review — MII Onkologie 2026

**Source:** Jira filter 10158 ("Onko last 120 days"), project *MII – Modul Onkologie*
**Scope reviewed:** all 39 **non-Done** issues (of 150), oldest → newest
**Method:** 6 parallel read-only agents cross-checked each reviewer suggestion against FSH sources, generated resources, IG pages and PlantUML.
**Repo branch at review time:** `release-2026/tnm-example`
**Date:** 2026-07-15

Status legend: ✅ integrated · 🟡 partial · ❌ not integrated · ⚪ not repo-actionable (discussion / external / empty)

---

## 1. Consolidated status (all 39)

| Issue | Title (short) | Status | Effort | Primary file(s) |
|-------|---------------|--------|--------|-----------------|
| HDB-358 | Szenarien überarbeiten + Sequenzdiagramm | ❌ | L | Szenarien page + new puml |
| HDB-361 | Profile-Beziehungen; `PrimaerDiagnose` phantom-node bug; Sequenzdiagramm | 🟡 | M | `MII_Onko_UML_Relations_v2.pu`, Profile-Beziehungen page |
| HDB-396 | Oligometastatic postkoordination (MRCM-invalid) | ❌ | S | `mii-cm-onko-intention-sct.fsh` |
| HDB-413 | Internationale Codes (SNOMED/LOINC) in VS ergänzen | 🟡 | L | ~85 `mii-vs-onko-*` VS (curation) |
| HDB-417 | Diagnosesicherung ↔ Condition.verificationStatus | ✅ | – | already on verificationStatus.coding |
| HDB-465 | Therapie-Ende-Grund SCT mapping (R/W/A) | ❌ | S | `mii-cm-onko-therapie-ende-sct.fsh` |
| HDB-467 | Diagnosesicherung 7.3 (Autopsie) → 373800009 | ❌ | S | `mii-cm-onko-primaertumor-diagnosesicherung-sct.fsh` |
| HDB-469 | Strahlentherapie Applikationsart SCT mapping | 🟡 | M | `mii-cm-onko-strahlentherapie-applikationsart-sct.fsh` |
| HDB-471 | Strahlenart Tb-161 → 89457008 | ❌ | S | `mii-cm-onko-strahlentherapie-strahlenart-sct.fsh` |
| HDB-472 | Zielgebiet: 74964007 → body-structure codes | ❌ | S | `mii-cm-onko-strahlentherapie-zielgebiet-sct.fsh` |
| HDB-473 | Verlauf Primärtumor R → 263855007 | ❌ | S | `mii-cm-onko-verlauf-primaertumor-sct.fsh` |
| HDB-487 | Container issue "Kommentierung L. Gräßel" (empty) | ⚪ | – | none — check Jira sub-tasks |
| HDB-627 | ATC post-hoc: mark + require coding.version | 🟡 | M | `mii-pr-onko-systemische-therapie-medikation.fsh` + IG page |
| HDB-628 | UNII: Dinatriumfolinat ✅ / G-CSF ❌ | 🟡 | S | `mii-vs-onko-systemische-therapie-substanzen-unii.fsh` + IG page |
| HDB-671 | Bundles: alle tumorcharakterisierenden Profile / Tumorakte | 🟡 | L | organ-module `mii-exa-*-bundle.fsh` |
| HDB-672 | TNM Binding AJCC vs UICC (review task) | ✅/⚪ | S | binding is UICC — review only |
| HDB-675 | Prostata Modul (Gleason, ClavienDindo, PSA) + label bug | 🟡 | S/M | `mii-pr-onko-prostata-clavien-dindo.fsh` (label bug) |
| HDB-676 | Mamma Modul (extra OP profile; Markierung) | ✅ | S | both modeling options present |
| HDB-677 | TNM MINT-Lesion/Bildgebung validation | ⚪ | – | external cross-module |
| HDB-678 | Erstdiagnose Evidenz: List vs Condition.evidence | ⚪ | S/M | design question |
| HDB-679 | Technical IG feedback (9 sub-points) | 🟡/❌ | S–M | multiple profiles (see §3) |
| HDB-680 | Minor technical IG issues (4 sub-points) | 🟡/❌ | S | `mii-pr-onko-verlauf.fsh`, Release-Notes page |
| HDB-683 | Standard laterality extension statt custom | ❌ | L | Seitenlokalisation across ~6 files |
| HDB-688 | PSA-Profil (ein Profil, mehrere Codes) | ✅ | – | `mii-pr-onko-prostata-psa.fsh` |
| HDB-689 | Karnofsky als Quantity (+ECOG refRange) | 🟡 | M | `...-karnofsky-quantity.fsh` (commented out) |
| HDB-690 | Observation.method → Patho-Untersuchung | 🟡 | M | weitere-klassifikationen + tnm-klassifikation |
| HDB-691 | Mehr SNOMED in value-VS (nicht nur FIGO) | ✅ | M | hierarchisch beibehalten; curation optional |
| HDB-692 | Erstdiagnose vs Primärdiagnose vs Primärtumor | ❌ | M | Verlaufshistologie page + ~30 IG pages |
| HDB-694 | Feststellungsdatum == Diagnosesicherung? | ⚪ | S | clarification (mapped to oBDS 5.6) |
| HDB-695 | Evidenz-List: Zweck + Beispiele + dup search block | 🟡 | S | `Erstdiagnose-Evidenz-List.page.md` |
| HDB-696 | ConceptMap source/targetUri (alle SNOMED CMs) | ❌ | M | ~25 `mii-cm-onko-*-sct.fsh` |
| HDB-697 | source/targetUri TNM-CMs | ❌ | S | 2 TNM CM files (+residualstatus) |
| HDB-699 | TNM-Suffix Extension descriptions (ITC/SN) | 🟡 | S | `mii-ex-onko-tnm-itc-suffix.fsh`, `...-sn-suffix.fsh` |
| HDB-703 | Inkonsistente SNOMED-Versionen (align) | 🟡 | M | ~33 `mii-cm-onko-*-sct.fsh` (actual: 20240401 vs 20250701) |
| HDB-709 | Binding + patternUri Konsistenz | 🟡 | S/M | `mii-pr-onko-strahlentherapie.fsh`, `mii-pr-onko-operation.fsh` |
| HDB-711 | Nationale Vorarbeiten: GOLD-Text + oBDS-Spalte | ❌ | M | `BezugZuNationalenStandards.page.md` (+CM) |
| HDB-712 | UML Genetische Variante ↔ Specimen link | ✅ | S | link present in all 3 pumls (0..1 kept) |
| HDB-714 | Histologiedatum doppelt (Verlaufshisto/Specimen) | 🟡 | S/M | mostly done; UML link missing in `onco_merged.puml` |
| HDB-715 | Studienteilnahme / Modul Forschungsvorhaben in UML | ✅ | – | present in `MII_Onko_UML_Relations_v2.pu` |

**Tally:** ✅ 7 · 🟡 17 · ❌ 11 · ⚪ 4

---

## 2. Notable findings & corrections

- **HDB-703** — reviewer cited versions `20240101`/`20250701`; the repo actually uses **`20240401`** (dominant, ~33 files) and **`20250701`** (one outlier: KRK stoma CM). "Align to 20250701" means bulk-editing ~33 files, then re-validating codes resolve.
- **HDB-361** — real defect: `MII_Onko_UML_Relations_v2.pu` references an **undeclared `PrimaerDiagnose`** (lines 49/90/91) → PlantUML phantom node; the declared object is `Diagnose_Primaertumor`.
- **HDB-675** — real copy-paste bug: `mii-pr-onko-prostata-clavien-dindo.fsh` (~lines 58–60) carries leftover **PSA-Wert** Label/Translation text on the ClavienDindo coding.
- **HDB-695** — `Erstdiagnose-Evidenz-List.page.md` has a **triplicated Suchparameter block** (and it references Condition search params on a List).
- **HDB-628** — Dinatriumfolinat already added (cited `// HDB-628`); **G-CSF still listed under "ohne verfügbare Codes"**; reviewer's GM-CSF UNII match is uncertain (G-CSF ≠ GM-CSF) → needs terminology confirm.
- **HDB-679-G** — `mii-pr-onko-weitere-klassifikationen.fsh:34` binds a ValueSet to `.code` (a scalar) instead of `.coding`/CodeableConcept — likely mis-binds.
- **HDB-680-4** — `Release-Notes.page.md` uses `{{pagelink:MelanomExzision}}` but **no such page/topic exists**.
- **HDB-696/697** — the SNOMED implicit VS `http://snomed.info/sct?fhir_vs` is used **nowhere**; 25 SNOMED CMs share an identical non-resolving `sourceUri`.

---

## 3. HDB-679 / HDB-680 sub-point detail

| Sub | Point | Status | File |
|-----|-------|--------|------|
| 679-A | Diagnose bodySite binding levels | ✅ | `mii-pr-onko-diagnose-primaertumor.fsh` |
| 679-B | Lymphknoten slice/binding align + `laboratory 1..*`→`1..1` | 🟡 | 4 lymphknoten profiles + grading |
| 679-C | Histobefund `basedOn` slice justification | 🟡 | `mii-pr-onko-befund.fsh` |
| 679-D | Grading fixed-code with `..*` cardinality; value binding level | 🟡 | `mii-pr-onko-grading.fsh` |
| 679-E | Verlauf code/coding cardinality; value binding; bodySite ICD-O-3 | 🟡 | `mii-pr-onko-verlauf.fsh` |
| 679-F | TNM grouper vs category binding/slicing misalignment | 🟡 | `mii-pr-onko-tnm-klassifikation.fsh` + category profiles |
| 679-G | weitere-klassifikationen line-34 binding on `.code` | ❌ | `mii-pr-onko-weitere-klassifikationen.fsh` |
| 679-H | Operation complication slice discriminator vs `.coding.system` | 🟡 | `mii-pr-onko-operation.fsh` |
| 679-I | Broken links (Medikation, UML github, canonical export) | ⚪ | IG pages / export layer |
| 680-1 | Verlauf `supportingInfo` allowed references | ❌ | `mii-pr-onko-verlauf.fsh` |
| 680-2 | Therapieprotokoll pagelink (export render) | 🟡 | export layer |
| 680-3 | usedCode ValueSet links (export render) | ⚪ | export layer |
| 680-4 | Melanom-Exzision pagelink → page missing | ❌ | `Release-Notes.page.md` |

---

## 4. Delegation plan (work units)

Grouped so each unit owns a **disjoint set of files** → safe to run as parallel subagents, each in its own git worktree.

### Tier A — Ready to delegate now (mechanical / unambiguous)

- **WU-1 · SNOMED ConceptMaps** (owns all `mii-cm-onko-*-sct.fsh` + TNM/residualstatus CMs)
  Issues: 396, 465, 467, 469, 471, 472, 473 (target/equivalence additions) · 696, 697 (source/targetScope) · 703 (version align).
  *Must be one unit* — all touch the same CM file set. Validate every SNOMED code via fhir-terminology MCP. Confirm two defaults first: SNOMED version target (→20250701?) and scope convention (`snomed.info/sct?fhir_vs` for target).
- **WU-2 · Observation/Procedure profile technical fixes** (06/09/13/14/17)
  Issues: 679-B, 679-C, 679-D, 679-E, 679-G, 679-H, 680-1, 709. Files: lymphknoten×4, grading, befund, verlauf, weitere-klassifikationen, operation, strahlentherapie.
- **WU-3 · TNM profiles + suffix extensions** (08)
  Issues: 679-F (align grouper/category binding+slicing), 699 (ITC/SN extension descriptions).
- **WU-4 · Prostata label bug** — 675 (fix mislabeled Label/Translation in `mii-pr-onko-prostata-clavien-dindo.fsh`). Tiny, isolated.
- **WU-5 · UML/diagram mechanical fixes** — 361 (`PrimaerDiagnose`→`Diagnose_Primaertumor` in Relations_v2.pu), 714-UML (add Verlaufshistologie↔Specimen link + fix 0..*→1..1 in `onco_merged.puml`), 712 (regenerate/verify SVGs). Then re-render SVGs.
- **WU-6 · IG doc fixes (isolated pages)** — 695 (Evidenz-List page: add rationale, remove triplicated search block), 680-4 (create/fix Melanom-Exzision pagelink).

### Tier B — Needs a WG/your decision first, then delegate

- **692** — pick canonical term (Erstdiagnose vs Primärdiagnose vs Primärtumor) → then a **serial** sweep across ~30 IG pages + folfox examples. *Keep this out of parallel runs* (touches many shared pages).
- **628** — confirm G-CSF vs GM-CSF UNII before adding.
- **689** — decide whether to actually offer the Karnofsky Quantity profile (uncomment) or keep coded-only.
- **711** — needs the reviewer's revised GOLD text; oBDS-mapping column requires extending the mvgenomseq ConceptMap.
- **627** — decide the post-hoc marking mechanism (Provenance vs extension vs required coding.version).
- **675 (design)** — Gleason components vs separate Obs; ClavienDindo Observation vs procedure.complication.
- **678** — List vs `Condition.evidence` inline.
- **671** — bundle content policy / tumor-file pattern (L).
- **683** — custom → standard laterality extension refactor (L, ~6 files, two patterns).
- **690** — method → Patho-Befund module link (cross-module; depends on Patho module).
- **691 / 413** — terminology curation (add SNOMED/LOINC); 413 is broad (L).
- **672 / 694** — review/clarification only.

### Tier C — No code needed

- Already integrated: 417, 676, 688, 712, 715, 672(binding).
- Not repo-actionable: 487 (empty container), 677 (external MINT-Lesion).

### Sequencing / conflict notes
- WU-1..WU-6 are file-disjoint → safe in parallel worktrees.
- **692** sweep and **WU-6** both edit IG `.md` pages — run 692 **after** WU-6 (or serialize) to avoid collisions.
- Diagram units (WU-5, plus 358/361 sequence diagrams) require PlantUML re-render; keep SVG regeneration in the same unit that edits the `.pu`.
- Every FSH edit is regenerated by SUSHI — do **not** hand-edit `fsh-generated/`.
