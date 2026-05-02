# RPG-East Campaign Vault
This is an Obsidian vault for managing a tabletop RPG campaign called "East RPG."

## Project Type
- Obsidian knowledge management vault
- Collaborative D&D-style campaign documentation

## Technologies
- Obsidian with Dataview, Templater, and IQ plugins
- Markdown files with YAML front matter
- CSS for custom styling

## Structure
- `Party/Main/` - Main campaign player characters
- `Party/CrossBonesInc/` - Cross Bones campaign characters
- `Party/Extras/` - Supporting/extra characters
- `Party/Retired/` - Retired characters
- `Campaign Journal/Main/` - S## session notes (main campaign)
- `Campaign Journal/Cross Bone Inc/` - X## session notes
- `Campaign Journal/One Shot/` - O## session notes
- `World/NPCs/` - Non-player characters
- `World/Locations/` - Locations organized by region
- `World/Timeline.md` - Major world history
- `Items/` - Magical items and resources
- `ClaudeBook/` - Narrative chapters for web publishing (no YAML frontmatter)
- `z_Templates/` - Reusable Obsidian templates

## ClaudeBook Format
ClaudeBook files are plain narrative markdown with **no YAML frontmatter**. Structure:
```markdown
# Chapter Title

---

[Narrative prose with [[wiki-links]]]

---

*Based on the events of [[S## Session Title]]*

---

[[Previous Chapter|← Prev]] | [[00 Index|Back to Index]] | [[Next Chapter|Next →]]
```

## Key Conventions
- Wiki-links: `[[Name]]` for cross-references
- YAML front matter on all content files
- Dataview Serializer markers: `<!-- QueryToSerialize: <query> -->`
- Plot hooks syntax: `[question:: Question text]`

## Available Skills
- `/new-session` - Create session note from template
- `/new-npc` - Create NPC with full template
- `/summarize-session` - Convert session to ClaudeBook narrative
- `/plot-hooks` - Extract unresolved mysteries across vault
- `/validate-links` - Check for broken wiki-links (uses Obsidian CLI when available)
- `/party-roster` - Generate party status table (Main/CrossBones/Extras/Retired)
- `/npc-mentions` - Find all references to an NPC
- `/world-entry` - Create new location
- `/update-timeline` - Add major events to `World/Timeline.md`
- `/dm-prep` - Pre-session DM briefing (hooks + NPCs + party + location)
- `/session-recap` - Player-facing "Previously on..." recap
- `/location-info` - Find all sessions and NPCs related to a location

## Available Agents
- `vault-researcher` - Fast read-only vault search (used as subagent by skills)
- `dm-assistant` - Comprehensive DM assistant for complex multi-step campaign tasks

## Timeline
The file `World/Timeline.md` tracks major world history. When significant events occur (wars, political changes, discoveries), suggest updating the timeline. Individual session details don't belong there - only world-changing events.

## Campaign
- DM: Canato
- Schedule: Mondays 6pm
- Location: Kingsford NSW

## Obsidian CLI

The vault supports Obsidian CLI (requires Obsidian 1.12.4+ running in background).

**Enable CLI**: Obsidian Settings → General → Command line interface → Register CLI

### Useful Commands for This Vault

```bash
# File operations
obsidian files                              # List all notes
obsidian files folder=NPCs                  # List NPCs
obsidian read file="Character Name"         # Read a note
obsidian create name="New NPC" template="NPC Template"  # Create from template

# Daily notes / Session prep
obsidian daily                              # Open today's note
obsidian daily:append content="- [ ] Task"  # Add task to daily

# Search
obsidian search query="dragon"              # Full-text search
obsidian search query="[tag:npc]"           # Search by tag
obsidian backlinks file="Scarsith"          # Find references to an NPC

# Metadata
obsidian properties file="S01"              # Read YAML frontmatter
obsidian properties:set file="NPC" status=active  # Update property

# Link health
obsidian unresolved                         # Find broken wiki-links
obsidian orphans                            # Notes with no links

# TUI mode
obsidian                                    # Launch interactive terminal browser
```

### Claude Usage Guidelines
- Use CLI for quick reads/searches when Obsidian is running
- Prefer CLI `obsidian search` over grep for vault-aware searches
- Use `obsidian unresolved` to validate links before commits
- CLI requires Obsidian desktop app running in background

## Pre-Push Validation (REQUIRED)

**Before pushing any changes to origin, Claude MUST run validation:**

```bash
bash scripts/validate.sh
```

### If Validation Fails

1. Fix all reported errors before committing
2. Re-run `bash scripts/validate.sh` to confirm fixes
3. Only push when validation passes

### CI/CD

GitHub Actions automatically runs validation on all PRs to `main`. PRs with validation errors cannot be merged.
