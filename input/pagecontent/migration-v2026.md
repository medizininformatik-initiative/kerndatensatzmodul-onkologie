<!-- markdownlint-disable MD041 -->
<!-- English mirror of input/translations/de/pagecontent/migration-v2026.md
     (German is the source language of this page) — both files must say the
     same thing. Per-entry structure follows the KDS module template's
     reporting scheme: what changed / effect on stored data / effect on
     implementations / migration path. -->

This page explains every breaking change of version **v2027.0.0** against
**v2026.0.3** — one by one, with impact and migration path. It complements the
[changelog](changes.html), which lists all changes chronologically.

> **Why this page exists:** the KDS calendar versioning scheme (`YYYY.n.n`)
> carries no major signal like SemVer — the version number warns nobody. This
> text is the warning.
{: .ig-highlight .ig-highlight-orange}

Each entry considers two perspectives separately:

* **Stored data** — do instances that were valid against v2026.0.3 still
  validate against v2027.0.0?
* **Implementations** — what breaks in clients and servers built against
  v2026.0.3, even where every stored instance remains valid?

From the second formal publication of this guide onwards, the IG Publisher's
machine-generated version comparison will be linked here, so that explanation
and technical diff sit side by side.

---

#### 1. UICC prefixes y, r, a as modifierExtension

**What changed.** The prefixes y (during/after multimodal therapy), r
(recurrence) and a (autopsy) are no longer carried in the category value and
no longer represented through separate symbol observations, but as
`modifierExtension` directly on the respective T, N or M category:
[`mii-ex-onko-tnm-y-praefix`](StructureDefinition-mii-ex-onko-tnm-y-praefix.html),
[`mii-ex-onko-tnm-r-praefix`](StructureDefinition-mii-ex-onko-tnm-r-praefix.html),
[`mii-ex-onko-tnm-a-praefix`](StructureDefinition-mii-ex-onko-tnm-a-praefix.html).
The c/p/u prefix remains a regular extension on `Observation.code` — it names
the method of determination, not a divergent interpretation.

**Stored data.** Category instances without a prefix validate unchanged (the
modifierExtensions are `0..1`). Old instances carrying the prefix through the
symbol profiles remain valid and readable — see entry 7.

**Implementations.** This is the actual break: `ypT2` is **not** `pT2`.
Processing systems MUST know the modifierExtensions; a category must not be
interpreted without evaluating the prefix. A system ignoring the extension
reads neoadjuvantly pre-treated findings as untreated ones.

**Migration.** For each existing y/r/a symbol observation, set the
corresponding modifierExtension on the referenced category; the m symbol
becomes `component[multipleTumoren]` on the T category (component code LOINC
`42030-7`, value still from the UICC code system). The step is mechanical and
scriptable, since the symbol observations reference their target category
unambiguously.

#### 2. Karnofsky/ECOG LOINC concept maps corrected

