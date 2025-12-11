# Validation Check Command

## Usage
```
/validation-check
```

## Your Task
Check the current FHIR validation status by analyzing the latest GitHub Actions CI run results.

### Step 1: Get Latest CI Run
1. Use `gh run list --workflow=CI_FHIR_VALIDATION --limit=5` to get recent CI runs
2. Identify the most recent completed run
3. Get the run URL and status

### Step 2: Download Validation Artifacts
1. Use `gh run download <run-id>` to download validation artifacts
2. Look for files like:
   - `validation-results.txt`
   - `qa-report.html`
   - `sushi-output.txt`
   - Any other validation output files

### Step 3: Parse Validation Results
Analyze the downloaded artifacts and extract:
- Total error count
- Total warning count
- Total info/hint count
- Error categories and their frequencies:
  - Terminology errors (TX_*, Terminology_*)
  - Profile validation (VALIDATION_*)
  - Bundle errors (BUNDLE_*)
  - Slicing errors
  - Reference resolution
  - CodeSystem/ValueSet issues

### Step 4: Compare with Baseline
1. Check if `known_errors.txt` exists
2. Compare current errors with documented baseline
3. Identify new errors or resolved errors

### Step 5: Generate Summary Report
Create a structured summary:

```
## Validation Status Report
**CI Run**: [URL]
**Status**: [✅ Success | ❌ Failed]
**Branch**: [branch name]
**Commit**: [commit hash]

### Summary Statistics
- **Errors**: X (±Y from baseline)
- **Warnings**: X (±Y from baseline)
- **Hints**: X (±Y from baseline)

### Top Error Categories
1. Category Name: X occurrences
2. Category Name: Y occurrences
...

### Critical Issues (Top 5-10)
[List of specific errors that need attention]

### New Errors (since last documented state)
[Errors not in known_errors.txt]

### Resolved Errors
[Errors in known_errors.txt but not in current run]

### Suppressed by advisor.json
[Summary of filtered errors]
```

### Step 6: Suggest Actions
Based on the results, suggest:
- Which errors should be addressed first
- Whether advisor.json needs updates
- Whether known_errors.txt should be updated
- Whether QA-Validierung.page.md needs refreshing

## Important Notes
- DO NOT modify files unless explicitly asked
- If `gh` CLI is not available, provide instructions for manual download
- Focus on actionable feedback
- Distinguish between:
  - **CRITICAL**: Must fix (breaks validation)
  - **TODO**: Should fix (quality issues)
  - **EXTERNAL**: Cannot fix (dependency issues)
  - **SUPPRESSED**: Intentionally filtered
