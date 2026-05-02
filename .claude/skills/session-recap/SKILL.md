---
name: session-recap
description: Generate a player-facing "Previously on..." recap from a session note. Use at the start of a session to remind players what happened last time.
argument-hint: [session_file]
allowed-tools: Read Glob
model: claude-sonnet-4-6
---

# /session-recap

Generate a short player-facing recap of the last session.

## Usage
```
/session-recap [session_file]
```

## Instructions

1. If no session file provided, find the most recent session note:
   - List files in `Campaign Journal/Main/`, `Campaign Journal/Cross Bone Inc/`, `Campaign Journal/One Shot/`
   - Pick the highest-numbered file (e.g. S04 > S03)

2. Read the session note file

3. Generate a 100–200 word "Previously on East RPG..." recap that:
   - Uses third person ("The party...", "Our heroes...")
   - Covers the key events in chronological order
   - Names important NPCs met with `[[wiki-links]]`
   - Notes any discoveries or decisions made
   - Ends with the cliffhanger or current situation
   - Omits DM-only secrets or foreshadowing

4. Output format:
```markdown
## Previously on East RPG...

[Recap text in flowing prose, 100–200 words]

---
**When we last left our heroes:** [One punchy sentence cliffhanger]
```

5. This is designed to be read aloud at the start of the next session.
