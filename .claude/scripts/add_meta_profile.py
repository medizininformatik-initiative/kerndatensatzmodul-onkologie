#!/usr/bin/env python3
"""
Add MetaProfile insert to FSH example files that are missing it.
Handles files with Title: and Description: after Usage: #example
"""
import re
from pathlib import Path

BASE_DIR = Path("/Users/thome/code/fhir-profiling/kerndatensatzmodul-onkologie/input/fsh")
CANONICAL_BASE = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/"

def process_file(filepath):
    """Process a single FSH file and fix/add MetaProfile where needed."""
    with open(filepath, 'r') as f:
        content = f.read()

    modified = False

    # First, remove any wrongly placed MetaProfile lines (before Title/Description)
    if re.search(r'\* insert MetaProfile\([^)]+\)\nTitle:', content):
        content = re.sub(r'\* insert MetaProfile\([^)]+\)\n(?=Title:|Description:)', '', content)
        modified = True

    # Pattern to match instance header including optional Title/Description
    # and find the first * rule line
    # We need to insert MetaProfile BEFORE the first * line

    pattern = r'(Instance:\s*(\S+)\s*\nInstanceOf:\s*(\S+)\s*\nUsage:\s*#example(?:\nTitle:[^\n]*)?(?:\nDescription:[^\n]*)?\n)(\* (?!insert MetaProfile))'

    def replace_func(match):
        header = match.group(1)
        instance_name = match.group(2)
        instance_of = match.group(3)
        first_rule = match.group(4)

        # Only process onko profiles
        if not (instance_of.startswith('mii-pr-onko') or instance_of.startswith('MII_PR_Onko')):
            return match.group(0)

        # Normalize profile id
        profile_id = instance_of
        if instance_of.startswith('MII_PR_Onko'):
            profile_id = instance_of.lower().replace('_', '-')

        canonical = f"{CANONICAL_BASE}{profile_id}"
        insert_line = f"* insert MetaProfile({canonical})"

        return f"{header}{insert_line}\n{first_rule}"

    new_content = re.sub(pattern, replace_func, content)

    if new_content != content:
        with open(filepath, 'w') as f:
            f.write(new_content)
        return True
    return modified

def main():
    count = 0
    for fsh_file in BASE_DIR.rglob("mii-exa-*.fsh"):
        if process_file(fsh_file):
            print(f"Updated: {fsh_file}")
            count += 1
    print(f"\nTotal files updated: {count}")

if __name__ == "__main__":
    main()
