---
name: validate-links
description: Check for broken wiki-links across the vault. Use before committing or publishing to catch missing file references.
allowed-tools: Read Glob Grep Bash
model: claude-sonnet-4-6
arguments: directory
---

# /validate-links

Check for broken wiki-links across the vault.

## Usage
```
/validate-links [directory]
```

- `directory`: `$directory` — limit scope if non-empty, otherwise check entire vault

## Instructions

1. First, try the Obsidian CLI for a fast vault-aware check:
```bash
obsidian unresolved
```
If Obsidian is running, this returns all broken links natively. Report those results directly.

2. If Obsidian CLI is unavailable (not running), fall back to manual scan:
   - Search all markdown files for wiki-link patterns: `[[Link Name]]`
   - For each link check if a corresponding file exists:
     - Direct match: `[[Name]]` → `Name.md` anywhere in vault
     - Path match: `[[Folder/Name]]` → `Folder/Name.md`
   - Exclude: links inside code blocks, links in `z_Templates/`, external URLs

3. Report findings:
```markdown
## Broken Links Report

### Missing Files
- `[[Unknown NPC]]` referenced in:
  - Campaign Journal/Main/S04 Finding Pipe.md (line 45)

### Suggestions
- `[[Veiled Peak]]` might be `[[Veiled Peaks]]` (typo?)

## Summary
- Total broken links: X
```

4. Offer to create stub files for any missing entries if the user wants
