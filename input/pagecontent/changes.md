<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page changes.md (de) (input/translations/de/pagecontent/changes.md); pre-v2027 release history is summarized here and fully documented in the German edition. -->

All changes to this module are listed here. The complete, detailed release
history is maintained in the German edition of this page; the current release
cycle is translated in full below.

### Changes v2027.0.0 (not yet released)

#### ⚠️ Breaking Changes

These changes may require adjustments in existing implementations:

- **`BREAKING`** **UICC prefixes y, r and a as modifierExtension at category level**: The prefixes are no longer carried inside the category value but are represented on the respective T, N or M observation via the new extensions `mii-ex-onko-tnm-y-praefix`, `mii-ex-onko-tnm-r-praefix` and `mii-ex-onko-tnm-a-praefix`.
  - **Why modifierExtension**: The prefixes change the interpretation of the category value — `ypT2` (assessment during or after initial multimodal therapy) is **not** the same as `pT2`. Processing systems MUST know these extensions and must not interpret a category without evaluating the prefix.
  - **Distinction**: The c/p/u prefix remains a regular extension `mii-ex-onko-tnm-cp-praefix` on `Observation.code` (it names the method of assessment, not a different interpretation).
- **`BREAKING`** **Karnofsky/ECOG LOINC ConceptMaps corrected** (GH #269): The previous target codes were systematically wrong (Karnofsky shifted by ten LA numbers, ECOG with wrong check digits). Systems that adopted the old LA codes from the ConceptMaps must correct their data. In addition, the performance-status profiles now bind `valueCodeableConcept.coding[loinc]` required to new enumerated answer value sets (≙ LL4986-7 and LL529-9, GH #236).

#### New profiles and functionality

- `feat` **Synthesized TNM classification finalized** (`mii-pr-onko-tnm-klassifikation-synthetisiert`): merges several report-related TNM classifications into one coherent state at the time of decision (e.g. tumor board).
  - **Code fixed** to SNOMED CT `399703000` "Integrated TNM category"; the type value set `mii-vs-onko-tnm-klassifikation-typ` was extended accordingly (clinical / pathologic / integrated)
  - **`value` (UICC stage) now 1..1**: the stage is the purpose of the synthesis; on the report panel `value` remains 0..1
  - **New optional `component[tnmFormel]`** (CodeSystem `mii-cs-onko-tnm-formel`) for the generated TNM formula (e.g. "ypT0 ypN0 cM0"); it MUST match the `hasMember` observations including prefixes and SHOULD be generated, not maintained manually
  - **Provenance**: `derivedFrom` to the source classifications is REQUIRED (1..*), `device` is MS — for automated derivation the generating system including its version SHOULD be documented; an additional `Provenance` resource MAY be added for audit requirements
- `feat` New SearchParameters `tnm-y-praefix` and `tnm-r-praefix` for searching over the new prefix modifierExtensions.
- `feat` **Relationship axes of the diagnosis completed**: In addition to `occurredFollowing` (temporal sequence, oBDS 5.9 — target now also includes previous tumor disease), there is the new extension `mii-ex-onko-transformation-von` (lineage continuity, e.g. MDS → AML, meningioma /0 → /3) and a slice on the HL7 standard extension `condition-dueTo` (causation, e.g. t-AML after chemotherapy, radiogenic angiosarcoma). Three-axes guidance with CUP distinction on the diagnosis page; six new example instances including a CUP example bundle with best-of resolution.
- `feat` **ICD-O revision artifacts** (resolves, among others, the Heidelberg finding on 2014 codes): version-pinned year value sets for topography and morphology (first revision 2014 / second revision 2019), main value set as the union of both states, transition ConceptMap `mii-cm-onko-icdo3-transitions-2019` with all 55 changed morphology codes.
- `feat` **ATC year value sets 2018–2026 version-pinned** (3,422 entries) plus transition ConceptMap 2022 (monoclonal antibodies move L01XC → L01F); fixes the version ambiguity of the terminology server for year-versioned code systems.
- `feat` **Reportable-tumor value set + warning invariant for the ICD-10 coding** of the oncological diagnosis (`mii-vs-onko-icd10-meldepflichtige-tumoren`, block codes C00–C97, D00–D09, D32/D33, D35.2–.4, D37–D48): reports non-reportable codes as a warning without forbidding them.
- `feat` **MedicationStatement systemic therapy**: `medicationReference` is now allowed as an alternative to `medicationCodeableConcept` (both 0..1 with `medication[x]` 1..1, GH #288) — eases reuse of existing KDS medication resources.
- `feat` **Curated KDL value set** `mii-vs-onko-kdl-dokumentklassen` (45 document classes along the oncological treatment path) as a non-binding companion artifact for the document level.
- `feat` AdverseEvent: `event.coding` extended by a SNOMED CT slice (MedDRA binding unchanged on the MedDRA slice).
- `feat` Approved community changes: morphology extension `morphology-behavior-icdo3` now 0..* (GH #298), FIGO stages codeable (GH #297), Gleason scores < 6 allowed and pattern titles corrected (GH #260/#261).

#### Refactorings

- `refactor` **SearchParameter for the c/p/u prefix consolidated**: The three defective SearchParameters `tnm-t-cppraefix`, `tnm-n-cppraefix` and `tnm-m-cppraefix` were replaced by the shared SearchParameter `mii-sp-onko-observation-tnm-cp-praefix` (code `tnm-cp-praefix`). The extension exists exactly once on `Observation.code`; the distinction between T, N and M category is made via the observation's category code (combination with the `code` SearchParameter).

#### Further improvements

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
