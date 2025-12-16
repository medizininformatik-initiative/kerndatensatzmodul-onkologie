# Publish to Simplifier

## Usage
```
/publish-simplifier [VERSION]
```

## Your Task
Publish an already-built FHIR package to Simplifier.net. This command assumes the package `.tgz` file has already been built using `/simplifier-build-package-mii`.

**Prerequisites**:
- Package must be built first: `/simplifier-build-package-mii`
- Package file: `de.medizininformatikinitiative.kerndatensatz.onkologie-[VERSION].tgz` in project root

---

## Step 1: Verify Package Exists

**ALWAYS run these checks first** before proceeding:

```bash
# Get version from package.json (extract to variable first to avoid parsing issues)
VERSION=$(grep '"version"' package.json | head -1 | sed 's/.*"version": "\(.*\)".*/\1/' | tr -d ',')

# Show version
echo "Package version from package.json: $VERSION"

# Check if package file exists for this version
PACKAGE_FILE="de.medizininformatikinitiative.kerndatensatz.onkologie-${VERSION}.tgz"

if [ -f "$PACKAGE_FILE" ]; then
  echo "✅ Package found: $PACKAGE_FILE"
  ls -lh "$PACKAGE_FILE"
else
  echo "❌ Package NOT found: $PACKAGE_FILE"
  echo ""
  echo "Available .tgz files:"
  ls -lh *.tgz 2>/dev/null || echo "  No .tgz files found"
  echo ""
  echo "Please build the package first: /simplifier-build-package-mii"
  exit 1
fi
```

**If package doesn't exist**, display error and STOP:
```
❌ Package file not found!

Expected: de.medizininformatikinitiative.kerndatensatz.onkologie-[VERSION].tgz

Please build the package first:
  /simplifier-build-package-mii
```

**If package exists**, show details and continue:
```
✅ Package found: de.medizininformatikinitiative.kerndatensatz.onkologie-[VERSION].tgz
Size: [X.X MB]
Ready to publish.
```

---

## Step 2: Verify Package Contents (Optional but Recommended)

Quick verification of package structure:

```bash
# Get version and set package filename (reuse from Step 1)
VERSION=$(grep '"version"' package.json | head -1 | sed 's/.*"version": "\(.*\)".*/\1/' | tr -d ',')
PACKAGE_FILE="de.medizininformatikinitiative.kerndatensatz.onkologie-${VERSION}.tgz"

# List package contents preview
echo "=== Package Contents Preview ==="
tar -tzf "$PACKAGE_FILE" | head -20

# Count total files
echo ""
echo "=== Resource Counts ==="
TOTAL=$(tar -tzf "$PACKAGE_FILE" | wc -l | tr -d ' ')
echo "Total files: $TOTAL"

SD_COUNT=$(tar -tzf "$PACKAGE_FILE" | grep 'StructureDefinition-' | wc -l | tr -d ' ')
echo "StructureDefinitions: $SD_COUNT"

VS_COUNT=$(tar -tzf "$PACKAGE_FILE" | grep 'ValueSet-' | wc -l | tr -d ' ')
echo "ValueSets: $VS_COUNT"

EX_COUNT=$(tar -tzf "$PACKAGE_FILE" | grep 'examples/' | wc -l | tr -d ' ')
echo "Examples: $EX_COUNT"

# Check for unwanted source files
echo ""
echo "=== Checking for source code ==="
tar -tzf "$PACKAGE_FILE" | grep -E '\.fsh$|\.claude|input/fsh|\.git' || echo "✅ No source code found"
```

**Expected results**:
- Total files: ~485
- StructureDefinitions: ~74
- ValueSets: ~97
- Examples: ~213
- NO `.fsh` or source files

---

## Step 3: Choose Publishing Method

### Method A: Web UI Upload (RECOMMENDED)

**Easiest method** - works for all users without CLI setup:

1. **Navigate to Simplifier project**:
   - URL: https://simplifier.net/MedizininformatikInitiative-ModulOnkologie
   - Go to **Packages** tab

2. **Upload package**:
   - Click **"Upload Package"** or **"New Version"**
   - Select the `.tgz` file from your local project root:
     - `de.medizininformatikinitiative.kerndatensatz.onkologie-[VERSION].tgz`
   - Confirm version and metadata

3. **Add release information**:
   - Version: [VERSION from package.json]
   - Description: Copy from `package.json` description field
   - Release notes: Link to IG Release Notes page

4. **Publish**:
   - Review details
   - Click **"Publish"**
   - ⚠️ **WARNING**: Published packages are PERMANENT and cannot be removed

5. **Verify**:
   - Check package appears at: https://packages.simplifier.net/de.medizininformatikinitiative.kerndatensatz.onkologie
   - Verify version is listed

---

### Method B: CLI Upload (Advanced)

**Requires**:
- Firely Terminal with Simplifier license
- Simplifier API authentication

#### Option 1: Using Firely Terminal

```bash
# Get version and set package filename
VERSION=$(grep '"version"' package.json | head -1 | sed 's/.*"version": "\(.*\)".*/\1/' | tr -d ',')
PACKAGE_FILE="de.medizininformatikinitiative.kerndatensatz.onkologie-${VERSION}.tgz"

# Login (if not already authenticated)
fhir login email=<email> password=<password>

# Publish package
fhir publish-package "$PACKAGE_FILE" --team MII
```

