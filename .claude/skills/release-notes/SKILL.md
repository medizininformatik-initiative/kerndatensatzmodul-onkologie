# Release Notes Skill for MII Onkologie

This skill provides guidance for creating and updating release notes for the MII Onkologie Implementation Guide.

## When to Use This Skill

Use this skill when:
- Preparing a new release
- Updating release notes with recent changes
- Categorizing commits for changelog
- Writing ballot resolution summaries

---

## Release Notes Location

**Primary location**: `implementation-guides/ImplementationGuide-2026.x-DE/MIIIGModulOnkologie/Release-Notes.page.md`

This is the **single source of truth** for release notes. Content from here should be copied to `package.json` description for Simplifier registry visibility.

---

## Release Notes Format (German)

```markdown
## Änderungen finale Version v2026.0.0 (noch nicht veröffentlicht)

### Breaking Changes
- **`BREAKING`** Description of breaking change...

### Neue Profile und Funktionalität
- `feat` Description of new feature...

### Refaktorierungen
- `refactor` Description of refactoring...

### Validierung und Qualitätsverbesserungen
- `fix` Description of validation fix...

### Display-Namen und Terminologie-Korrekturen
- `fix` Description of display name correction...

### oBDS-Mapping Verbesserungen
- `fix` Description of oBDS mapping addition...

### Beispieldaten-Korrekturen
- `fix` Description of example correction...

### Technische Verbesserungen
- `chore` Description of technical improvement...

### Weitere Verbesserungen
- `improve` Description of improvement...
- `documentation` Description of documentation change...

---

## Änderungen seit Ballot-Version v2026.0.0-ballot

[Full changelog from ballot version]
```

---

## Commit Categorization Rules

Map commit prefixes to release note categories:

| Commit Prefix | Release Note Category |
|---------------|----------------------|
| `BREAKING` | Breaking Changes |
| `feat` | Neue Profile und Funktionalität |
| `refactor` | Refaktorierungen |
| `fix` (validation) | Validierung und Qualitätsverbesserungen |
| `fix` (display/terminology) | Display-Namen und Terminologie-Korrekturen |
| `fix` (oBDS) | oBDS-Mapping Verbesserungen |
| `fix` (examples) | Beispieldaten-Korrekturen |
| `chore` | Technische Verbesserungen |
| `improve`, `docs` | Weitere Verbesserungen |

---

## Entry Format

Standard format for release note entries:

```markdown
- `<type>` Description with context. [[HDB-XXX](https://hl7germany.atlassian.net/browse/HDB-XXX), [#YYY](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/YYY)]
```

### Examples

```markdown
- `feat` Neues Profil für Mamma-spezifische Datenelemente hinzugefügt. [[HDB-123](https://hl7germany.atlassian.net/browse/HDB-123)]
- `fix` ICD-O-3 Display-Namen korrigiert entsprechend Terminologie-Server. [#45](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/45)
- **`BREAKING`** TNM-Klassifikation Profil umstrukturiert - T/N/M jetzt als separate Observations.
```

---

## Workflow: Updating Release Notes

### Step 1: Find Reference Point

```bash
# List recent tags
git tag --list --sort=-creatordate | head -10
```

### Step 2: List Commits Since Reference

```bash
# Get commits since ballot tag
git log --format="%s" v2026.0.0-ballot..HEAD | grep -v "^\[GEN\]" | grep -v "^auto-generated" | grep -v "^Merge"
```

### Step 3: Categorize and Add Entries

1. Read current release notes
2. Compare commit list with existing entries
3. Add missing entries in appropriate categories
4. Update version header if needed

### Step 4: Sync to package.json

For Simplifier registry visibility, copy a summary to `package.json` description:

```json
{
  "description": "# MII Onkologie 2026.0.0\n\n[Full Release Notes](https://simplifier.net/guide/MII-IG-Onkologie-DE-v2026/MIIIGModulOnkologie/Release-Notes)\n\n## Summary\n- Key change 1\n- Key change 2"
}
```

---

## Version Scheme

Follow MII versioning:

| Type | Format | Example |
|------|--------|---------|
| Release | `YYYY.0.0` | `2026.0.0` |
| Release Candidate | `YYYY.0.0-rc.X` | `2026.0.0-rc.1` |
| Ballot | `YYYY.0.0-ballot` | `2026.0.0-ballot` |
| CI Build | `YYYY.0.0-ci-build` | `2026.0.0-ci-build` |

---

## Ballot Resolution Documentation

For ballot comments, create a resolution section:

```markdown
## Ballot-Kommentar Auflösungen

### Kommentar #1: [Title]
**Kategorie**: Major/Minor/Enhancement
**Status**: Akzeptiert / Abgelehnt / Zurückgestellt

**Kommentar**: [Original comment text]

**Auflösung**: [How it was resolved]

**Änderungen**:
- [List of changes made]
- Commit: abc123f

---
```

### Resolution Status Options

- **Akzeptiert**: Change will be made
- **Akzeptiert mit Anpassung**: Similar change will be made
- **Abgelehnt**: Change will not be made (with justification)
- **Zurückgestellt**: Postponed to future version
- **Duplikat**: Already addressed by another comment
- **Nicht zutreffend**: Comment not relevant to this IG

---

## Quick Commands

```bash
# Update release notes (slash command)
/update-release-notes

# Prepare a new release
/release-prepare 2026.0.0

# Check release status
/release-status
```

---

## Best Practices

1. **Write in German** for user-facing release notes
2. **Reference issues/tickets** where applicable
3. **Be specific** about what changed and why
4. **Group related changes** under a single entry
5. **Highlight breaking changes** prominently
6. **Update immediately** after significant changes (don't batch)
7. **Keep the single source of truth** in the IG release notes page
