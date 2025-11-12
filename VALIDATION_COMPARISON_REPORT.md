# FHIR Validation Comparison Report
**Generated:** 2025-11-12
**Branch:** dev (after merge from release/v2026-draft)

---

## Executive Summary

### Current Validation Status
- **Total Errors:** 735 (down from ~932 in previous run)
- **Total Warnings:** 829 (similar to previous ~828)
- **Total Info Messages:** 1,036

### Key Finding
**🎯 84% of errors (618/735) are language code issues that can be fixed with a single change!**

---

## Detailed Error Analysis

### 1. 🔴 LANGUAGE CODE ERRORS (618 errors - 84% of all errors)

**Status:** ❌ NOT YET FIXED
**Impact:** CRITICAL - Affects 612 'de-DE' + 6 'en-US' occurrences
**Priority:** **HIGHEST - Single fix eliminates 84% of errors**

#### Problem
```
The System URI could not be determined for the code 'de-DE' in the
ValueSet 'http://hl7.org/fhir/ValueSet/all-languages|4.0.1'
```

#### Root Cause
- Using 'de-DE' and 'en-US' in translation extensions
- FHIR validator expects 'de' and 'en' per BCP-47 language tags
- Occurs in multiple StructureDefinition files

#### Solution
**Option 1 (Recommended):** Change all 'de-DE' → 'de' and 'en-US' → 'en'
```bash
# Find affected files
grep -r "de-DE" fsh-generated/resources/*.json
grep -r "en-US" fsh-generated/resources/*.json

# Fix in FSH source files
find input/fsh -name "*.fsh" -exec sed -i '' 's/"de-DE"/"de"/g' {} +
find input/fsh -name "*.fsh" -exec sed -i '' 's/"en-US"/"en"/g' {} +
```

**Option 2:** Update FHIR validator to accept regional variants (requires external change)

---

### 2. 🟡 CONSTRAINT VALIDATION FAILURES (17 errors - 2.3%)

**Status:** ⚠️ PARTIALLY FIXED (some may remain)
**Impact:** MEDIUM - Affects example instances

#### Breakdown
- **ECOG validation:** 5 errors - `ecog-valid-value` constraint
- **Karnofsky validation:** 5 errors - `karnofsky-valid-value` constraint
- **Procedure coding (sct-ops-1):** 7 errors - OPS or SNOMED-CT required

#### Examples

**ECOG Constraint Error:**
```
File: Bundle-Example-ECOG-Comparison-Set.json
Location: Bundle.entry[0].resource/Observation/Example-ECOG-Baseline/.value.ofType(Quantity).value
Error: Constraint failed: ecog-valid-value: 'ECOG value must be an integer between 0 and 4'
```

**Issue:** Example instances may be using decimal values (e.g., 2.5) instead of integers (0-4)

**Procedure Coding Error:**
```
Constraint failed: sct-ops-1: 'Eine Prozedur MUSS mit OPS oder SNOMED-CT kodiert werden'
```

**Issue:** 7 Procedure instances missing both OPS and SNOMED-CT codes

#### Solution
1. **ECOG/Karnofsky:** Update example instances to use valid integer values
2. **Procedure coding:** Ensure all Procedure instances have either OPS or SNOMED-CT code

---

### 3. 🟠 SLICING EVALUATION FAILURES (14 errors - 1.9%)

**Status:** ⚠️ SOME FIXED, SOME REMAIN
**Impact:** MEDIUM - Affects MedicationStatement profiles

#### Pattern
All 14 errors appear to be the same issue:
```
Slicing cannot be evaluated: Could not match discriminator ($this) for slice
MedicationStatement.medication[x]:medicationCodeableConcept.coding:unii
```

#### Analysis
- **Profile:** `mii-pr-onko-systemische-therapie-medikation`
- **Issue:** The `unii` slice discriminator `($this)` is not working properly
- **Previous Fix Attempted:** Changed discriminator path, added system cardinality (see validation_errors_detailed.log line 65)
- **Status:** Fix may not have been applied or needs adjustment

