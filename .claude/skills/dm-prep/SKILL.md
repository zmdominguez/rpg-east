---
name: dm-prep
description: Generate a pre-session DM briefing with open plot hooks, relevant NPCs, party status, and location notes. Use before each session to prepare.
argument-hint: [location] [session_number]
allowed-tools: Read Glob Grep
model: claude-sonnet-4-6
---

# /dm-prep

Generate a comprehensive DM briefing for the upcoming session.

## Usage
```
/dm-prep [location] [session_number]
```

## Instructions

1. Ask the user for (if not provided):
   - Target location for the upcoming session
   - Upcoming session number and campaign type (Main/CrossBones/OneShot)

2. Gather all of the following:

   **a. Open Plot Hooks**
   - Search `Campaign Journal/` for `[question:: ...]` patterns
   - Read the most recent session note and extract cliffhangers from the ending

   **b. Location Details**
   - Find and read the location file from `World/Locations/` (search subdirectories)
   - Note key NPCs listed there

   **c. Relevant NPCs**
   - Search `World/NPCs/` for NPCs whose `location` frontmatter contains the target location
   - Also find any NPCs referenced in the location file

   **d. Party Status**
   - Read all character files from `Party/Main/` (or `Party/CrossBonesInc/` for Cross Bones)
   - Extract player, name, class, species from YAML frontmatter

   **e. Last Session Context**
   - Read the most recent session note
   - Extract Key Learnings section and any open questions

3. Output a structured DM briefing:

```markdown
# DM Prep — S## [Session Title]
*Date: [today's date]*

## Open Plot Hooks
- **[Hook question]** — From [[Session]] | Related: [[NPC]], [[Location]]

## Location: [[Location Name]]
[Key details from the location file]

## Relevant NPCs
- **[[NPC Name]]** (Status: X, Species: Y) — [Last known info or notes]

## Party
| Player | Character | Class | Species |
|--------|-----------|-------|---------|
| ... | ... | ... | ... |

## Last Session Context
[Brief summary of where things stand from the most recent session's Key Learnings]
```

4. After output, ask: "Do you want me to create a session note for S## now?"
