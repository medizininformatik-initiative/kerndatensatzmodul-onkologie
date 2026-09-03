<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page changes.md (de) (input/translations/de/pagecontent/changes.md); pre-v2027 release history is summarized here and fully documented in the German edition. -->

All changes to this module are listed here. The complete, detailed release
history is maintained in the German edition of this page; the current release
cycle is translated in full below.

### Changes v2027.0.0-ballot.rc1 (ballot candidate, not yet released)

#### ⚠️ Breaking Changes

These changes may require adjustments in existing implementations:

- **`BREAKING`** **UICC prefixes y, r and a as modifierExtension at category level**: The prefixes are no longer carried inside the category value but are represented on the respective T, N or M observation via the new extensions `mii-ex-onko-tnm-y-praefix`, `mii-ex-onko-tnm-r-praefix` and `mii-ex-onko-tnm-a-praefix`.
  - **Why modifierExtension**: The prefixes change the interpretation of the category value — `ypT2` (assessment during or after initial multimodal therapy) is **not** the same as `pT2`. Processing systems MUST know these extensions and must not interpret a category without evaluating the prefix.
  - **Distinction**: The c/p/u prefix remains a regular extension `mii-ex-onko-tnm-cp-praefix` on `Observation.code` (it names the method of assessment, not a different interpretation).