#### Option 2: Using Simplifier CLI (if installed)

```bash
# Get version and set package filename
VERSION=$(grep '"version"' package.json | head -1 | sed 's/.*"version": "\(.*\)".*/\1/' | tr -d ',')
PACKAGE_FILE="de.medizininformatikinitiative.kerndatensatz.onkologie-${VERSION}.tgz"

# Login
simplifier login

# Publish
simplifier push \
  --project MedizininformatikInitiative-ModulOnkologie \
  --version "$VERSION" \
  --file "$PACKAGE_FILE"
```

**Common CLI Errors**:
- **"Unauthorized: You do not have a license"**: Use Web UI method instead
- **"Not logged in"**: Run `fhir login` or `simplifier login`
- **"Version already exists"**: Cannot overwrite; increment version
- **"Permission denied"**: Check project membership/permissions

---

## Step 4: Post-Publication Verification

After publishing, verify the package:

1. **Check Simplifier registry**:
   ```
   https://packages.simplifier.net/de.medizininformatikinitiative.kerndatensatz.onkologie
   ```

2. **Test package installation**:
   ```bash
   # Get version from package.json
   VERSION=$(grep '"version"' package.json | head -1 | sed 's/.*"version": "\(.*\)".*/\1/' | tr -d ',')

   # Install the package
   fhir install de.medizininformatikinitiative.kerndatensatz.onkologie@$VERSION
   ```

3. **Download published package** (for GitHub release):
   - Download the `.tgz` from Simplifier packages page
   - This confirms the package was published correctly
   - Use this file for GitHub release attachment

---

## Step 5: Report Results

Provide summary:

```
## Simplifier Publication Summary

**Package**: de.medizininformatikinitiative.kerndatensatz.onkologie
**Version**: [VERSION]
**Status**: ✅ Published | ❌ Failed
**Method**: Web UI | Firely Terminal | Simplifier CLI

**URLs**:
- Package Registry: https://packages.simplifier.net/de.medizininformatikinitiative.kerndatensatz.onkologie
- Project Page: https://simplifier.net/MedizininformatikInitiative-ModulOnkologie/~packages

**Install Command**:
```bash
fhir install de.medizininformatikinitiative.kerndatensatz.onkologie@[VERSION]
```

**Next Steps**:
- [ ] Download published `.tgz` from Simplifier for GitHub release
- [ ] Create GitHub release: `/release-finalize`
- [ ] Update documentation with new version
- [ ] Notify team/community
```

---

## Important Notes

### Package Versioning
- Follow MII versioning scheme: `YYYY.0.0` (e.g., `2026.0.0`)
- Release candidates: `YYYY.0.0-rc.X` (e.g., `2026.0.0-rc.3`)
- Ballot versions: `YYYY.0.0-ballot`

### Publishing Rules
- ⚠️ **Published packages are PERMANENT** - cannot be unpublished
- Cannot overwrite existing versions - must increment
- Version in `.tgz` filename must match `package.json` version
- Use appropriate `releaseLabel` in `sushi-config.yaml`:
  - `ci-build` → Development/testing
  - `ballot` → Community review
  - `trial-use` → Release candidate
  - `release` → Production

### Package Contents Verification
Before publishing, verify the package contains:
- ✅ FHIR conformance resources (StructureDefinition, ValueSet, CodeSystem, etc.)
- ✅ Example instances in `examples/` subdirectory
- ✅ `package.json` with correct version
- ✅ `.index.json` package index
- ❌ NO source code (`.fsh` files)
- ❌ NO build artifacts (`.git/`, `.claude/`, etc.)

---

## Workflow Integration

This command is part of a larger workflow:

1. **Build package**: `/simplifier-build-package-mii` → Creates `.tgz` file
2. **Publish package**: `/publish-simplifier` → Uploads to Simplifier (THIS COMMAND)
3. **Finalize release**: `/release-finalize` → Tag and GitHub release

For the full MII release workflow (all phases), use `/release-simplifier` instead.

---

## Error Handling

### Package Not Found
If package file doesn't exist:
```
❌ Package file not found!

Expected: de.medizininformatikinitiative.kerndatensatz.onkologie-[VERSION].tgz

Please build the package first:
  /simplifier-build-package-mii
```

### Version Mismatch
If filename version doesn't match `package.json`:
```
⚠️ WARNING: Version mismatch detected!

Package filename: de.medizininformatikinitiative.kerndatensatz.onkologie-2026.0.0-rc.2.tgz
package.json version: 2026.0.0-rc.3

Please rebuild the package:
  /simplifier-build-package-mii
```

### Authentication Issues
If CLI authentication fails:
```
❌ Authentication failed

Please use Web UI method instead:
1. Visit https://simplifier.net/MedizininformatikInitiative-ModulOnkologie
2. Go to Packages tab
3. Upload de.medizininformatikinitiative.kerndatensatz.onkologie-[VERSION].tgz
```

---

## Command Execution Checklist

When this command is invoked, ALWAYS:
- ✅ Check what .tgz files exist in project root
- ✅ Show version from package.json
- ✅ Let user verify version matches filename
- ✅ Show package size and basic details
- ✅ Optionally verify package contents (with hardcoded filename example)
- ✅ Guide user through chosen publishing method
- ✅ Provide post-publication verification steps
- ✅ Provide next steps

**Note**: Use simple grep/ls commands instead of complex shell substitutions to avoid parsing errors.
