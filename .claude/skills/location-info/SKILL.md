---
name: location-info
description: Find all sessions, NPCs, and events related to a location. Use to review everything that has happened at or around a place in the campaign.
argument-hint: [location_name]
allowed-tools: Read Glob Grep
model: claude-sonnet-4-6
---

# /location-info

Find all references to a location across the vault.

## Usage
```
/location-info [location_name]
```

## Instructions

1. If no location name provided, list files in `World/Locations/` subdirectories and ask which to search

2. Find and read the location file in `World/Locations/` (search all subdirectories)

3. Search for the location name across:
   - All session notes in `Campaign Journal/`
   - All NPC files in `World/NPCs/`
   - Party files in `Party/`
   - World files in `World/`

4. For each mention extract:
   - File name and path
   - Line number
   - Context (the sentence or bullet containing the mention)

5. Also find NPCs whose `location` frontmatter matches this location

6. Output format:
```markdown
## [[Location Name]] — Info Report

### Location Overview
[Key details from the location file: description, key NPCs, notable features]

### Session Appearances
- **S04 Finding Pipe** (line 23): "The party entered [[Location]]..."

### Associated NPCs
- **[[NPC Name]]** (Status: X) — listed as home/work location
- **[[NPC Name]]** — mentioned in connection with this place

### Summary
- First mentioned: [Session]
- Total mentions: X
- Key events that occurred here
```
