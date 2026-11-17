# Release management, publishing, URLs and glossary

Relocated from the former CLAUDE.md (2026-11-16). The template's authoritative release reference
is `docs/release.md` with the recipe `docs/recipes/cut-a-release.md`; this page records what is
specific to the Onkologie module and the history of the former development guide.

## Version scheme (MII CalVer)

- Releases `YYYY.0.n` (`2025.0.0`, `2026.0.3`), release candidates `YYYY.0.0-rc.X`, ballot versions
  `YYYY.0.0-ballot` / `-ballot.1`, template preview builds label themselves `YYYY.0.0-draft.n`.
- Current line: `2027.0.0-ballot.1` (ballot candidate of the 2027 line, moved to the HL7 IG Publisher,
  nine breaking changes: TNM prefixes as modifierExtension, mandatory oncology flag on the diagnosis,
  Gleason slicing, CTCAE version as its own extension, MedDRA to SNOMED CT mapping for all 790 CTCAE
  terms, Tumormarker profile, CRMI metadata module-wide; see the `description` in `package.json`).
- `node scripts/convention-check.mjs` rule M6 accepts only plain `YYYY.n.n`; it fails on a
  `-ballot.1` version. Expected during a ballot, must be green on a `release/**` branch.
- Published history: 2025.0.0 (first official release), 2026.0.0-rc.1 to rc.10, 2026.0.0, 2026.0.1,
  2026.0.2, 2026.0.3; the allowed list in `qc/custom.rules.yaml` `version-filled` mirrors this and
  must be extended on each bump (it lists `2027.0.0-ballot.rc1`, not the actual `2027.0.0-ballot.1`).

## Where the version lives

| File | Field |
|---|---|
| `sushi-config.yaml` | `version:`, `releaseLabel:` (ci-build / ballot / trial-use / release), `date:`, `package-source` extension `version`, `resource-approvalDate`, `resource-effectivePeriod` start year |
| `package.json` | `version`, `description` (the Simplifier package description carries the release-notes summary and link) |
| `publication-request.json` | `version`, `path`, `sequence`, `desc`, `first` |
| `input/fsh/rulesets/version.fsh` | the `Version` / `PR_CS_VS_Version` rulesets stamped onto every conformance resource |
| `qc/custom.rules.yaml` | the `version-filled` allowed list |
| `.claude/config.json` | `ig_export.version` read by `/build-package` |
| narrative pages | `index.md`, `changes.md`, `metadata.md`, `version-history.md` in `input/pagecontent/` and `input/translations/de/pagecontent/`; `Release-Notes.page.md` in `implementation-guides/ImplementationGuide-2027.x-DE/MIIIGModulOnkologie/` |

## Two release paths exist side by side

1. **Module slash commands** (`.claude/commands/`, written for the Simplifier era, still functional):
   `/release-prepare <version>` creates `release/v<version>` from `dev`, bumps `package.json`,
   `sushi-config.yaml`, `qc/custom.rules.yaml`, drafts release notes from git history, commits;
   `/release-status` checks version consistency and the phase checklist; `/release-finalize`
   switches to `main`, tags `v<version>`, pushes the tag (which triggers the `RELEASE` job in
   `main.yml`: draft GitHub Release with `fhir install` instructions). `/update-release-notes` and
   the project skill `release-notes` maintain `Release-Notes.page.md` (German, categorised by change
   type; summary copied to the `package.json` description).
2. **Template workflow** (`docs/release.md`): same branch model, but the tag triggers
   `module-release.yml` (build gate, `package.tgz` artifact, draft release, Zulip topic `Releases`),
   and the formal FHIR publication is the manual `go-publish.yml` dispatch (`publish=false` dry run
   first, then `publish=true`; IG-registry change exported as a patch for a human PR).

Both `main.yml` and `module-release.yml` react to the same tag glob `v[0-9]+.[0-9]+.[0-9]+*`, so a
tag currently creates two draft releases unless one workflow is disabled (`ENABLE_MODULE_RELEASE`
or editing `main.yml`). Decide before the next tag.