**What changed** (GH #269). The previous LOINC answer codes in the concept
maps were systematically wrong: Karnofsky shifted by ten LA numbers, ECOG with
wrong check digits. In addition, the performance-status profiles now bind
`valueCodeableConcept.coding[loinc]` **required** to new enumerated answer
value sets (matching LL4986-7 and LL529-9 respectively, GH #236).

**Stored data.** Instances that adopted the old (wrong) LA codes from the
concept maps become **invalid** — the code falls outside the required binding.
Error signature: "code not in required value set" on the LOINC coding of the
value.

**Implementations.** Systems that hard-coded the old concept map targets keep
propagating wrong codes and must switch to the corrected maps.

**Migration.** Re-code existing values via the corrected concept maps
([Karnofsky](ConceptMap-mii-cm-onko-karnofsky-loinc.html),
[ECOG](ConceptMap-mii-cm-onko-ecog-loinc.html)). The mapping is 1:1 and
lossless — every old code has exactly one corrected successor.

#### 3. Oncology categorisation on the diagnosis now mandatory

**What changed.** `Condition.category` carries a new mandatory slice
`onkologie` (`1..1`) with SNOMED CT `55342001` "Neoplastic disease" on the
primary tumour and prior tumour disease profiles. Oncological diagnoses are
thereby findable via `Condition?category=http://snomed.info/sct|55342001`. The
extensible core binding (problem-list-item / encounter-diagnosis) is
unaffected.

**Stored data.** Instances without this category become **invalid**. Error
signature: "slice onkologie: minimum required = 1, but only found 0" on
`Condition.category`.

**Implementations.** Search logic that identified oncological diagnoses
differently (for example via ICD code ranges) can switch to the category;
existing searches keep working.

**Migration.** Add the coding `http://snomed.info/sct|55342001` to `category`
on every existing instance — mechanical, lossless, scriptable; existing
category entries remain in place.

#### 4. Gleason profiles: code.coding sliced

**What changed** (GH #259). `code.coding` used to be unsliced; SNOMED CT is
now mandatory (`1..1`) with LOINC as optional secondary coding (`0..1`) — for
grade group, overall score and pattern. Verified LOINC codes: `94734-1` (grade
group), `35266-6` (score), `44641-9`/`44642-7`/`44643-5` (pattern).

**Stored data.** Instances whose `code` carried only LOINC (or nothing coded)
become **invalid**. Error signature: "slice snomed: minimum required = 1" on
`Observation.code.coding`.

**Implementations.** Reading systems that evaluated the code positionally
(`coding[0]`) should switch to slice- or system-based evaluation.

**Migration.** Add the SNOMED code belonging to the respective profile (it is
stated as a pattern on the profile's artifact page); an existing LOINC code
remains as secondary coding.

#### 5. CTCAE catalogue version moved out of the MedDRA coding

**What changed** (oBDS 15.3). The CTCAE catalogue version no longer lives in
`AdverseEvent.event.coding[meddra].version` but in the new extension
[`mii-ex-onko-nebenwirkung-ctcae-version`](StructureDefinition-mii-ex-onko-nebenwirkung-ctcae-version.html)
with a required binding to the oBDS enumeration (`4`, `4.03`, `5.0`,
`Sonstige`). Reason: `coding.version` denotes the version of the code system
the code is taken from — that is MedDRA (CTCAE v4.03 builds on MedDRA v12.0),
not CTCAE. The conflation made codes unresolvable against the value set.

**Stored data.** Instances carrying the CTCAE version in `coding.version`
remain formally **valid** (the extension is `0..1`, `coding.version` is not
forbidden) — but oBDS field 15.3 is no longer read from there. The statement
itself (for example "Version 4") is correct from the cancer registry's
perspective — it names the CTCAE version — it merely sat in the wrong place:
`coding.version` denotes the version of the MedDRA catalogue, not of the CTCAE
catalogue.

**Implementations.** Systems reading or writing the CTCAE version from
`coding.version` must switch to the extension.

**Migration.** Move the value from `event.coding[meddra].version` into the
extension and remove `coding.version`. Registry-typical spellings such as
"Version 4" are mapped to the code of the oBDS XSD enumeration in the process
(here: `4`, display "CTCAE Version 4") — a format alignment, not a substantive
correction.

#### 6. Reference types tightened

**What changed.** Previously generic references are now restricted to the
professionally admissible profiles: `Verlauf.hasMember` (only the seven
defined members instead of any Observation),
`AdverseEvent.suspectEntity.instance` (radiotherapy / systemic therapy /
medication), `Condition.extension:dueTo.valueReference`,
`Residualstatus.partOf` (operation), `TNM-synthetisiert.device` (Device) and
`Tumorkonferenz.activity[extended].reference` (the three therapy
recommendation profiles).

**Stored data.** Instances whose reference targets do not satisfy the required
profiles become **invalid**. Error signature: "Unable to find a profile match
… among choices" or a type error on the respective reference.

**Implementations.** Producing systems must ensure reference targets satisfy
the target profiles — in practice usually by the target instance declaring and
fulfilling the profile in `meta.profile`.

**Migration.** Review reference targets; professionally appropriate targets
generally satisfy the profiles already, in which case the `meta.profile`
declaration on the target suffices. References to out-of-domain targets were
already wrong in substance — **deliberately, no migration path is provided for
those.**

#### 7. TNM symbol profiles deprecated

**What changed.** `mii-pr-onko-tnm-y-symbol`, `-r-symbol`, `-a-symbol` and
`-m-symbol` are set to `retired`. Their successors are the modifierExtensions
(entry 1) and the `component[multipleTumoren]` on the T category.

**Stored data.** Remains **valid and readable** — the profiles continue to
exist, and `hasMember` on the panel still names them. `retired` means: no
further development, no use in new implementations.

**Implementations.** New implementations use the extensions or the component
exclusively. Reading systems should accept both representations during a
transition period.

**Migration.** No forced re-migration of stored data; the rewrite is
mechanical (see entry 1) and recommended for data stocks under active
maintenance.

#### 8. Legacy artifacts removed

**What changed.** Removed were the commented-out legacy radiotherapy family
(profile, extension, example) and the never-activated Quantity profiles for
ECOG and Karnofsky.

**Stored data and implementations.** No effect — these artifacts were never
effective in any published version (commented out or never activated); no
conforming stored data can exist. **Deliberately, no migration path is
provided.**

#### 9. Dependencies moved to the 2027 ballot line

**What changed.** `kerndatensatz.meta` 2027.0.0-ballot.rc3,
`kerndatensatz.base` 2027.0.0-ballot.rc1, `de.basisprofil.r4` 1.6.0,
`kerndatensatz.biobank` 2027.0.0-ballot.rc2, `kerndatensatz.studie`
2027.0.0-ballot.rc1, `kerndatensatz.laborbefund` 2027.0.0-ballot.rc3 (new, for
the tumour marker profile) and `hl7.fhir.uv.genomics-reporting` 3.0.0 (new).

**Stored data.** Generally no direct effect; the base modules' changelogs are
authoritative — tightenings there propagate here through inheritance.

**Implementations.** Package resolution and validation environments must load
the new dependency versions; mixed environments (oncology 2027 against 2026
base modules) are untested.

**Migration.** Raise dependencies together with the module; no data migration
step.
