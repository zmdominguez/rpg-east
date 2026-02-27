# /new-npc

Create a new NPC (Non-Player Character) file.

## Usage
```
/new-npc [name]
```

## Instructions

1. Ask the user for:
   - NPC name (if not provided)
   - Species/Race
   - Occupation/Role
   - Location (where they're usually found)
   - Brief description (optional)

2. Create the file at `NPCs/[Name].md` using this template:

```markdown
---
name: [NPC Name]
species: [Species]
occupation: [Occupation]
location: [[Location]]
tags:
  - npc
---
## 👨‍🎤 Description
- How does this creature look like?
- Any defining characteristics?

## 📝 Notes

## 🗣️ Mentioned in

#### Sessions

%% DATAVIEW_PUBLISHER: start
```dataview
LIST
FROM "Campaign Journal"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
```
%%



%% DATAVIEW_PUBLISHER: end %%

##### NPCs
%% DATAVIEW_PUBLISHER: start
```dataview
LIST
FROM "NPCs"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
```
%%



%% DATAVIEW_PUBLISHER: end %%

#### Party
%% DATAVIEW_PUBLISHER: start
```dataview
LIST
FROM "Party"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
```
%%



%% DATAVIEW_PUBLISHER: end %%
#### World
%% DATAVIEW_PUBLISHER: start
```dataview
LIST
FROM "World"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
```
%%



%% DATAVIEW_PUBLISHER: end %%

---
```

3. If the user provides a description, fill it in under the Description section
4. Remind the user to add the NPC link to relevant session notes
