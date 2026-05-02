---
paths:
  - "ClaudeBook/**"
---

ClaudeBook files are published narrative chapters for the East RPG web site. Follow these conventions when creating or editing them.

## Critical: No YAML Frontmatter
ClaudeBook files do NOT have YAML frontmatter. Start directly with the `#` heading.

## File Structure
```markdown
# Chapter Title

---

[Narrative prose — 300–500 words]

---

*Based on the events of [[S## Session Title]]*

---

[[Previous Chapter Title|← Prev Chapter Title]] | [[00 Index|Back to Index]] | [[Next Chapter Title|Next Chapter Title →]]
```

## Writing Style
- **Voice**: Third-person past tense ("The party arrived...", "Mirr reached for...")
- **Length**: 300–500 words per chapter
- **Links**: Preserve `[[wiki-links]]` to characters, locations, and items throughout
- **Tone**: Narrative fiction — show don't tell, include sensory details, maintain dramatic tension
- **Structure**: Opening (scene-setting) → Rising action → Closing (cliffhanger or resolution)

## What to Include
- Key events and decisions the party made
- Important NPC introductions with brief characterization
- Location atmosphere and world details
- Cliffhangers or unresolved tensions at chapter end

## What to Exclude
- DM-only information or meta-game details
- Dice rolls or game mechanics
- Out-of-character moments
- Session admin (scheduling, rules questions)

## Navigation Footer
Always ask for or determine:
- Previous chapter title (for `← Prev` link)
- Next chapter title (for `Next →` link, use placeholder if writing ahead)
- Index file is always `[[00 Index]]`
