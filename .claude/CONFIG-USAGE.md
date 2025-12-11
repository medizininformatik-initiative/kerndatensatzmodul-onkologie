# Using .claude/config.yaml in Slash Commands

This document explains how to use the `.claude/config.yaml` file in slash commands and scripts.

## Quick Start

The `config.yaml` file contains all repository-specific values. Instead of hardcoding values in commands, read them from this file.

## Reading Config Values

### Using `yq` (YAML query tool)

```bash
# Install yq (if not already installed)
brew install yq  # macOS
# or: pip install yq

# Read a simple value
REPO_NAME=$(yq '.repository.name' .claude/config.yaml)
PACKAGE_ID=$(yq '.repository.package_id' .claude/config.yaml)

# Read nested values
MAIN_BRANCH=$(yq '.branches.main' .claude/config.yaml)
DEV_BRANCH=$(yq '.branches.development' .claude/config.yaml)

# Read array values
VERSION_FILES=$(yq '.versioning.version_files[].path' .claude/config.yaml)
```

### Using `jq` with YAML conversion

```bash
# Convert YAML to JSON first, then query
cat .claude/config.yaml | yq -o json | jq -r '.repository.name'
```

### Using Python

```python
import yaml

with open('.claude/config.yaml', 'r') as f:
    config = yaml.safe_load(f)

repo_name = config['repository']['name']
package_id = config['repository']['package_id']
main_branch = config['branches']['main']
```

## Common Use Cases

### 1. Build Package Command

**Before (hardcoded)**:
```bash
tar -czf ../de.medizininformatikinitiative.kerndatensatz.onkologie-${VERSION}.tgz package/
```

**After (using config)**:
```bash
PACKAGE_ID=$(yq '.repository.package_id' .claude/config.yaml)
VERSION=$(yq '.version' sushi-config.yaml)
tar -czf ../${PACKAGE_ID}-${VERSION}.tgz package/
```

### 2. GitHub PR Creation

**Before (hardcoded)**:
```bash
gh pr create \
  --repo medizininformatik-initiative/kerndatensatzmodul-onkologie \
  --base main
```

**After (using config)**:
```bash
OWNER=$(yq '.repository.owner' .claude/config.yaml)
REPO=$(yq '.repository.name' .claude/config.yaml)
MAIN_BRANCH=$(yq '.branches.main' .claude/config.yaml)

gh pr create \
  --repo "${OWNER}/${REPO}" \
  --base "${MAIN_BRANCH}"
```

### 3. Release Branch Creation

**Before (hardcoded)**:
```bash
git checkout -b "release/v${VERSION}"
```

**After (using config)**:
```bash
DEV_BRANCH=$(yq '.branches.development' .claude/config.yaml)
RELEASE_PREFIX=$(yq '.branches.release_prefix' .claude/config.yaml)

git checkout "${DEV_BRANCH}"
git pull origin "${DEV_BRANCH}"
git checkout -b "${RELEASE_PREFIX}${VERSION}"
```

### 4. CI Validation Workflow

**Before (hardcoded)**:
```bash
gh run list --workflow="CI (FHIR Validation)" --limit=1
```

**After (using config)**:
```bash
WORKFLOW=$(yq '.ci.workflow_name' .claude/config.yaml)
OWNER=$(yq '.repository.owner' .claude/config.yaml)
REPO=$(yq '.repository.name' .claude/config.yaml)

gh run list \
  --workflow="${WORKFLOW}" \
  --repo="${OWNER}/${REPO}" \
  --limit=1
```

### 5. Version File Updates

**Before (manual list)**:
```bash
# Update package.json
# Update sushi-config.yaml
# Update version.fsh
# Update qc/custom.rules.yaml
```

**After (loop through config)**:
```bash
VERSION_FILES=$(yq '.versioning.version_files[].path' .claude/config.yaml)

for file in $VERSION_FILES; do
  echo "Updating version in: $file"
  # Update logic here
done
```

## Configuration Sections

### Repository Information
```yaml
repository:
  name: "kerndatensatzmodul-onkologie"
  owner: "medizininformatik-initiative"
  package_id: "de.medizininformatikinitiative.kerndatensatz.onkologie"
```
**Use for**: Git operations, package building, publishing

### Branches
```yaml
branches:
  main: "main"
  development: "dev"
```
**Use for**: Git checkout, PR creation, release workflows

### Build Configuration
```yaml
build:
  system: "firely-bake"
  sushi_command: "sushi ."
  bake_config: "package.bake.yaml"
```
**Use for**: Package building, CI/CD scripts

### Paths
```yaml
paths:
  release_notes: "implementation-guides/.../Release-Notes.page.md"
  fsh_source: "input/fsh"
```
**Use for**: File operations, documentation updates

### Simplifier
```yaml
simplifier:
  project_url: "https://simplifier.net/..."
  package_registry: "https://packages.simplifier.net/..."
```
**Use for**: Publishing, release announcements

## Validation

To validate your config file:

```bash
# Check YAML syntax
yq '.' .claude/config.yaml > /dev/null && echo "✓ Valid YAML"

# Check required keys exist
yq '.repository.name' .claude/config.yaml && echo "✓ Repository name found"
yq '.branches.main' .claude/config.yaml && echo "✓ Main branch found"
```

## Best Practices

1. **Always read from config**: Don't hardcode repo-specific values
2. **Provide defaults**: Use `${VAR:-default}` for optional values
3. **Validate inputs**: Check that config values are not empty
4. **Document usage**: Comment which config values are used in each command

## Example: Complete Command Template

```bash
#!/bin/bash
# Example slash command using config.yaml

set -e  # Exit on error

# Load configuration
CONFIG_FILE=".claude/config.yaml"

if [[ ! -f "$CONFIG_FILE" ]]; then
  echo "Error: $CONFIG_FILE not found"
  exit 1
fi

# Read config values
REPO_NAME=$(yq '.repository.name' "$CONFIG_FILE")
PACKAGE_ID=$(yq '.repository.package_id' "$CONFIG_FILE")
MAIN_BRANCH=$(yq '.branches.main' "$CONFIG_FILE")
DEV_BRANCH=$(yq '.branches.development' "$CONFIG_FILE")

# Validate required values
if [[ -z "$REPO_NAME" ]]; then
  echo "Error: repository.name not found in config"
  exit 1
fi

# Use config values
echo "Working on repository: $REPO_NAME"
echo "Package ID: $PACKAGE_ID"
echo "Main branch: $MAIN_BRANCH"

# ... rest of command logic ...
```

## Sharing Commands Across Repos

With this config file approach, the same command can work across multiple MII modules:

1. **Copy the command** to another repo (e.g., GenetischeTests)
2. **Update `.claude/config.yaml`** with repo-specific values
3. **No command changes needed** - it reads from config automatically

This enables:
- ✅ Centralized command logic
- ✅ Versioning of shared commands
- ✅ Easy updates across all repos
- ✅ Consistency across MII modules

## Next Steps

See `CLAUDE.md` for:
- Complete workflow documentation
- Naming conventions
- Release management processes
- Validation workflows

For centralizing commands across all MII repos, see the proposal in `CLAUDE.md` section "Centralized Slash Commands".
