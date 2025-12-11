#!/usr/bin/env python3
"""
Validate .claude/config.yaml
Usage: python3 .claude/scripts/validate-config.py
"""

import sys
from pathlib import Path

try:
    import yaml
except ImportError:
    print("❌ Error: PyYAML is required but not installed")
    print("   Install: pip install pyyaml")
    sys.exit(1)

CONFIG_FILE = Path(".claude/config.yaml")
REQUIRED_VERSION = "1.0.0"

print("━" * 50)
print("Config Validation")
print("━" * 50)

# Check if config exists
if not CONFIG_FILE.exists():
    print(f"❌ Error: {CONFIG_FILE} not found")
    sys.exit(1)
print("✓ Config file exists")

# Load and validate YAML
try:
    with open(CONFIG_FILE, 'r') as f:
        config = yaml.safe_load(f)
except yaml.YAMLError as e:
    print(f"❌ Error: Invalid YAML syntax: {e}")
    sys.exit(1)
print("✓ Valid YAML syntax")

# Check config version
config_version = config.get('_meta', {}).get('version')
if config_version != REQUIRED_VERSION:
    print(f"⚠️  Warning: Config version is {config_version}, expected {REQUIRED_VERSION}")
else:
    print(f"✓ Config version: {config_version}")

# Validate required fields
required_fields = {
    "repository.name": lambda c: c.get('repository', {}).get('name'),
    "repository.owner": lambda c: c.get('repository', {}).get('owner'),
    "repository.package_id": lambda c: c.get('repository', {}).get('package_id'),
    "branches.main": lambda c: c.get('branches', {}).get('main'),
    "branches.development": lambda c: c.get('branches', {}).get('development'),
    "build.system": lambda c: c.get('build', {}).get('system'),
    "ci.workflow_name": lambda c: c.get('ci', {}).get('workflow_name'),
    "paths.release_notes": lambda c: c.get('paths', {}).get('release_notes'),
    "simplifier.project_url": lambda c: c.get('simplifier', {}).get('project_url'),
}

print("\nChecking required fields...")
missing_fields = []

for field_name, getter in required_fields.items():
    value = getter(config)
    if not value:
        print(f"❌ Missing: {field_name}")
        missing_fields.append(field_name)
    else:
        # Truncate long values for display
        display_value = str(value)[:60] + "..." if len(str(value)) > 60 else str(value)
        print(f"✓ {field_name}: {display_value}")

if missing_fields:
    print(f"\n❌ Validation failed: {len(missing_fields)} required field(s) missing")
    sys.exit(1)

print("\n" + "━" * 50)
print("✅ Config validation passed")
print("━" * 50)

# Print summary
print("\nSummary:")
print(f"  Repository: {config['repository']['name']}")
print(f"  Package ID: {config['repository']['package_id']}")
print(f"  Main branch: {config['branches']['main']}")
print(f"  Build system: {config['build']['system']}")
print(f"  Config version: {config_version}")
