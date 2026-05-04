---
paths:
  - "World/NPCs/**"
---

When creating or editing NPC files in `World/NPCs/`, follow these conventions exactly.

## YAML Frontmatter Schema
```yaml
---
name: Full Name
status: Active        # Valid: Active | Dead | Missing | Unknown
species: Human
occupation: Settler
location: "[[Location Name]]"   # quoted wiki-link
tags:
  - npc
---
```

## Section Structure (in order, with exact emoji headers)
1. `## 👨‍🎤 Description` — Physical appearance, mannerisms, defining traits
2. `## 📝 Notes` — Story beats, motivations, relationships, key facts
3. `## 🗣️ Mentioned in` — Contains four QueryToSerialize subsections (do not modify query blocks)

## QueryToSerialize Blocks
The "Mentioned in" section tracks backlinks automatically. Replace `[[]]` with `[[NPC Name]]` in each query:

```
#### Sessions
<!-- QueryToSerialize: 
LIST
FROM "Campaign Journal"
WHERE contains(file.outlinks, [[NPC Name]])
SORT file.name ASC
-->

##### NPCs
<!-- QueryToSerialize: 
LIST
FROM "World/NPCs"
WHERE contains(file.outlinks, [[NPC Name]])
SORT file.name ASC
-->

#### Party
<!-- QueryToSerialize: 
LIST
FROM "Party"
WHERE contains(file.outlinks, [[NPC Name]])
SORT file.name ASC
-->

#### World
<!-- QueryToSerialize: 
LIST
FROM "World/Locations"
WHERE contains(file.outlinks, [[NPC Name]])
SORT file.name ASC
-->
```

## Rules
- Always quote wiki-links in YAML: `"[[Name]]"` not `[[Name]]`
- Status must be one of the four valid values — do not invent new ones
- File path: `World/NPCs/[Full Name].md` (use the character's full name)
- After creating, remind the user to link the NPC from relevant session notes
