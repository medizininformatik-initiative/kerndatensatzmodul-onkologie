# FHIR Validation & advisor.json Skill

This skill covers FHIR IG Publisher validation error handling, the advisor framework for suppressing known issues, and validation workflows.

## When to Use This Skill

- Analyzing CI validation results (errors, warnings)
- Adding suppressions to `advisor.json` for known external issues
- Deciding whether validation errors are actionable or external
- Cross-validating codes against the MII terminology server

---

## Advisor Framework (advisor.json)

### Location

```
kerndatensatzmodul-onkologie/advisor.json
```

### Purpose

Suppress known validation errors that are **not actionable** — typically caused by:
- Missing CodeSystems on the TX server (MedDRA, RadLex)
- TX server limitations (e.g., LOINC LIST filter not supported)
- Known display name variants
- Draft status warnings

### Suppress Format

Two supported ways to suppress:

1. **By message-id**: `"Terminology_TX_Confirm_4a"`
2. **By message-id + path**: `"Terminology_TX_Confirm_4a@AdverseEvent.event*"`

> ⚠️ **NIEMALS Freitext-Regeln verwenden** (z.B. `"Unknown code 'RDE96' …*"`).
> Text-Wildcard-Regeln ohne `id@path`-Format crashen validator_cli 6.5.7 mit einer
> NullPointerException in `RulesDrivenPolicyAdvisor.stringMatches`, sobald ein Issue
> ohne messageId auftritt — dadurch brach von März bis August 2026 **jeder** CI-Lauf
> nach ~90 s ab (beads `a5l`). Basis- und Meta-Modul nutzen ausschließlich
> `MessageID@path`-Regeln — das ist die Konvention. Wenn kein Message-ID-Match
> möglich ist: Ursache im Repo fixen (z.B. Fragment-CodeSystem mitliefern) statt
> per Text unterdrücken.

> ⚠️ **Stale-Artefakt-Falle**: `validation.json`/`validation.html` sind committete
> QA-Dateien. Crasht der Validator, lädt der Upload-Step diese unveränderten Dateien
> als Artefakt hoch — die Ergebnisse sehen dann plausibel, sind aber alt. Vor jeder
> Analyse prüfen: MD5 des Artefakts ≠ MD5 der committeten Datei (`md5 -q validation.json`)
> und `txlog.html` muss im Artefakt vorhanden sein.

### Syntax Rules

- `*` is wildcard (at start/end of text or in path)
- `^` prefix for regex matching
- Path matching is segment-based (split by `.`)
- `@` separates message-id from FHIRPath
- For invariants, message-id is `{profile-url}#{invariant-key}`

### Finding Message IDs

Message IDs are **not shown** in default validator output. To find them:

1. **From validation.json**: Check the `extension` array on each issue for `operationoutcome-message-id`
2. **From qa.html**: Grouped list at bottom shows message IDs
3. **IG Publisher CLI**: Use `-show-message-ids` flag

```python
# Extract message-ids from validation.json
for issue in resource.get('issue', []):
    for ext in issue.get('extension', []):
        if 'message-id' in ext.get('url', ''):
            msg_id = ext.get('valueString', '')
```

### Common Message IDs

| Message ID | Meaning | When to Suppress |
|-----------|---------|------------------|
| `Terminology_TX_Confirm_4a` | Code not found in ValueSet via TX | CodeSystem not on server (MedDRA, etc.) |
| `Terminology_TX_NoValid_16` | No valid code found | TX server can't validate |
| `UNABLE_TO_INFER_CODESYSTEM` | Can't determine CodeSystem | Expected for some IG patterns |
| `MSG_DRAFT` | Resource has draft status | Normal during development |
| `Wrong_Display_Name` | Display doesn't match TX server | When using local/German translations |

### Rules (Advanced)

Beyond suppress, the advisor supports fine-grained validation control:

```json
{
  "suppress": ["..."],
  "rules": [{
    "type": "coded",
    "filters": [
      {"name": "system", "value": "https://www.meddra.org"}
    ],
    "options": []
  }]
}
```

Rule types: `resource`, `element`, `invariant`, `coded`, `reference`, `contained`

Each has specific filters (path, structure, id, system, valueSet, etc.) and options (cardinality, bindings, fixed, etc.). Empty options = skip that validation entirely.

**Note**: As of 2025, only suppress is fully supported. Rules functionality is experimental.

### Reference

