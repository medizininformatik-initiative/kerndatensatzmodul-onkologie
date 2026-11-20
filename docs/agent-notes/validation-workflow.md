# Validation workflow and CI tracking

Relocated from the former CLAUDE.md (2026-11-16). The advisor.json rules in depth are in the
project skill `.claude/skills/fhir-validation/`; the IG-Publisher QA reports of all MII modules
are covered by the user skill `mii-qa-reports`.

## Two validation pipelines run in CI

| Workflow | What | Trigger |
|---|---|---|
| `.github/workflows/main.yml` "CI (FHIR Validation & Release)" | MII reusable .NET QC (`qc/custom.rules.yaml`) + an inlined HL7 Java validator over `fsh-generated/resources/*.json` with `-ig <dep>#<version>` for every dependency in `package.json`, terminology via a local NGINX mTLS proxy to the terminology server; also the tag-driven draft GitHub Release and the Zulip announcement (copied from the GenetischeTests module 2025-12-09) | push/PR to `dev`/`main`, tags `v*`, release published |
| `.github/workflows/validation.yml` "FHIR validation" | the MII reusable workflows (`ci_dotnet_validation.yml`, `ci_java_validation.yml` pinned to a kerndatensatz-meta SHA) from the module template | push to `dev`/`main`, every PR |
| `.github/workflows/ig-publisher.yml` | SUSHI + IG Publisher build, preview at `https://medizininformatik-initiative.github.io/kerndatensatzmodul-onkologie/branches/<branch>/` | push to any branch except `main` |

The two Java validations overlap; `main.yml` is the one whose `validation-output` artifact the
local tooling analyses. The .NET QC job is configured upstream to always pass; read its log.

## Local validation

```bash
sushi .                       # FSH errors
./_updatePublisher.sh         # once: publisher.jar into input-cache/
./_genonce.sh                 # full build; QA report in output/qa.html (0 errors is the goal)
bash .claude/scripts/qa_filter.sh [qa-eslintcompact.txt]   # dev preview errors minus known SU-TermServ families
```

Known non-actionable QA families filtered by `qa_filter.sh`: `value set null` and
`must specify either valueSet or url` (url-less $batch-validate-code, publisher bug) and
`bfarm/atc version <YYYY>` (historical ATC years not loaded on the terminology server).

Firely Terminal can validate the output as well (`fhir validate output/ --version 4.0.1 --tx <url>`),
but the MII terminology server (`https://ontoserver.mii-termserv.de/fhir`) requires an mTLS client
certificate; without one validate against tx.fhir.org or omit `--tx`.

## Tracking a CI run

The slash command `/commit-push-track-evaluate` (`.claude/commands/`) does: commit, push, poll the
`main.yml` run for the commit, download the `validation-output` artifact into
`.validation-history/{timestamp}_{short_sha}/`, run the analysis script. `/validation-check` only
does the last two steps for the latest run. Manually:

```bash
COMMIT_SHA=$(git rev-parse HEAD)
RUN_ID=$(gh api repos/medizininformatik-initiative/kerndatensatzmodul-onkologie/actions/runs \
  --jq ".workflow_runs | map(select(.head_sha == \"$COMMIT_SHA\")) | .[0].id")
gh api repos/medizininformatik-initiative/kerndatensatzmodul-onkologie/actions/runs/$RUN_ID \
  --jq '.status + " " + (.conclusion // "null")'          # poll until completed

OUTDIR=".validation-history/$(date +%Y%m%d_%H%M%S)_$(git rev-parse --short HEAD)"
mkdir -p "$OUTDIR"
gh run download $RUN_ID -n validation-output -D "$OUTDIR"
python3 .claude/scripts/analyze_validation.py "$OUTDIR/validation.json"
```

The analysis script prints a summary (current vs previous error count), error categories
(`UNABLE_TO_INFER_CODESYSTEM`, `Terminology_TX_NoValid_16`, ...), affected resource types, fixed and
new errors (up to 20 each), and writes `error_analysis.json` and `comparison_report.txt` next to the
downloaded `validation.json`, `validation.html`, `txlog.html`. `.validation-history/` is gitignored.

## Stale-artifact trap

`validation.json` and `validation.html` in the repo root are committed QA files. When
`validator_cli.jar` crashes, the upload step still uploads them unchanged, so the artifact looks
plausible but is old. Before analysing: `md5 -q validation.json` of the artifact must differ from
the committed file, and `txlog.html` must be present in the artifact.

## Error categories

| Category | Priority | Action |
|---|---|---|
| CRITICAL: profile violations, cardinality, broken references, bundle integrity | high | fix before release |
| TODO: terminology issues, slicing errors, data type mismatches | medium | should fix |
| EXTERNAL: terminology server timeouts, dependency problems | low | wait, or bump dependency |
| SUPPRESSED: known display variants, non-actionable warnings | info | documented in `advisor.json` |

`Wrong_Display_Name` findings are expected: the terminology server does not carry every German
display, per the MII-controlled terminology strategy.

## Suppressions (advisor.json)

Format `{ "suppress": [ "MessageID", "MessageID@FHIRPath*" ] }`. Only `MessageID` or
`MessageID@path` entries. A free-text wildcard rule (for example `"Unknown code 'RDE96' …*"`)
makes `RulesDrivenPolicyAdvisor.stringMatches` throw a NullPointerException on the first issue
without a messageId; this aborted every CI run after about 90 seconds from March to August 2026
(beads issue `a5l`). Verified up to validator 6.9.11. If no message id matches, fix the cause in
the repo (ship the fragment CodeSystem, for example) instead of suppressing. The effective validator
version comes from the org variable `JAVA_VALIDATOR_VERSION` (repo variable overrides; workflow
fallback 6.5.7 only without both).

Current suppressions (2026-11): `Terminology_TX_NoValid_16` and `UNABLE_TO_INFER_CODESYSTEM` on
ImplementationGuide parameters, StructureDefinition, ValueSet and CodeSystem; `MSG_DRAFT`;
`dom-6`; `eld-20`; `Terminology_TX_Confirm_4a@AdverseEvent.event*` (MedDRA).

## Profile test cases

`tests/profiles/profiles.json` lists fixtures with the profile they must validate against and the
expected outcome (valid / invalid); the IG Publisher runs them via the `profile-test-cases`
parameter, same harness as kerndatensatz-basis. A profile change that starts accepting bad data or
rejecting good data fails the build.
