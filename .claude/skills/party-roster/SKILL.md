---
name: party-roster
description: Generate a current party status table. Use for quick reference during session prep or when recapping who's in the campaign.
allowed-tools: Read Glob
model: claude-sonnet-4-6
arguments: campaign
---

# /party-roster

Generate a current party status overview.

## Usage
```
/party-roster [campaign]
```

- `campaign`: `$campaign` — "Main", "CrossBones", or "all" (default when empty)

## Instructions

1. Read all character files from:
   - `Party/Main/` for main campaign
   - `Party/CrossBonesInc/` for Cross Bones campaign
   - `Party/Extras/` for supporting/extra characters (include if `campaign` is "all")
   - `Party/Retired/` for retired characters (include only if explicitly requested)

2. Extract from each character's YAML front matter:
   - player
   - name
   - class (array)
   - species

3. Generate a formatted table:
```markdown
## Main Campaign Party

| Player | Character | Class | Species |
|--------|-----------|-------|---------|
| PlayerName | [[Character]] | Class1, Class2 | Species |

## Cross Bones Inc Party

| Player | Character | Class | Species |
|--------|-----------|-------|---------|
| ... | ... | ... | ... |
```

4. Optionally include:
   - Last session each character appeared in
   - Any notable equipment or items from their notes
   - Current status if mentioned

5. This is useful for quick reference during session prep