## Package publishing to Simplifier

The package is built with SUSHI + Firely Bake (`package.bake.yaml`: to-json, generate-snapshots,
move conformance resources with `status='active'` and drop IG/onLoad/onGenerate files, move
ConceptMaps, move examples, manifest, index). Use the user skills `mii-build-package` and
`mii-publish-package` (three-phase Restore/Bake/Pack); the former `/publish-simplifier` and
`/release-simplifier` commands were removed. `scripts/simplifier-build.sh <project>` downloads the
Simplifier project ZIP with a cached API token (credentials in `.env`).

| Status | releaseLabel | Usage |
|---|---|---|
| Development | `ci-build` | testing only |
| Ballot | `ballot` | community review (HL7 Germany ballot portal) |
| Release candidate | `trial-use` | pre-release testing |
| Release | `release` | production |

Published packages are permanent and cannot be removed from the registry.

## Post-release

- Verify the GitHub release, attach `package.tgz`, publish the draft (fires the Zulip post).
- Run `go-publish.yml` dry run, then real; submit the IG-registry PR.
- Update the MII wiki "Übersicht über Versionen der Kerndatensatz-Module".
- Export the IG for SharePoint (phase 8 of the slash-command flow); fix Simplifier resolve links with
  the project skill `fix-ig-export-links`.

## Essential URLs

| Resource | URL |
|---|---|
| GitHub repository | https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie |
| dev preview (IG Publisher) | https://medizininformatik-initiative.github.io/kerndatensatzmodul-onkologie/branches/dev/ |
| Simplifier project | https://simplifier.net/MedizininformatikInitiative-ModulOnkologie |
| Simplifier guide (2026 release notes) | https://simplifier.net/guide/mii-ig-modul-onkologie-v2026-de/MIIIGModulOnkologie/Release-Notes |
| Package registry | https://packages.simplifier.net/de.medizininformatikinitiative.kerndatensatz.onkologie |
| oBDS specification | https://www.basisdatensatz.de/ |
| MII module release workflow (wiki) | https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Module-Release-Workflow |
| Terminology server | https://ontoserver.mii-termserv.de/fhir (mTLS client certificate required; SU-TermServ secrets per `docs/secrets.md`) |
| FHIR R4 | http://hl7.org/fhir/R4/ |

## Glossary (module-specific; the template glossary is `docs/glossary.md`)

| Term | Meaning |
|---|---|
| oBDS | Onkologischer Basisdatensatz, the German cancer registry data set; chapters number the profiles' folders |
| ICD-O-3 | International Classification of Diseases for Oncology, 3rd edition (topography and morphology); ICD-O-4 expected with oBDS 4.0 |
| TNM / UICC | Tumour-Node-Metastasis staging; UICC = Union for International Cancer Control, publisher of the TNM editions |
| ECOG | Eastern Cooperative Oncology Group performance status |
| CTCAE | Common Terminology Criteria for Adverse Events (MedDRA-based) |
| OPS | Operationen- und Prozedurenschlüssel, German procedure classification |
| KDL | Klinische Dokumentenklassen-Liste (document classes, `kdl-onko-dokumentklassen.md`) |
| MVGenomSeq | Modellvorhaben Genomsequenzierung, mapped from the module via `MII_LM_MVGenomSeq_Onkologie` |
| CRMI | Canonical Resource Management Infrastructure IG; its metadata profiles are claimed module-wide |
| SU-TermServ | the MII/SU terminology server behind the mTLS proxy used by CI |

## History of the former CLAUDE.md

| Version | Date | Changes |
|---|---|---|
| 1.0.0 | 2025-11-25 | initial comprehensive development guide |
| 1.1.0 | 2025-12-04 | patterns moved to skills, CI validation tracking added |
| 1.2.0 | 2026-08-24 | dependencies 2026.x (base replaces diagnose/prozedur), terminology server URL, advisor.json path, stale publish commands removed |
| schema 1 | 2026-11-16 | replaced by `AGENTS.md` + `CLAUDE.md` (`@AGENTS.md`); detail parked in `docs/agent-notes/` |
