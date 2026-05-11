---
paths:
  - "Party/**"
---

When creating or editing party character files, follow these conventions.

## Folder Structure
| Folder | Purpose |
|---|---|
| `Party/Main/` | Active main campaign characters |
| `Party/CrossBonesInc/` | Active Cross Bones characters |
| `Party/Extras/` | Supporting/recurring NPCs treated as party-adjacent |
| `Party/Retired/` | Characters no longer active |

## YAML Frontmatter Schema
```yaml
---
player: PlayerName
name: Character Name
class:
  - Class1
  - Class2      # multiclass — use array even for single class
species: Species
tags:
  - party
---
```

## Infobox Block (immediately after frontmatter)
```markdown
> [!infobox|right n-th wikipedia]
> # <!-- IQ: =this.file.name -->Character Name<!-- /IQ -->
> ![[Character.jpeg|cover hsmall]]
> 
> | Type | Stat |
> | ---- | ---- |
> | **Player** | <!-- IQ: =this.player -->PlayerName<!-- /IQ --> |
> | **Class** | <!-- IQ: =this.class -->Class<!-- /IQ --> |
> | **Species** | <!-- IQ: =this.species -->Species<!-- /IQ --> |
```

## Section Structure (in order, with exact emoji headers)
1. `## 🕯️ Backstory` — Character origin and motivation
2. `## 👨‍🎤 Description` — Physical appearance
3. `## 📝 Notes` — In-campaign developments, items, relationships

## Rules
- `class` is always a YAML array (even single class: `- Fighter`)
- Do not add YAML frontmatter to images (`.jpeg` embeds have no frontmatter)
- File path: `Party/[Folder]/[Character Name].md`