#### Solution (from previous notes)
```fsh
* medication[x].coding ^slicing.discriminator[0].type = #pattern
* medication[x].coding ^slicing.discriminator[0].path = "system"
* medication[x].coding contains
    atc 1..1 and
    unii 0..* MS
* medication[x].coding[unii].system 1..1  // <- Ensure this is set
* medication[x].coding[unii].system = "http://fdasis.nlm.nih.gov" (exactly)
```

---

### 4. 🔴 PROFILE MATCH FAILURES (6 errors - 0.8%)

**Status:** ❌ NOT FIXED (but were supposedly fixed per detailed log)
**Impact:** HIGH - Affects bundle validation

#### Errors

**KRK Bundle (2 errors):**
```
1. Unable to find a profile match for Procedure/mii-exa-onko-krk-operation
   among choices: mii-pr-onko-krk-operation

2. Unable to find a profile match for Condition/mii-exa-onko-krk-diagnose
   among choices: mii-pr-onko-diagnose-primaertumor
```

**Melanom Bundle:**
```
Unable to find a profile match for Condition/mii-exa-onko-melanom-diagnose
among choices: mii-pr-onko-diagnose-primaertumor
```

**Other bundles:** 3 additional similar errors

#### Root Cause
- Referenced resources in bundles don't have `meta.profile` set
- Validator cannot determine which profile the resource conforms to

#### Previous Fix Status (from detailed log)
```
[FIXED - Added meta.profile to KRK diagnose]
[FIXED - Added meta.profile to Mamma diagnose]
```

**But errors still occur!** Need to verify:
1. Were the fixes actually applied to the FSH source?
2. Was SUSHI re-run after fixes?
3. Are there additional instances that need fixing?

#### Solution
Ensure all referenced resources in bundles have explicit `meta.profile`:
```json
{
  "resourceType": "Condition",
  "id": "mii-exa-onko-krk-diagnose",
  "meta": {
    "profile": [
      "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
    ]
  },
  ...
}
```

---

### 5. 🟡 BUNDLE FULLURL ERRORS (4 errors - 0.5%)

**Status:** ❌ NOT FIXED (but were supposedly fixed)
**Impact:** MEDIUM

#### Error Pattern
```
Bundle entry missing fullUrl
Relative Reference appears inside Bundle whose entry is missing a fullUrl
```

#### Previous Fix Status (from detailed log)
```
[FIXED - All bundles now use canonical base URLs]
```

**But errors still occur!** This suggests:
1. New bundles were added without fullUrls
2. Fixes were not complete
3. Some entries are still missing fullUrl

#### Solution
Ensure ALL bundle entries have absolute fullUrls:
```json
{
  "entry": [{
    "fullUrl": "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/example-patient-id",
    "resource": { ... }
  }]
}
```

---

### 6. ⚪ UNKNOWN CODES (10 errors - 1.4%)

**Status:** 🔵 EXTERNAL - Cannot fix
**Impact:** LOW - External terminology dependencies

#### Examples
- **RadLex:** Code 'RDE96' not found (4.2)
- **MedDRA:** CodeSystem 'https://www.meddra.org' not available (proprietary)
- **ICD-10-GM:** Version '2024' not in validator (has 2023)
- **OPS:** Version 'OPS 2024' format issue (use '2024' instead)

#### Recommendation
- Mark as `WONTFIX` or `EXTERNAL`
- Document in release notes
- Consider using extensible bindings where possible

---

### 7. 🟢 OTHER ERRORS (66 errors - 9%)

Various miscellaneous errors including:
- Extension validation issues (9 occurrences)
- CodeSystem version mismatches
- ValueSet binding warnings
- Display name mismatches

---

## Comparison with Previous Run

### What Improved ✅
- Total errors decreased from ~932 to 735 (21% reduction)
- Warnings remained stable (~828 vs 829)
- Some bundle structure issues were fixed

### What Remains ❌
- **Language codes (de-DE)** - Still not fixed (612 errors)
- **Profile matching** - Still failing despite claimed fixes
- **Bundle fullUrls** - Still some missing
- **Slicing evaluation** - UNII slice still problematic

