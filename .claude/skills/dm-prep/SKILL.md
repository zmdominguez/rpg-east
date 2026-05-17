---
name: rpg-dm-prep
description: Generate a pre-session DM briefing with open plot hooks, relevant NPCs, party status, and location notes. Use before each session to prepare.
argument-hint: [location] [session_number]
allowed-tools: Read Glob Grep
model: claude-sonnet-4-6
arguments: location session_number
---

# /dm-prep

Generate a comprehensive DM briefing for the upcoming session.

## Usage
```
/dm-prep [location] [session_number]
```

## Instructions

1. Gather required info (use provided arguments if non-empty, otherwise ask):
   - Target location: `$location`
   - Session number: `$session_number` and campaign type (Main/CrossBones/OneShot)

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
   - Read all character files from `Party/The Baddies/` (or `Party/CrossBonesInc/` for Cross Bones)
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

4. After output, ask: "Do you want me to create a session prep folder for S## now?"

---

## Session Prep Folder (Deep Prep)

When the DM wants a full scene-by-scene breakdown (not just a briefing), create a numbered folder:

```
personalNotes/sessions/upcoming/<sXX-session-title>/
  00-index.md
  01-<scene>.md
  02-<scene>.md
  ...
  NN-loot.md
```

### File conventions

**00-index.md** — Master index:
```markdown
# Session S##: [Title]

**Party Level:** N
**Type:** [Combat / Roleplay / Exploration / Mixed]
**Location:** [Start] → [End]

## Session Start
[Opening situation in 1-2 sentences]

## Session Flow
1. [[01-scene]] — Description
2. [[02-scene]] — Description
...

## Pacing Guide
- Scene name: N–N minutes
...

## Connecting Threads
- [How this session ties into long-running plots]
```

**Combat files** — Include:
- Full stat block table (HP, AC, Speed, Initiative, Prof)
- Ability score table
- Attacks with hit/damage
- Special abilities and per-turn guide (Turn 1: X, Turn 2: Y…)
- Flee/surrender thresholds

**Location/scene files** — Include:
- Read-aloud text block
- Environmental effects (difficult terrain, weather, DC checks)
- Navigation or discovery methods with DCs
- Links to relevant NPCs

**NPC conversation files** — Include:
- Personality and motivation
- What they reveal and when
- Key dialogue options with DM notes
- What they know vs. what they will share

**Resolution file** — List multiple outcome options:
```
## Option 1: [Outcome]
[Consequence + reward]

## Option 2: [Outcome]
[Consequence + reward]
```

**Loot file** — Organize by source:
```
## Combat Loot
| Item | Value | Source |
...

## Quest Rewards
| Source | Reward |
...
```

### Navigation footers

Every file (except 00-index) ends with:
```
← [[NN-prev|Prev]] | [[00-index|Index]] | [[NN-next|Next →]]
```

### After the session

Move the entire folder to `personalNotes/sessions/done/`. Then update vault files:
- NPC status/location/notes for anyone introduced or changed
- Location `## Notable Events` sections
- Any new items introduced
