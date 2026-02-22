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
- Dataview Publisher markers: `%% DATAVIEW_PUBLISHER: start/end %%`
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
