# Release Management Slash Commands

This directory contains slash commands for managing MII Onkologie module releases following the official [MII Module Release Workflow](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Module-Release-Workflow).

## Available Commands

### `/release-prepare [VERSION]`

**Purpose**: Automate phases 1-3 of the release workflow

**What it does**:
- Creates release branch `release/v{VERSION}` from dev
- Updates version in all required files (package.json, sushi-config.yaml, qc/custom.rules.yaml)
- Generates draft release notes from git history
- Creates TODO checklist for tracking remaining phases
- Commits all changes atomically

**Usage**:
```bash
/release-prepare 2026.0.0-rc.2
```

**When to use**: At the start of a new release cycle, when you want to prepare a release candidate or final release.

---

### `/release-status`

**Purpose**: Check current release preparation status

**What it does**:
- Shows current git branch and status
- Checks version consistency across all files
- Displays release workflow phase checklist
- Recommends next actions

**Usage**:
```bash
/release-status
```

**When to use**: Anytime you want to know where you are in the release process.

---

### `/release-finalize`

**Purpose**: Execute phase 5 (merge and tag) of the release workflow

**What it does**:
- Switches to main branch and pulls latest
- Creates release tag `v{VERSION}`
- Pushes tag to trigger GitHub Actions
- Provides instructions for remaining manual steps

**Usage**:
```bash
/release-finalize
```

**When to use**: After PR has been merged to main and CI has passed.

---

## Complete Release Workflow

```
1. /release-prepare 2026.0.0-rc.2    ← Phases 1-3 (automated)
2. Create PR on GitHub                ← Phase 4 (manual)
3. Wait for CI validation             ← Phase 4 (manual)
4. Review and merge PR                ← Phase 4 (manual)
5. /release-finalize                  ← Phase 5 (semi-automated)
6. Publish to Simplifier              ← Phase 6 (manual)
7. Finalize GitHub release            ← Phase 7 (manual)
8. Export IG to SharePoint            ← Phase 8 (manual)
```

Use `/release-status` at any point to check progress.

---

## File Structure

```
.claude/
  commands/
    release-prepare.md    # Phase 1-3 automation
    release-status.md     # Status checking
    release-finalize.md   # Phase 5 automation
    README.md            # This file
```

## Tips

- Always run `/release-status` before starting to understand current state
- The VERSION format should be `YYYY.0.0`, `YYYY.0.0-rc.X`, or `YYYY.0.0-ballot`
- Keep release branch names consistent: `release/v{VERSION}`
- Commit messages for version updates should follow: `chore: Prepare release v{VERSION}`
- Release tags should follow: `v{VERSION}`

## Customization

To modify these commands, edit the corresponding `.md` files. The commands are prompts that will be executed by Claude Code when invoked.
