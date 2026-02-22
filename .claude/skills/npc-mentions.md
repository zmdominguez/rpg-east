# /npc-mentions

Find all mentions of an NPC across the vault.

## Usage
```
/npc-mentions [npc_name]
```

## Instructions

1. If no NPC name provided, list available NPCs from `NPCs/` folder and ask which to search

2. Search for the NPC name across:
   - All session notes in `Campaign Journal/`
   - Other NPC files in `NPCs/`
   - World locations in `World/`
   - Party character notes in `Party/`
   - ClaudeBook narratives

3. For each mention, extract:
   - File name and path
   - Line number
   - Context (the sentence or bullet point containing the mention)

4. Output format:
```markdown
## [[NPC Name]] - Mentions Report

### Session Appearances
- **S04 Finding Pipe** (line 67): "Met [[Eman]] at [[TownHall]] at 10am"
- **S03 ...** (line 23): "..."

### Related NPCs
- **Other NPC.md** (line 5): References connection to...

### World Locations
- **TownHall.md** (line 3): Listed as key NPC

### Summary
- First appeared: S02
- Total mentions: X
- Key relationships: [[NPC1]], [[NPC2]]
```

5. This helps track NPC story arcs and ensure consistent characterization
