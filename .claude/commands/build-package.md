# Build Package Command

## Usage
```
/build-package [OPTIONS]
```

## Your Task
Build a FHIR package tarball from the current IG project using Firely Bake and optionally publish to package registry.

**CRITICAL**: Use `fhir bake` to create package structure, NOT `npm pack`. The npm pack approach packages the entire repository instead of just FHIR resources.

### Step 1: Pre-build Checks
1. Verify current directory is project root
2. Check for required files:
   - `sushi-config.yaml`
   - `package.bake.yaml`
   - `input/fsh/` directory
3. Check git status to ensure clean state or warn about uncommitted changes
4. Get current version from `sushi-config.yaml`

### Step 2: Clean Previous Build Artifacts
Clean output directories to ensure fresh build:
```bash
rm -rf output/ staging/ .bake/
```

### Step 3: Run Firely Bake to Build Package Structure
Execute Firely Bake to:
- Compile FSH to FHIR resources (if not already compiled)
- Transform resources to JSON
- Generate snapshots for StructureDefinitions
- Organize conformance resources and examples
- Create package structure in `.bake/package/`

```bash
fhir bake package.bake.yaml
```

**Expected Output**:
- `.bake/package/` directory created
- JSON files organized:
  - Conformance resources (StructureDefinition, ValueSet, CodeSystem, etc.) at package root
  - Example instances in `examples/` subdirectory
  - package.json at root

**Example Output**:
```
info: Firely Bake v1.x.x
info: Loading package.bake.yaml...
info: Processing to-json action...
info: Processing generate-snapshots action...
info: Processing move-conformance-resources action...
info: Processing move-examples action...
info: Package structure created in .bake/package/
```

### Step 4: Create Package Tarball
Create a tarball from the built package structure:

```bash
# Navigate to .bake directory
cd .bake

# Create tarball with proper naming
tar -czf ../de.medizininformatikinitiative.kerndatensatz.onkologie-[VERSION].tgz package/

# Return to project root
cd ..
```

**Replace [VERSION]** with the actual version from sushi-config.yaml (e.g., `2026.0.0-rc.1`)

**Example command for version 2026.0.0-rc.1**:
```bash
cd .bake && tar -czf ../de.medizininformatikinitiative.kerndatensatz.onkologie-2026.0.0-rc.1.tgz package/ && cd ..
```

### Step 5: Verify Package Contents
Verify the package tarball contains the correct structure and resources:

```bash
# List tarball contents
tar -tzf de.medizininformatikinitiative.kerndatensatz.onkologie-[VERSION].tgz | head -20

# Check file count
tar -tzf de.medizininformatikinitiative.kerndatensatz.onkologie-[VERSION].tgz | wc -l

# Check package size
ls -lh de.medizininformatikinitiative.kerndatensatz.onkologie-[VERSION].tgz
```

**Expected Results**:
- File count: ~400-500 files (conformance + examples)
- Package size: reasonable for FHIR package (NOT 10+ MB)
- Structure:
  ```
  package/package.json
  package/StructureDefinition-mii-pr-onko-diagnose-primaertumor.json
  package/StructureDefinition-mii-pr-onko-tnm-klassifikation.json
  package/ValueSet-*.json
  package/CodeSystem-*.json
  package/examples/Condition-*.json
  package/examples/Observation-*.json
  ...
  ```

**NO unwanted files**:
- No `.claude/` directory
- No `input/fsh/` source files
- No `implementation-guides/` directory
- No `.git/` or build artifacts

```bash
# Verify no source code in package
tar -tzf de.medizininformatikinitiative.kerndatensatz.onkologie-[VERSION].tgz | grep -E '\.fsh$|\.claude|input/fsh'

# Should return nothing (exit code 1)
```

### Step 6: Extract and Verify Key Resources
Verify critical resources are present with correct URLs and versions:

```bash
# Extract package to temp location for verification
mkdir -p /tmp/package-verify
tar -xzf de.medizininformatikinitiative.kerndatensatz.onkologie-[VERSION].tgz -C /tmp/package-verify

# Check Diagnose profile
cat /tmp/package-verify/package/StructureDefinition-mii-pr-onko-diagnose-primaertumor.json | grep -E '"url"|"version"'

# Expected output:
#   "url": "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
#   "version": "[VERSION]",

# Count resource types
ls /tmp/package-verify/package/StructureDefinition-*.json | wc -l  # Profiles + Extensions
ls /tmp/package-verify/package/ValueSet-*.json | wc -l             # ValueSets
ls /tmp/package-verify/package/CodeSystem-*.json | wc -l           # CodeSystems
ls /tmp/package-verify/package/examples/*.json | wc -l             # Examples

# Cleanup
rm -rf /tmp/package-verify
```

### Step 7: Package Information Summary
Display package build summary:
```
## Package Build Summary
**Package**: de.medizininformatikinitiative.kerndatensatz.onkologie
**Version**: [version]
**Tarball**: de.medizininformatikinitiative.kerndatensatz.onkologie-[version].tgz
**Size**: [actual size]
**Total Files**: [count]
**Resources**:
  - StructureDefinitions: [count]
  - ValueSets: [count]
  - CodeSystems: [count]
  - Examples: [count]
**Location**: .bake/package/
**Tarball Location**: ./de.medizininformatikinitiative.kerndatensatz.onkologie-[version].tgz

✓ Package structure verified
✓ Critical resources present (Diagnose, TNM, Operation, etc.)
✓ No source code in package
✓ Size within expected range
```

### Step 8: Next Steps Suggestions
Ask user if they want to:
- Publish to Simplifier (`/publish-simplifier`)
- Create GitHub release with package attached
- Test package installation locally

## Options (Parse from command)
- `--skip-verification`: Skip package verification steps
- `--publish`: Automatically publish to Simplifier after build
- `--version X.Y.Z`: Override version from config

## Error Handling
- If `fhir bake` fails, show detailed error messages
- If package size is unexpectedly large, warn about possible inclusion of unwanted files
- If file count seems wrong, warn about possible source code inclusion
- Suggest fixes for common errors:
  - Missing `package.bake.yaml`: Check file exists
  - Bake action fails: Check source paths in bake file
  - Wrong package structure: Verify bake configuration
- Use TodoWrite for tracking fixes if multiple errors found

## Common Mistakes to Avoid
❌ **DO NOT** use `npm pack` - packages entire repository
❌ **DO NOT** create tarball from project root
❌ **DO NOT** skip verification steps

✅ **DO** use `fhir bake package.bake.yaml`
✅ **DO** create tarball from `.bake/package/` directory
✅ **DO** verify package size and file count
✅ **DO** check for unwanted source files