### What Got Worse ⚠️
- New constraint failures appeared (ECOG/Karnofsky validation)
- Some "fixed" issues still show up in validation

---

## Action Plan - Priority Order

### 🔥 Priority 1: Language Codes (Eliminates 84% of errors!)
**Time estimate:** 5 minutes
1. Run sed commands to change 'de-DE' → 'de' and 'en-US' → 'en' in FSH files
2. Re-run SUSHI
3. Re-validate

### 🎯 Priority 2: Profile Matching (6 errors)
**Time estimate:** 15 minutes
1. Verify all bundle resources have explicit `meta.profile`
2. Focus on:
   - Bundle-mii-exa-onko-krk-bundle.json
   - Bundle-mii-exa-onko-melanom-bundle.json
   - Bundle-mii-exa-onko-mamma-example-bundle-1.json
3. Add meta.profile to FSH instance definitions

### 🔧 Priority 3: Constraint Failures (17 errors)
**Time estimate:** 30 minutes
1. Fix ECOG/Karnofsky example values (use integers 0-4 and 0-100)
2. Add OPS or SNOMED-CT codes to 7 Procedure instances
3. Re-validate

### 🛠️ Priority 4: Slicing Issues (14 errors)
**Time estimate:** 20 minutes
1. Review MedicationStatement unii slice definition
2. Ensure discriminator is properly configured
3. Test with example instances

### 📋 Priority 5: Bundle fullUrls (4 errors)
**Time estimate:** 10 minutes
1. Find bundles with missing fullUrls
2. Add absolute URLs to all entries

---

## Expected Results After Fixes

| Category | Current | After P1 | After P2 | After P3 | After P4 | After P5 |
|----------|---------|----------|----------|----------|----------|----------|
| Language | 618 | **0** | 0 | 0 | 0 | 0 |
| Profile Match | 6 | 6 | **0** | 0 | 0 | 0 |
| Constraints | 17 | 17 | 17 | **0** | 0 | 0 |
| Slicing | 14 | 14 | 14 | 14 | **0** | 0 |
| Bundle URLs | 4 | 4 | 4 | 4 | 4 | **0** |
| Other | 76 | 76 | 76 | 76 | 76 | 76 |
| **TOTAL** | **735** | **117** | **111** | **94** | **80** | **76** |
| **Reduction** | - | **84%** | **85%** | **87%** | **89%** | **90%** |

---

## Files to Check/Fix

### Language Codes
```bash
find input/fsh -name "*.fsh" | xargs grep -l "de-DE\|en-US"
```

### Profile Matching Issues
- `input/fsh/instances/Bundle-mii-exa-onko-krk-bundle.fsh`
- `input/fsh/instances/Bundle-mii-exa-onko-melanom-bundle.fsh`
- `input/fsh/instances/Bundle-mii-exa-onko-mamma-example-bundle-1.fsh`
- Look for: `Condition/mii-exa-onko-krk-diagnose`, `Procedure/mii-exa-onko-krk-operation`, etc.

### Constraint Failures
- `input/fsh/instances/Bundle-Example-ECOG-Comparison-Set.fsh`
- `input/fsh/instances/Bundle-Example-Karnofsky-Comparison-Set.fsh`
- Search for Procedures missing OPS/SNOMED-CT codes

### Slicing Issues
- `input/fsh/profiles/MII_PR_Onko_Systemische_Therapie_Medikation.fsh`
- Check the `unii` slice definition

---

## Conclusions

1. **Quick Win Available:** Fixing language codes eliminates 84% of errors with minimal effort
2. **Some "Fixed" Issues Persist:** Need to verify previous fixes were actually applied
3. **New Issues Emerged:** ECOG/Karnofsky validation suggests new constraints were added
4. **External Dependencies:** ~10 errors from unavailable terminologies (acceptable)

**Next Step:** Start with Priority 1 (language codes) for immediate 84% error reduction!