- **`BREAKING`** **Karnofsky/ECOG LOINC ConceptMaps corrected** (GH #269): The previous target codes were systematically wrong (Karnofsky shifted by ten LA numbers, ECOG with wrong check digits). Systems that adopted the old LA codes from the ConceptMaps must correct their data. In addition, the performance-status profiles now bind `valueCodeableConcept.coding[loinc]` required to new enumerated answer value sets (≙ LL4986-7 and LL529-9, GH #236).
- **`BREAKING`** **Oncology flag on the diagnosis is now mandatory**: `Condition.category` carries a new required slice `onkologie` (1..1) with SNOMED CT `55342001` "Neoplastic disease" on the primary-tumour and prior-tumour profiles, making oncological diagnoses discoverable via `Condition?category=…|55342001`. Existing instances without this category become invalid; the extensible core binding (problem-list-item / encounter-diagnosis) is unaffected.
- **`BREAKING`** **Gleason profiles: `code.coding` is sliced** (GH #259): SNOMED CT is mandatory (1..1), LOINC optional as a secondary coding (0..1) — for grade group, total score and pattern. Verified LOINC codes: `94734-1`, `35266-6`, `44641-9`/`44642-7`/`44643-5`.
- **`BREAKING`** **CTCAE catalogue version moved out of the MedDRA coding** (oBDS 15.3): the version is no longer written to `AdverseEvent.event.coding[meddra].version` but to the new extension `mii-ex-onko-nebenwirkung-ctcae-version`, bound required to the oBDS enumeration (`4`, `4.03`, `5.0`, `Sonstige`, new code system `mii-cs-onko-nebenwirkung-ctcae-version`). Reason: `coding.version` denotes the version of the code system the code was drawn from — that is MedDRA (CTCAE v4.03 is built on MedDRA v12.0), not CTCAE. The conflation made codes unresolvable against the value set. Systems that read the CTCAE version from `coding.version` must be adjusted.
- **`BREAKING`** **Reference types hardened**: previously generic references are now restricted to the clinically valid profiles — `Verlauf.hasMember`, `AdverseEvent.suspectEntity.instance`, `Condition.extension:dueTo.valueReference`, `Residualstatus.partOf`, `TNM-synthesised.device` and `Tumorkonferenz.activity[extended].reference`. Instances with other target types become invalid.
- **`BREAKING`** **TNM symbol profiles deprecated**: `mii-pr-onko-tnm-y-symbol`, `-r-symbol`, `-a-symbol` and `-m-symbol` are `retired`. The y/r/a prefixes are carried as `modifierExtension` on the category profiles, the m suffix as the new `component[multipleTumoren]` on the T category (component code LOINC `42030-7`, value still from the UICC code system). Legacy data remains readable; new implementations should use the extensions and the component.
- **`BREAKING`** **Legacy artefacts removed**: the commented-out radiotherapy "alt" family and the never-activated ECOG/Karnofsky quantity profiles.
- **`BREAKING`** **Dependencies moved to the 2027 ballot line**: `kerndatensatz.meta` 2027.0.0-ballot.rc3, `kerndatensatz.base` 2027.0.0-ballot.rc1, `de.basisprofil.r4` 1.6.0, `kerndatensatz.biobank` and `kerndatensatz.studie` 2027.0.0-ballot.rc1 each. Newly added: `kerndatensatz.laborbefund` 2026.0.3 and `hl7.fhir.uv.genomics-reporting` 3.0.0.

#### New profiles and functionality

- `feat` **Synthesized TNM classification finalized** (`mii-pr-onko-tnm-klassifikation-synthetisiert`): merges several report-related TNM classifications into one coherent state at the time of decision (e.g. tumor board).
  - **Code fixed** to SNOMED CT `399703000` "Integrated TNM category"; the type value set `mii-vs-onko-tnm-klassifikation-typ` was extended accordingly (clinical / pathologic / integrated)
  - **`value` (UICC stage) now 1..1**: the stage is the purpose of the synthesis; on the report panel `value` remains 0..1
  - **New optional `component[tnmFormel]`** (CodeSystem `mii-cs-onko-tnm-formel`) for the generated TNM formula (e.g. "ypT0 ypN0 cM0"); it MUST match the `hasMember` observations including prefixes and SHOULD be generated, not maintained manually
  - **Provenance**: `derivedFrom` to the source classifications is REQUIRED (1..*), `device` is MS — for automated derivation the generating system including its version SHOULD be documented; an additional `Provenance` resource MAY be added for audit requirements
- `feat` New SearchParameters `tnm-y-praefix` and `tnm-r-praefix` for searching over the new prefix modifierExtensions.
- `feat` **Relationship axes of the diagnosis completed**: In addition to `occurredFollowing` (temporal sequence, oBDS 5.9 — target now also includes previous tumor disease), there is the new extension `mii-ex-onko-transformation-von` (lineage continuity, e.g. MDS → AML, meningioma /0 → /3) and a slice on the HL7 standard extension `condition-dueTo` (causation, e.g. t-AML after chemotherapy, radiogenic angiosarcoma). Three-axes guidance with CUP distinction on the diagnosis page; six new example instances including a CUP example bundle with best-of resolution.
- `feat` **ICD-O revision artifacts** (resolves, among others, the Heidelberg finding on 2014 codes): version-pinned year value sets for topography and morphology (first revision 2014 / second revision 2019), main value set as the union of both states, transition ConceptMap `mii-cm-onko-icdo3-transitions-2019` with the changed morphology codes (56 after the BfArM reconciliation, see below).
- `feat` **ATC year value sets 2018–2026 version-pinned** (3,422 entries) plus transition ConceptMap 2022 (monoclonal antibodies move L01XC → L01F); fixes the version ambiguity of the terminology server for year-versioned code systems.
- `feat` **Reportable-tumor value set + warning invariant for the ICD-10 coding** of the oncological diagnosis (`mii-vs-onko-icd10-meldepflichtige-tumoren`, block codes C00–C97, D00–D09, D32/D33, D35.2–.4, D37–D48): reports non-reportable codes as a warning without forbidding them.
- `feat` **MedicationStatement systemic therapy**: `medicationReference` is now allowed as an alternative to `medicationCodeableConcept` (both 0..1 with `medication[x]` 1..1, GH #288) — eases reuse of existing KDS medication resources.
- `feat` **Curated KDL value set** `mii-vs-onko-kdl-dokumentklassen` (45 document classes along the oncological treatment path) as a non-binding companion artifact for the document level.
- `feat` AdverseEvent: `event.coding` extended by a SNOMED CT slice (MedDRA binding unchanged on the MedDRA slice).
- `feat` Approved community changes: morphology extension `morphology-behavior-icdo3` now 0..* (GH #298), FIGO stages codeable (GH #297), Gleason scores < 6 allowed and pattern titles corrected (GH #260/#261).
- `feat` **ConceptMap MedDRA → SNOMED CT for the CTCAE adverse events** (`mii-cm-onko-nebenwirkung-meddra-sct`): all 790 CTCAE v4.03 terms, 708 mapped (638 equivalent, 28 narrower, 42 wider), 82 deliberately unmapped. Target codes verified against the curation version SNOMED International 20260501.
- `feat` **Tumour-marker profile `mii-pr-onko-tumormarker`**: derived from `MII_PR_Labor_Laboruntersuchung` (CDS module Laboratory Report), binding `Observation.code` extensibly to the new union list `mii-vs-onko-tumormarker-loinc` (48 curated LOINC codes), with `focus` on the diagnosis.
- `feat` **Cancer-predisposition value sets** from the §65c list: `mii-vs-onko-praedispositionssyndrome-orpha` (55 Orphanet codes) and `mii-vs-onko-praedispositionsgene-hgnc` (109 HGNC genes).
- `feat` **Structured gene identity**: `Observation.component:gene-studied` is bound extensibly to `mii-vs-onko-marker-gene-hgnc` (40 HGNC genes). For the IGHV special case `mii-vs-onko-ighv-gensegmente-hgnc` lists all 167 segments; mutated/unmutated remains represented via the oBDS qualifier (M/W).
- `feat` **TNM 9th edition**: codes `T1b3` (cervix) as well as `M1c1` and `M1c2` (lung) added to the UICC code system and the value sets.
- `feat` **CRMI metadata on all conformance resources** (324 of 325), following the pattern of the base module.
- `feat` **ECOG and Karnofsky profiles with `focus`** on the primary-tumour diagnosis.
- `feat` **OPS laterality on the surgery profile** exposed as must-support (the oBDS carries no separate laterality field for surgery).
- `feat` **Link to the CDS module Medical Research Project** (GH #232): `Studienteilnahme.focus[studie]` points to `MII_PR_Studie_Studie`.
- `feat` **oBDS mapping on the logical model**: all 16 areas and 85 sub-elements mapped to their oBDS field numbers.

#### Refactorings


- `refactor` **SearchParameter for the c/p/u prefix consolidated**: The three defective SearchParameters `tnm-t-cppraefix`, `tnm-n-cppraefix` and `tnm-m-cppraefix` were replaced by the shared SearchParameter `mii-sp-onko-observation-tnm-cp-praefix` (code `tnm-cp-praefix`). The extension exists exactly once on `Observation.code`; the distinction between T, N and M category is made via the observation's category code (combination with the `code` SearchParameter).

#### Further improvements

- `fix` **CapabilityStatement canonical moved into the module's namespace**: the URL was `…/fhir/modul-onko/CapabilityStatement/metadata` — missing the `ext/` segment, which made it the only resource of this module outside its own canonical base, and ending in `metadata` rather than its `id`. It is now `…/fhir/ext/modul-onko/CapabilityStatement/mii-cps-onko-capabilitystatement`. Formally a canonical change; in practice no profile or instance references a CapabilityStatement canonical, and the old URL pointed nowhere, since nothing is published under `/fhir/modul-onko/`.
- `fix` **SNOMED CT code for pure immunotherapy corrected** (GH #267): in `mii-cm-onko-therapie-typ-sct`, oBDS therapy type `IM` (Immun-/Antikörpertherapie) mapped to `897713009` "Antineoplastic chemoimmunotherapy" — asserting a chemotherapy that does not take place in pure immunotherapy. The target is now `76334006` "Immunotherapy (procedure)". `897713009` remains correct for the combinations `CI` and `CIZ`. The ConceptMap is `experimental`, dates from 2024 and is not referenced by any profile, so no migration is required.
- `documentation` **LOINC-SNOMED anchors for the tumour markers**: verified for 23 of 28 markers (seven newly determined). For gastrin, calcitonin, M-protein, IgA and IgM no "Measurement of …" grouper exists in the ontology.
- `documentation` **UICC code system: cross-edition union documented as a deliberate decision** — the edition in use is carried as a separate data element (TNM version, oBDS 8.2); edition-specific validation is planned as a later stage.
- `fix` **Organ modules aligned with the official oBDS numbering** (basisdatensatz.de and oBDS XSD v3.0.5): the numbers are flat (M1–M8, KR1–KR10, P1–P9, MM1–MM4); the earlier hierarchical entries do not exist officially. Misassignments corrected (PSA was P1, officially P7; Clavien-Dindo P5, officially P9) and missing fields added.
- `fix` **ICD-O transitions ConceptMap reconciled with the official BfArM update list** (2021-01-29): 56 instead of 55 transitions; `8153/1` added.
- `fix` **MVGenomSeq ConceptMap corrected against the actual data set**: 13 of 15 target fields did not exist in `OncologyCase.json`.
- `fix` **Example instances: unresolvable references cleaned up.**
- `fix` **`experimental = false`** on 37 module terminologies.
- `fix` **Curation status of the first-generation oBDS-SNOMED ConceptMaps disclosed**: the 28 maps from 2024 are marked `experimental = true` and are neither officially endorsed nor finally quality-assured.
- `fix` **UICC copyright on the TNM code system** replaces the previous CC-BY-4.0 licence statement.
- `documentation` **Implementation Guide moved to the HL7 IG Publisher** (away from Simplifier, onto the MII CDS module template), built bilingually from the repository.
- `documentation` **New overview page "Concept Mappings"**: all 1,459 mappings in five SQL-generated tables, produced at build time from the package database.
- `documentation` **ENCR Table 4 on the tumour-marker page**, plus the specimen-matrix question for serotonin/5-HIAA, HVA/VMA, catecholamines and the newly added metanephrines.
- `documentation` **KDL document classes with mapping table** (IHE XDS official via the DVMD ConceptMap, SNOMED CT and LOINC curated).
- `documentation` **oBDS diagnostic certainty 16.4 and morphology cardinalities**: the leading system for the therapy protocol is documented (`Procedure.usedCode` is authoritative, `MedicationStatement.note.text` only for schema assignment), as is the deliberate asymmetry of the morphology statements (diagnosis 0..*, histology observation exactly one per finding).
- `documentation` **Toronto classification**: §65c transmission rules added.
- `documentation` **Genetics: transmission notation of the §65c marker list** (two-position model, HGVSp/HGVSc, fusion notation).
- `documentation` **TNM: the three coding mechanisms explained.**
- `documentation` New guidance section "Manifestations of the TNM classification" on the [TNM classification](StructureDefinition-mii-pr-onko-tnm-klassifikation.html) page: describes clinical staging, pathological staging, follow-up and the synthesized classification and how they are distinguished via the code axis and prefix modifiers.

---

### Changes v2026.0.3 (released 2026-03-27)

Technical maintenance release: packaging fix on macOS (AppleDouble
contamination), dependency updates (biobank 2026.0.1, medikation 2026.0.1,
studie 2026.0.2), Firely Terminal 3.5.0. Details in the German edition.

### Changes v2026.0.2 (released 2026-03-10)

Terminology release: ATC-DE 2026 value set update (23 new codes, L01EP),
27 ATC display names corrected, ATC transition ConceptMap 2026. Details in the
German edition.

### Changes v2026.0.1 (released 2026-02-05) and v2026.0.0 (released 2026-01-03)

First 2026 releases including a breaking canonical-URL typo fix for the
radiotherapy application-type value set (HDB-708, GH #219). Full details in
the German edition.

### Earlier releases

The release history before v2026 is documented in the German edition of this
page.