- [Validator Advisor Framework](https://confluence.hl7.org/spaces/FHIR/pages/281216179/Validator+Advisor+Framework)

---

## Error Categorization

### Priority Levels

| Category | Priority | Action |
|----------|----------|--------|
| **Profile violations** | CRITICAL | Must fix — cardinality, type, constraint errors |
| **Broken references** | CRITICAL | Must fix — invalid reference targets |
| **Terminology (our codes)** | HIGH | Fix display names, wrong codes |
| **Terminology (external)** | EXTERNAL | Suppress — CodeSystem not on TX server |
| **TX server errors** | EXTERNAL | Suppress — server limitations |
| **Display name warnings** | LOW | Fix or suppress depending on source |

### Known External Issues (MII Onkologie)

These are **not fixable by us** and should be suppressed:

| Issue | Cause | Suppression |
|-------|-------|-------------|
| MedDRA codes not found | MedDRA not on MII TX server (licensed) | `Terminology_TX_Confirm_4a@AdverseEvent.event*` |
| RadLex RDE codes unknown | RadLex RDE codes not on TX server | `Unknown code 'RDE96' in the CodeSystem 'http://radlex.org'*` |
| LOINC LIST filter error | TX server doesn't support LIST filter | `Error from *: Error: There is no declared filter called LIST*` |

### CodeSystems Available on MII TX Server

| CodeSystem | URL | Available |
|------------|-----|-----------|
| ATC-DE | `http://fhir.de/CodeSystem/bfarm/atc` | Yes (v2026) |
| UNII | `http://fdasis.nlm.nih.gov` | Yes (v20250702) |
| PZN | `http://fhir.de/CodeSystem/ifa/pzn` | Yes (v20260215) |
| SNOMED CT | `http://snomed.info/sct` | Yes |
| LOINC | `http://loinc.org` | Yes (partial filter support) |
| ICD-10-GM | `http://fhir.de/CodeSystem/bfarm/icd-10-gm` | Yes |
| OPS | `http://fhir.de/CodeSystem/bfarm/ops` | Yes |
| MedDRA | `https://www.meddra.org` | **No** (licensed) |
| RadLex | `http://radlex.org` | **No** (RDE codes missing) |

---

## Validation Workflow

### 1. Push and Wait for CI

```bash
git push
gh run list --workflow="CI (FHIR Validation)" --limit=3
```

### 2. Download Artifacts

```bash
SHORT_SHA=$(git rev-parse --short HEAD)
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
OUTDIR=".validation-history/${TIMESTAMP}_${SHORT_SHA}"
mkdir -p "$OUTDIR"
gh run download <RUN_ID> -n validation-output -D "$OUTDIR"
```

### 3. Analyze

```bash
python3 .claude/scripts/analyze_validation.py "$OUTDIR/validation.json"
```

### 4. Categorize Errors

For each error, determine:
1. Is it caused by our changes? → **Fix it**
2. Is it a pre-existing issue? → **Track it**
3. Is it external (TX server, missing CodeSystem)? → **Suppress in advisor.json**

### 5. Suppress External Errors

Add to `advisor.json`, commit, push, and re-validate.

---

## Cross-Validation Against Terminology Server

### Via HTTP Proxy (localhost:3000)

```bash
# Lookup a code
curl -s -X POST http://localhost:3000/lookup \
  -H "Content-Type: application/json" \
  -d '{"system":"http://fhir.de/CodeSystem/bfarm/atc","code":"L01FF02"}'

# Search by text
curl -s -X POST http://localhost:3000/search \
  -H "Content-Type: application/json" \
  -d '{"system":"http://fhir.de/CodeSystem/bfarm/atc","filter":"Pembrolizumab"}'
```

### Batch Validation Pattern (Python)

```python
import json, urllib.request

def validate_code(system, code):
    data = json.dumps({"system": system, "code": code}).encode()
    req = urllib.request.Request(
        'http://localhost:3000/lookup', data=data,
        headers={'Content-Type': 'application/json'})
    try:
        resp = urllib.request.urlopen(req, timeout=10)
        result = json.loads(resp.read())
        # FHIR Parameters format
        for p in result.get('parameter', []):
            if p.get('name') == 'display':
                return True, p.get('valueString', '')
        return True, ''
    except urllib.error.HTTPError as e:
        if e.code == 404:
            return False, 'NOT FOUND'
        return False, f'HTTP {e.code}'
```

### PZN Limitations

The PZN CodeSystem on the MII server only has:
- `display` (brand name + formulation + pack size)
- `inactive` (boolean)

**No properties** for active ingredient, ATC code, or ASK number. PZN→Wirkstoff mapping requires external sources (PharmIndex, ABDATA).
