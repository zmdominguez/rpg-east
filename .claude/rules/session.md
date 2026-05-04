---
paths:
  - "Campaign Journal/**"
---

When creating or editing session notes in `Campaign Journal/`, follow these conventions exactly.

## File Naming & Paths
| Campaign | Prefix | Folder |
|---|---|---|
| Main | S## | `Campaign Journal/Main/S## Title.md` |
| Cross Bones Inc | X## | `Campaign Journal/Cross Bone Inc/X## Title.md` |
| One Shot | O## | `Campaign Journal/One Shot/O## Title.md` |

Use zero-padded numbers: S05, X01, O02.

## YAML Frontmatter Schema
```yaml
---
date: YYYY-MM-DD
location:
  - "[[Location1]]"
  - "[[Location2]]"
dm: "[[DM Name]]"
party:
  - "[[Character1]]"
  - "[[Character2]]"
tags:
  - session
---
```
All wiki-links in YAML must be quoted.

## Infobox Block (immediately after frontmatter)
```markdown
> [!infobox|right n-th wikipedia]
> # <!-- IQ: =this.file.name -->session notes<!-- /IQ -->
> 
> | Type | Stat |
> | ---- | ---- |
> | **Date** | <!-- IQ: =this.date -->YYYY-MM-DD<!-- /IQ --> |
> | **Location** | <!-- IQ: =this.location -->-<!-- /IQ --> |
> | **DM** | <!-- IQ: =this.dm -->-<!-- /IQ --> |
> | **Party** | <!-- IQ: =this.party -->-<!-- /IQ --> |
```
Do not modify the `<!-- IQ: ... -->` tags — these are auto-rendered by the IQ plugin.

## Section Structure (in order, with exact emoji headers)
1. `## 💡Key Learnings` — Important information the party discovered
2. `## 🤝 Who Did We Meet?` — NPCs introduced: `**Name.** Description`
3. `## 📝 Session Notes` — Bullet-point play-by-play
4. `## 📓 Homework` — Checkbox tasks: `- [ ] Item`

## Plot Hook Syntax
To mark an unresolved question for `/plot-hooks` to pick up:
```
[question:: What is behind the door?]
```
