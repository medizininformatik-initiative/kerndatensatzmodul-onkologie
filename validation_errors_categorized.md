# Validation Error Categories (New Run)

## Summary
- Total Errors: ~932 (red background #ffcccc)
- Total Warnings: ~828 (orange background #ffebcc)

## Major Error Categories

### 1. Language Code Errors (BULK - ~779 occurrences)
**Pattern**: `The System URI could not be determined for the code 'de-DE'`
**Issue**: Language code 'de-DE' not found in ValueSet 'All Languages'
**Files Affected**: Multiple StructureDefinition files
**Note**: Both 'de' and 'de-DE' should be valid per BCP-47, but validator may have specific requirements
**Also**: 3 occurrences of 'en-US' with same issue

### 2. External Terminology Errors (BULK - ~100+ occurrences)
#### a. ICD-10-GM Version Issues
**Pattern**: `CodeSystem 'http://fhir.de/CodeSystem/bfarm/icd-10-gm' version '2024' could not be found`
**Examples**: C18, C50.3, C43.9, C61, C48.2
**Issue**: Validator doesn't have ICD-10-GM 2024 (has 2023 but not the string "2024")
**Solution**: EXTERNAL - German terminology server version issue

#### b. OPS Version Issues  
**Pattern**: `CodeSystem 'http://fhir.de/CodeSystem/bfarm/ops' version 'OPS 2024' could not be found`
**Examples**: 5-484.55, 5-604
**Issue**: Version string mismatch ('OPS 2024' vs '2024')
**Solution**: May need to change version string from "OPS 2024" to "2024"

#### c. MedDRA Code System
**Pattern**: `A definition for CodeSystem 'https://www.meddra.org' could not be found`
**Example**: Code 10016256 (Fatigue)
**Solution**: EXTERNAL - Proprietary terminology

#### d. Missing Custom CodeSystems
**Pattern**: `A definition for CodeSystem 'mii-cs-onko-prostata-postsurgical-complications' could not be found`
**Solution**: Check if CodeSystem is properly defined and included

### 3. Profile/Slicing Issues (~4+ occurrences)
**Pattern**: `This element does not match any known slice`
**Example**: MedicationStatement.partOf slicing issues
**Solution**: Check discriminator configuration

### 4. Profile Reference Matching
**Pattern**: `Unable to find a profile match`
**Previous fixes applied**: Added meta.profile to diagnose instances

### 5. Structural Issues
- Missing snapshots (resolved with SUSHI)
- Bundle URL format (fixed - using canonical URLs)

## Quick Fix Priorities

### IMMEDIATE - Language Code Fix (Will eliminate ~779 errors!)
1. Change all 'de-DE' to 'de' in translation extensions
2. Or ensure proper language code system is referenced

### ALREADY FIXED (pending validation)
1. AdverseEvent.event.coding binding (moved from .code to .coding level)
2. Profile meta.profile additions (KRK, Mamma diagnose)
3. Slicing discriminator fixes (resolve() path)
4. Bundle absolute URLs

### EXTERNAL/WONTFIX
1. MedDRA codes
2. OPS/ICD-10-GM version mismatches
3. RadLex codes

## Next Steps
1. Fix language code issue (will reduce errors by ~84%!)
2. Re-run validation after language fix
3. Address remaining slicing/profile issues