# RPG-East Campaign Vault
This is an Obsidian vault for managing a tabletop RPG campaign called "East RPG."

## Project Type
- Obsidian knowledge management vault
- Collaborative D&D-style campaign documentation

## Technologies
- Obsidian with Dataview plugin
- Markdown files with YAML front matter
- CSS for custom styling

## Structure
- `Party/` - Player characters (Main campaign, CrossBonesInc)
- `Campaign Journal/` - Session notes (S## main, X## Cross Bones, O## one-shots)
- `NPCs/` - Non-player characters
- `World/` - Locations and world-building
- `Items/` - Magical items and resources
- `ClaudeBook/` - Narrative summaries for web publishing
- `z_Templates/` - Reusable templates

## Key Conventions
- Wiki-links: `[[Name]]` for cross-references
- YAML front matter on all content files
- Dataview Serializer markers: `<!-- QueryToSerialize: <query> -->`
- Plot hooks syntax: `[question:: Question text]`

## Available Skills
- `/new-session` - Create session note from template
- `/new-npc` - Create NPC with full template
- `/summarize-session` - Convert session to ClaudeBook narrative
- `/plot-hooks` - Extract unresolved mysteries
- `/validate-links` - Check for broken wiki-links
- `/party-roster` - Generate party status table
- `/npc-mentions` - Find all references to an NPC
- `/world-entry` - Create new location
- `/update-timeline` - Add major events to `World/Timeline.md`

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
