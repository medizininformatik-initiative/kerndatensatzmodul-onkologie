#!/bin/bash
# Validate .claude/config.yaml
# Usage: bash .claude/scripts/validate-config.sh

set -e

CONFIG_FILE=".claude/config.yaml"
REQUIRED_VERSION="1.0.0"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Config Validation"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Check if config exists
if [[ ! -f "$CONFIG_FILE" ]]; then
  echo "❌ Error: $CONFIG_FILE not found"
  exit 1
fi
echo "✓ Config file exists"

# Check if yq is installed
if ! command -v yq &> /dev/null; then
  echo "❌ Error: yq is required but not installed"
  echo "   Install: brew install yq"
  exit 1
fi
echo "✓ yq is installed"

# Validate YAML syntax
if ! yq '.' "$CONFIG_FILE" > /dev/null 2>&1; then
  echo "❌ Error: Invalid YAML syntax"
  exit 1
fi
echo "✓ Valid YAML syntax"

# Check config version
CONFIG_VERSION=$(yq '._meta.version' "$CONFIG_FILE")
if [[ "$CONFIG_VERSION" != "$REQUIRED_VERSION" ]]; then
  echo "⚠️  Warning: Config version is $CONFIG_VERSION, expected $REQUIRED_VERSION"
else
  echo "✓ Config version: $CONFIG_VERSION"
fi

# Validate required fields
REQUIRED_FIELDS=(
  ".repository.name"
  ".repository.owner"
  ".repository.package_id"
  ".branches.main"
  ".branches.development"
  ".build.system"
  ".ci.workflow_name"
  ".paths.release_notes"
  ".simplifier.project_url"
)

echo ""
echo "Checking required fields..."
MISSING_FIELDS=()

for field in "${REQUIRED_FIELDS[@]}"; do
  value=$(yq "$field" "$CONFIG_FILE")
  if [[ -z "$value" || "$value" == "null" ]]; then
    echo "❌ Missing: $field"
    MISSING_FIELDS+=("$field")
  else
    echo "✓ $field: $value"
  fi
done

if [[ ${#MISSING_FIELDS[@]} -gt 0 ]]; then
  echo ""
  echo "❌ Validation failed: ${#MISSING_FIELDS[@]} required field(s) missing"
  exit 1
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Config validation passed"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
