---
name: rpg-new-npc
description: Create a new NPC file from template. Use when introducing a new character to the campaign.
allowed-tools: Read Write Glob
model: claude-sonnet-4-6
disable-model-invocation: true
arguments: name
---

# /new-npc

Create a new NPC (Non-Player Character) file.

## Usage
```
/new-npc [name]
```

## Instructions

1. Gather required info (use provided arguments if non-empty, otherwise ask):
   - NPC name: `$name`
   - Species/Race — must be a valid D&D 5e species (Human, Elf, Halfling, Dwarf, etc.)
   - Class — must be a valid D&D 5e class (Fighter, Wizard, Druid, Rogue, etc.)
   - Occupation/Role
   - Location (where they're usually found)
   - Brief description (optional)

2. Create the file at `World/NPCs/[Name].md` using this template:

```markdown
---
name: [NPC Name]
status: Active
species: [D&D 5e Species]
class: [D&D 5e Class]
occupation: [Occupation]
location: "[[Location]]"
tags:
  - npc
---
## 👨‍🎤 Description
- How does this creature look like?
- Any defining characteristics?

## 📝 Notes

## 🗣️ Mentioned in

#### Sessions

<!-- QueryToSerialize: 
LIST
FROM "Campaign Journal"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
-->


##### NPCs

<!-- QueryToSerialize: 
LIST
FROM "World/NPCs"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
-->


#### Party

<!-- QueryToSerialize: 
LIST
FROM "Party"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
-->


#### World

<!-- QueryToSerialize: 
LIST
FROM "World/Locations"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
-->


---
```

3. If the user provides a description, fill it in under the Description section
4. For historical/lore characters (ancient figures, gods, Age of Roots era):
   - Add `era:` field to YAML with the time period
   - Add `epithet:` field if they have a title or sobriquet
   - For deities: add a **Mortal Life — Before Ascension** section in Notes explaining their pre-deity species, class, and how they gained their power
   - Place file in `personalNotes/lore/worldbuilding/[Name].md` instead of `World/NPCs/` (these are DM-only until ready to publish)
5. Remind the user to add the NPC link to relevant session notes
