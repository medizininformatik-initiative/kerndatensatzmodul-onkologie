#!/usr/bin/env python3
"""
Add MetaProfile insert to FSH example files that are missing it.
Uses actual profile IDs from the profile definition files.
"""
import re
from pathlib import Path

BASE_DIR = Path("/Users/thome/code/fhir-profiling/kerndatensatzmodul-onkologie/input/fsh")
CANONICAL_BASE = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/"

def build_profile_id_map():
    """Build a mapping from Profile names to their actual IDs."""
    profile_map = {}

    for fsh_file in BASE_DIR.rglob("mii-pr-*.fsh"):
        content = fsh_file.read_text()

        # Find Profile: Name and Id: value pairs
        profile_match = re.search(r'Profile:\s*(\S+)', content)
        id_match = re.search(r'Id:\s*(\S+)', content)

        if profile_match and id_match:
            profile_name = profile_match.group(1)
            profile_id = id_match.group(1)
            profile_map[profile_name] = profile_id
            # Also map lowercase/normalized versions
            profile_map[profile_name.lower().replace('_', '-')] = profile_id

    return profile_map

def process_file(filepath, profile_map):
    """Process a single FSH file and fix/add MetaProfile where needed."""
    with open(filepath, 'r') as f:
        content = f.read()

    original_content = content
    modified = False

    # First, remove ALL existing MetaProfile lines to start fresh
    if 'insert MetaProfile(' in content:
        content = re.sub(r'\* insert MetaProfile\([^)]+\)\n', '', content)
        modified = True

    # Pattern to match instance header including optional Title/Description
    # and find the first * rule line
    pattern = r'(Instance:\s*(\S+)\s*\nInstanceOf:\s*(\S+)\s*\nUsage:\s*#example(?:\nTitle:[^\n]*)?(?:\nDescription:[^\n]*)?\n)(\* )'

    def replace_func(match):
        header = match.group(1)
        instance_name = match.group(2)
        instance_of = match.group(3)
        first_rule = match.group(4)

        # Only process onko profiles
        if not (instance_of.startswith('mii-pr-onko') or instance_of.startswith('MII_PR_Onko')):
            return match.group(0)

        # Look up actual profile ID
        profile_id = None

        # Try direct lookup
        if instance_of in profile_map:
            profile_id = profile_map[instance_of]
        else:
            # Try normalized lookup
            normalized = instance_of.lower().replace('_', '-')
            if normalized in profile_map:
                profile_id = profile_map[normalized]
            else:
                # Fall back to normalized name (for profiles not yet in the map)
                profile_id = normalized

        canonical = f"{CANONICAL_BASE}{profile_id}"
        insert_line = f"* insert MetaProfile({canonical})"

        return f"{header}{insert_line}\n{first_rule}"

    new_content = re.sub(pattern, replace_func, content)

    if new_content != original_content:
        with open(filepath, 'w') as f:
            f.write(new_content)
        return True
    return False

def main():
    print("Building profile ID map...")
    profile_map = build_profile_id_map()
    print(f"Found {len(profile_map)} profile mappings")

    # Print some examples
    print("\nSample mappings:")
    for name, pid in list(profile_map.items())[:5]:
        print(f"  {name} -> {pid}")

    print("\nProcessing example files...")
    count = 0
    for fsh_file in BASE_DIR.rglob("mii-exa-*.fsh"):
        if process_file(fsh_file, profile_map):
            print(f"Updated: {fsh_file}")
            count += 1
    print(f"\nTotal files updated: {count}")

if __name__ == "__main__":
    main()
