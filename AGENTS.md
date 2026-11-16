<!-- agents-md: schema 1 | updated 2026-11-16 | checker: ~/.claude/skills/agent-instructions-check -->
# AGENTS.md — kerndatensatzmodul-onkologie

FHIR R4 Implementation Guide of the MII Kerndatensatz module Onkologie: profiles for oBDS
(Onkologischer Basisdatensatz) data, built with SUSHI and the HL7 IG Publisher on the MII KDS
module template, and additionally baked into a Simplifier package. Before touching profiles,
understand that every artifact is traced to an oBDS chapter and to the logical model, and that
naming, versions and CRMI metadata are enforced by CI regexes, not by convention alone.

## Build, test, validate

```bash
sushi .                                   # compile FSH -> fsh-generated/ (SUSHI 3.20.1 = CI pin)
./_updatePublisher.sh && ./_genonce.sh    # full IG build -> output/qa.html (publisher.jar into input-cache/)
node --test scripts/*.test.mjs            # script unit tests (what convention-check.yml runs)
node scripts/convention-check.mjs         # MII metadata contract; M6 currently fails on the -ballot.1 version
bash scripts/language-model-check.sh      # EN-default / DE-translation language guard
python3 .claude/scripts/analyze_validation.py validation.json   # categorise a downloaded CI validation.json
bash .claude/scripts/qa_filter.sh         # dev-preview QA errors minus the known SU-TermServ noise
gh run list --workflow="CI (FHIR Validation & Release)" --limit 5   # main.yml; artifact name: validation-output
```

CI in `.github/workflows/`: main.yml runs the MII .NET QC plus an inlined Java validator over
`fsh-generated/resources/` with the dependencies from `package.json`; validation.yml calls the
MII reusable workflows; ig-publisher.yml deploys branch previews; module-release.yml reacts to
tags; go-publish.yml is the manual formal publication. Terminology comes from SU-TermServ
(mTLS client certificate) and falls back to tx.fhir.org without one.

## Conventions

- Names `MII_PR_Onko_<Concept>`, ids `mii-pr-onko-<concept>`, titles `MII PR Onkologie <Name>`;
  type prefixes pr|ex|lm|vs|cs|cm|sm|ns|sp|cps|od|ig|exa|lib. The regexes live in `qc/custom.rules.yaml`.
- Canonical URLs: `https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/<Type>/<id>`.
- Files are lowercase `mii-<type>-onko-<concept>.fsh`, grouped by oBDS chapter under
  `input/fsh/oBDS/` (05_Diagnose, 08_TNMKlassifikation, ...); organ-specific modules and
  cross-cutting terminologies have their own folders there. The template layout described in
  `input/fsh/README.md` (profiles/, extensions/, ...) is not what this repo uses.
- Every conformance resource inserts `PR_CS_VS_Version`, `Publisher`, the `OnkoCRMI<Type>` ruleset
  and `Translation(...)` for de-DE; the rulesets are in `input/fsh/rulesets/`.
- Logical model and profiles must agree: `input/fsh/mii-lm-onko.fsh` (MII_LM_Onko) and the PlantUML
  models in `input/images-source/` are the domain view; each backbone or object maps to one profile,
  each attribute to an element or extension, each relationship to a `Reference()` constraint.
- Data types: oBDS Code -> coded slice with ValueSet binding; Datum -> date/dateTime; required oBDS
  fields -> 1..1 or 1..*. Core oBDS elements and slicing discriminators are Must Support.
- A new profile needs an example instance, an intro page in `input/intro-notes/`, and a mention on
  the EN page in `input/pagecontent/` plus its DE mirror in `input/translations/de/pagecontent/`.
- Versions are MII CalVer (2027.0.0, -ballot.1, -rc.1); one bump touches `sushi-config.yaml`
  (version, package-source, date, approvalDate), `package.json`, `publication-request.json`,
  `input/fsh/rulesets/version.fsh` and the allowed version list in `qc/custom.rules.yaml`.
- Domain vocabulary (Tumor, Rezidiv, Morphologiebestimmung, Präfix, ...) is fixed in `CONTEXT.md`;
  use those terms in descriptions and pages.
- Git: Conventional Commits; feature, change and fix branches off `dev`, squash-merged into `dev`,
  `dev` to `main` as a merge commit; release branches are named release/v<version>.

## Guardrails

- `advisor.json` takes only `MessageID@path` suppressions. A free-text rule crashes validator_cli
  with a NullPointerException and silently killed every CI run from March to August 2026.
- `validation.json` and `validation.html` are committed QA files. When the validator crashes, CI
  uploads them unchanged; before trusting a run compare the artifact MD5 and require txlog.html.
- Never float a version (#current, #latest, #dev) in `ig.ini` or a dependency; the convention
  check fails, and a rebuild years later must reproduce the same site.
- Do not edit the vendored `ig-template/` or the catalog skills in `skills/`; CI fails on drift.
  Fix upstream and bump the pin with the sync script in `scripts/`.
- Published packages are permanent. Never publish to Simplifier or the registry unless asked.
- Example instances contain synthetic data only; never real or realistic patient data.
- Do not rename IG folders such as MIIIGModulOnkologie; it creates unreviewable diffs.
- `fsh-generated/`, `output/`, `.validation-history/` and `CLAUDE.md` are gitignored; do not force-add.

## Issue tracking

Issue tracking: **beads** (`.beads/` present; the session hook runs `bd prime`; follow the `beads-workflow` skill).

## Where to look

- Profiles, extensions, examples by oBDS chapter: `input/fsh/oBDS/`; invariants: `input/fsh/invariants/`.
- Logical model: `input/fsh/mii-lm-onko.fsh`; UML sources: `input/images-source/`.
- IG pages: `input/pagecontent/` (EN), `input/translations/de/pagecontent/` (DE); legacy Simplifier
  guide with the maintained release notes: `implementation-guides/ImplementationGuide-2027.x-DE/`.
- Template documentation: `docs/README.md`, `docs/release.md`, `docs/workflows.md`, `docs/recipes/`.
- Agent notes (parked detail): `docs/agent-notes/` holds naming tables, model-to-profile mapping
  rules, the validation workflow, and release and publishing history.
- Validation configuration: `advisor.json`, `qc/custom.rules.yaml`, profile test cases in `tests/`.
- Project skills: `.claude/skills/`; slash commands: `.claude/commands/`; Firely Bake pipeline:
  `package.bake.yaml`.
