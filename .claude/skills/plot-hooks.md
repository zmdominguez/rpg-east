# /plot-hooks

Extract and compile all unresolved plot hooks and mysteries from session notes.

## Usage
```
/plot-hooks
```

## Instructions

1. Search all files in `Campaign Journal/` for the pattern `[question:: ...]`

2. Also look for:
   - Unanswered questions in session notes
   - Cliffhangers at session endings
   - Mysteries mentioned in Key Learnings sections
   - NPCs with unresolved storylines

3. Compile results into a structured list organized by:
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
