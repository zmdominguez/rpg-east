---
name: summarize-session
description: Convert a session note into narrative prose for ClaudeBook web publishing. Use after each session to create the story chapter.
allowed-tools: Read Write Glob
model: claude-sonnet-4-6
arguments: session_file
---

# /summarize-session

Convert a detailed session note into a narrative summary for the ClaudeBook (web publishing).

## Usage
```
/summarize-session [session_file]
```

## Instructions

1. Session to summarize: `$session_file` — use if non-empty; otherwise list available sessions from `Campaign Journal/` and ask

2. Read the session note file

3. Read the writing style guide at `${CLAUDE_SKILL_DIR}/style-guide.md`

4. Generate a narrative prose summary that:
   - Converts bullet points into flowing paragraphs
   - Maintains the story arc and key plot points
   - Highlights important NPCs met and their significance
   - Preserves wiki-links to characters, locations, and items
   - Keeps the dramatic tension and atmosphere
   - Is suitable for players and readers who weren't at the session

4. Structure the summary as:
   - Opening paragraph setting the scene
   - Main narrative covering the session events
   - Closing paragraph with cliffhangers or open questions

5. Save to `ClaudeBook/[## Title].md` using this structure:

```markdown
# [Chapter Title]

---

[Narrative prose...]

---

*Based on the events of [[S## Session Title]]*

---

[[Previous Chapter|← Prev Chapter Title]] | [[00 Index|Back to Index]] | [[Next Chapter|Next Chapter Title →]]
```

   - No YAML frontmatter (ClaudeBook files use plain markdown)
   - Ask the user for the previous and next chapter titles for navigation links
   - If unknown, use placeholder text

6. The tone should be:
   - Third-person narrative
   - Past tense
   - Engaging and readable
   - About 300-500 words typically
