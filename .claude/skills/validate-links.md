# /validate-links

Check for broken wiki-links across the vault.

## Usage
```
/validate-links [directory]
```

- `directory`: Optional, defaults to checking entire vault

## Instructions

1. Scan all markdown files for wiki-link patterns: `[[Link Name]]`

2. For each link found, check if a corresponding file exists:
   - Direct match: `[[Name]]` -> `Name.md` anywhere in vault
   - Path match: `[[Folder/Name]]` -> `Folder/Name.md`

3. Report findings:
```markdown
## Broken Links Report

### Missing Files
- `[[Unknown NPC]]` referenced in:
  - Campaign Journal/Main/S04 Finding Pipe.md (line 45)
  - NPCs/Other Character.md (line 12)

### Suggestions
- `[[Veiled Peak]]` might be `[[Veiled Peaks]]` (typo?)

## Summary
- Total links checked: X
- Valid links: Y
- Broken links: Z
```

4. Exclude checking:
   - Links inside code blocks
   - Links in templates (`z_Templates/`)
   - External URLs

5. Offer to create stub files for any missing entries if the user wants
