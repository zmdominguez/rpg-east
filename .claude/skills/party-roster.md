# /party-roster

Generate a current party status overview.

## Usage
```
/party-roster [campaign]
```

- `campaign`: "Main", "CrossBones", or "all" (default)

## Instructions

1. Read all character files from:
   - `Party/Main/` for main campaign
   - `Party/CrossBonesInc/` for Cross Bones campaign

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
