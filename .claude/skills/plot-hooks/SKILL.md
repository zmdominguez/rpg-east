---
name: plot-hooks
description: Extract unresolved plot hooks and mysteries from session notes. Use to track open storylines and ensure nothing is forgotten.
allowed-tools: Read Glob Grep
model: claude-sonnet-4-6
---

# /plot-hooks

Extract and compile all unresolved plot hooks and mysteries from session notes.

## Usage
```
/plot-hooks
```

## Instructions

1. Search for the pattern `[question:: ...]` across:
   - All files in `Campaign Journal/`
   - All NPC files in `World/NPCs/`
   - All Party files in `Party/`

2. Also look for:
   - Unanswered questions in session notes
   - Cliffhangers at session endings (especially the last bullet in Session Notes sections)
   - Mysteries mentioned in Key Learnings sections
   - NPCs with unresolved storylines (status: Missing, Unknown)

3. Compile results into a structured list organized by:
   - Campaign (Main / Cross Bones / One Shot)
   - Session where introduced
   - Related NPCs/Locations
   - Status (if appears resolved in later sessions)

4. Output format:
```markdown
## Open Plot Hooks

### From S04 Finding Pipe
- **Who is in Venn's cabin?** - Related: [[Venn]], [[Veiled Peaks]]
- **What does the white wolf want?** - Related: [[Veiled Peaks]]

### From S03 ...
- ...

## Potentially Resolved
- [Hook] - Possibly resolved in [Session] when [event]
```

5. This helps the DM track storylines and ensures nothing is forgotten
