# Personal Notes - DM Only

This folder contains private Game Master notes for session preparation and hidden campaign information.

## Working Style

- Always ask for more details or information before creating something if you need more inputs
- The DM prefers clarity over assumptions

## Purpose
- Session planning and preparation
- Secret plot points and story arcs
- Hidden NPC motivations and backstories
- Encounter planning and balancing
- Loot tables and rewards
- Player-specific surprises

## Conventions
- Contents are confidential from players
- **NEVER include any information from this folder in PR descriptions** - DM notes must remain secret

## Branch Policy

The `cnt/dm` branch is **local-only and will never be pushed to or merged into `main`**. It exists solely to track DM work locally.

Because of this, the `personalNotes/` gitignore entry is intentionally removed on this branch so git can track changes here. This is not a problem and does not need to be resolved. Do not suggest fixing or cleaning it up.

## More Conventions
- Use the same YAML front matter style as other vault files
- Link to public NPCs/locations using `[[wiki-links]]` for reference
- **SESSION PREP RULE:** When doing session preparation, ONLY create/modify files inside the `/personalNotes/` folder. Never create party files, session notes, or any other content outside this folder during prep - this avoids spoiling things for players who have access to the main vault.

## Suggested Structure
- `/personalNotes/sessions/` - Upcoming session prep
- `/personalNotes/secrets/` - Hidden lore and plot twists
- `/personalNotes/encounters/` - Combat and challenge planning
- `/personalNotes/player-arcs/` - Individual character story threads

## Session Prep Template

When creating session prep documents, follow this structure:

### Required Sections
1. **Overview** - Party level, session type (combat/investigation/exploration/balanced), location
2. **The Hook** - Why this party? How do they get the job? Who approaches them?
3. **Investigation Phase** - NPCs to talk to, clues to find, DC checks for information
4. **Combat Encounters** - Use the creature stat block format below
5. **Resolution** - Multiple outcomes based on party choices
6. **Loot Summary** - Combat drops, quest rewards, special items
7. **DM Notes** - Tone, pacing, player character moments, contingencies

### Combat Creature Stat Blocks

Creature tables must include **everything needed to run the creature** without referencing external books. Use a single table with all creatures, then explain abilities/behavior in text below.

**Table format:**
| Creature | Count | HP | AC | ATK | DMG | Notes |
|----------|-------|----|----|-----|-----|-------|
| Name | X | XX | XX | +X | XdX+X type | Key abilities |

**After the table**, add explanations for:
- Special abilities mentioned in Notes (Multiattack, Pack Tactics, Recharge abilities, etc.)
- Behavior (how they fight, flee conditions, tactics)
- Weaknesses or special conditions

**Example:**

| Creature | Count | HP | AC | ATK | DMG | Notes |
|----------|-------|----|----|-----|-----|-------|
| Grave Robber | 3 | 32 | 11 | +4 | 1d6+2 bludgeon | Multiattack, Pack Tactics |
| Grave Robber Leader | 1 | 45 | 14 | +5 | 1d6+3 piercing | Multiattack, Command |

**Grave Robber:** Multiattack (2 mace attacks). Pack Tactics gives advantage if ally within 5ft of target. Fight together, surrender if leader falls.

**Grave Robber Leader:** Multiattack (2 shortsword attacks). Also has light crossbow (+4, 1d8+2, range 80/320). Command (1/day) as bonus action lets one ally make an attack. Stays behind thugs, flees if alone and below half HP.

### Combat Balance Reference (Party of 4)
- Level 3: CR 3-4 main enemy, CR 1/2-1 minions
- Level 4: CR 4-5 main enemy, CR 1-2 minions
- Level 5: CR 5-6 main enemy, CR 2-3 minions

### Key Information to Gather Before Writing
- Which party (Main or Cross Bones Inc)?
- What happened in the previous session?
- Which ongoing plot threads to advance?
- Environmental/location details
- NPC motivations (public vs hidden)

### Multi-File Session Folder Structure

When a session has multiple files (index + scene files), use this structure:

**File naming:** Prefix each file with a two-digit number so they sort in session order:
```
00-index.md
01-opening-scene.md
02-combat-encounter.md
03-location.md
...
10-loot.md
```

**Navigation footer:** Every file must end with a nav bar after a `---` divider:
```markdown
---

← [[NN-prev-file|← Prev]] | [[00-index|Index]] | [[NN-next-file|Title →]]
```
- Index (`00-index.md`): only `Next →` link
- Last file: only `← Prev` and `Index` links, no Next
- All internal cross-references use the numbered filename (e.g. `[[02-combat-frost-wolves]]`)

### Linking Conventions
- Always link to existing NPCs: `[[NPC Name]]`
- Link to locations: `[[Location Name]]`
- Link to items: `[[Item Name]]`
- Reference sessions: S## for Main, X## for Cross Bones, O## for one-shots

## Campaign Reference

### Main Party (current)
- [[Aeris Whisperwind]] - Wood Elf Bard (player: Zarah)
- [[Kass]] - TBD (player: Marco)
- [[Mirr]] - Goliath Warlock/Fighter (player: Fiona)
- [[Selune]] - Wood Elf Druid (player: Ju)

### Major Plot Threads
- Velthara (The Weaver) - Phase Spider Queen, main antagonist
- Blood Root - Magical amplifier, connected to Owl Cult origins
- Eman's Secrets - Owl Cult druid, political ambitions
- Thelasian Ruins - Dr. Clair's excavation, spider influence

### Key NPCs with Hidden Motivations
- [[Eman]] - Secretly Owl Cult, wants political power
- [[Naven]] - Knows more about Blood Root than she admits
- [[Dr Clair Bucklebub]] - Accepted Velthara's offer (compromised)

## GitHub Repository

### Collaborators
| GitHub Username | Name |
|-----------------|------|
| zmdominguez | Zarah |
| Canato | Canato (DM) |
| JMNBatista | JMN |

### PR Conventions
- Add Zarah (zmdominguez) as reviewer for session content
