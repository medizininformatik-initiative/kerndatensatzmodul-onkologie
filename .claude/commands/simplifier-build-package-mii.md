# Simplifier Build Package (MII)

## Usage
```
/simplifier-build-package-mii [OPTIONS]
```

## Your Task
Build an MII FHIR package for Simplifier using Firely Bake, with separate **bake** and **pack** steps.

**CRITICAL**: Use `fhir bake` to create package structure, NOT `npm pack`. The npm pack approach packages the entire repository instead of just FHIR resources.

## Two-Phase Workflow

This command has two distinct phases that can be run independently:

| Phase | Command | Output | Purpose |
|-------|---------|--------|---------|
| **Bake** | `fhir bake package.bake.yaml` | `.bake/package/` | Compile FSH, generate snapshots, organize resources |
| **Pack** | `tar -czf ... package/` | `.tgz` tarball | Create distributable package archive |

**Why separate?**
- The `.bake/package/` directory is persisted locally for inspection/debugging
- You can bake once and pack multiple times if needed
- Easier to verify package contents before creating tarball
- Version in `.bake/package/package.json` shows what was actually built

---

## Phase 1: Bake (Compile Package Structure)

### Step 1.1: Pre-build Checks
1. Verify current directory is project root
2. Check for required files:
   - `sushi-config.yaml`
   - `package.bake.yaml`
   - `input/fsh/` directory
3. Check git status to ensure clean state or warn about uncommitted changes
4. Get current version from `sushi-config.yaml`

### Step 1.2: Clean Previous Build Artifacts
Clean output directories to ensure fresh build:
```bash
rm -rf output/ staging/
```

**Note**: Do NOT delete `.bake/` - this preserves the previous bake for comparison. It will be overwritten by the new bake.

### Step 1.3: Run Firely Bake
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
- `.bake/package/` directory created/updated
- JSON files organized:
  - Conformance resources (StructureDefinition, ValueSet, CodeSystem, etc.) at package root
  - Example instances in `examples/` subdirectory
  - `package.json` at root with current version
  - `.index.json` package index

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

### Step 1.4: Verify Bake Results
After baking, verify the package structure:

```bash
# Check version in baked package
cat .bake/package/package.json | grep '"version"'

# Count resources
echo "StructureDefinitions: $(ls .bake/package/StructureDefinition-*.json 2>/dev/null | wc -l)"
echo "ValueSets: $(ls .bake/package/ValueSet-*.json 2>/dev/null | wc -l)"
echo "CodeSystems: $(ls .bake/package/CodeSystem-*.json 2>/dev/null | wc -l)"
echo "Examples: $(ls .bake/package/examples/*.json 2>/dev/null | wc -l)"
```

**Display Bake Summary**:
```
## Bake Complete
**Version**: [version from .bake/package/package.json]
**Location**: .bake/package/
**Resources**:
  - StructureDefinitions: [count]
  - ValueSets: [count]
  - CodeSystems: [count]
  - Examples: [count]

✓ Package structure ready for packing
```

---

## Phase 2: Pack (Create Tarball)

### Step 2.1: Create Package Tarball
Create a tarball from the baked package structure:

```bash
# Get version from project package.json
VERSION=$(node -p "require('./package.json').version")

# Create tarball from .bake directory
cd .bake && tar -czf ../de.medizininformatikinitiative.kerndatensatz.onkologie-${VERSION}.tgz package/ && cd ..

# Show result
ls -lh de.medizininformatikinitiative.kerndatensatz.onkologie-${VERSION}.tgz
```

**Alternative (explicit version)**:
```bash
cd .bake && tar -czf ../de.medizininformatikinitiative.kerndatensatz.onkologie-2026.0.0-rc.3.tgz package/ && cd ..
```

### Step 2.2: Verify Package Contents
Verify the package tarball contains the correct structure and resources:

```bash
# Get version for commands
VERSION=$(node -p "require('./package.json').version")

# List tarball contents
tar -tzf de.medizininformatikinitiative.kerndatensatz.onkologie-${VERSION}.tgz | head -20

# Check file count
tar -tzf de.medizininformatikinitiative.kerndatensatz.onkologie-${VERSION}.tgz | wc -l

# Check package size
ls -lh de.medizininformatikinitiative.kerndatensatz.onkologie-${VERSION}.tgz
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
tar -tzf de.medizininformatikinitiative.kerndatensatz.onkologie-${VERSION}.tgz | grep -E '\.fsh$|\.claude|input/fsh'

# Should return nothing (exit code 1)
```

### Step 2.3: Package Summary
Display final package summary:
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

**Locations**:
  - Baked package: `.bake/package/`
  - Tarball: `./de.medizininformatikinitiative.kerndatensatz.onkologie-[version].tgz`

✓ Package structure verified
✓ Critical resources present
✓ No source code in package
✓ Size within expected range
```

---

## Quick Commands

### Bake Only
```bash
rm -rf output/ staging/ && fhir bake package.bake.yaml
```

### Pack Only (from existing .bake/)
```bash
VERSION=$(node -p "require('./package.json').version")
cd .bake && tar -czf ../de.medizininformatikinitiative.kerndatensatz.onkologie-${VERSION}.tgz package/ && cd ..
```

### Full Build (Bake + Pack)
```bash
rm -rf output/ staging/ && fhir bake package.bake.yaml && \
VERSION=$(node -p "require('./package.json').version") && \
cd .bake && tar -czf ../de.medizininformatikinitiative.kerndatensatz.onkologie-${VERSION}.tgz package/ && cd ..
```

---

## Options (Parse from command)
- `--bake-only`: Only run Phase 1 (bake), skip packing
- `--pack-only`: Only run Phase 2 (pack from existing .bake/)
- `--skip-verification`: Skip package verification steps

## Next Steps
After building, inform the user:
- To publish to Simplifier, use `/publish-simplifier` or `/release-simplifier`
- To create a GitHub release, use `/release-finalize`

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
❌ **DO NOT** delete `.bake/` before inspecting - it's useful for debugging

✅ **DO** use `fhir bake package.bake.yaml`
✅ **DO** create tarball from `.bake/package/` directory
✅ **DO** verify `.bake/package/package.json` has correct version
✅ **DO** keep `.bake/` for inspection between builds
