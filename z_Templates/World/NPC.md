---
name: <% tp.file.title %>
species:
occupation:
location:
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
```
LIST
FROM "Campaign Journal"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
```
%%



%% DATAVIEW_PUBLISHER: end %%

##### NPCs
%% DATAVIEW_PUBLISHER: start
```
LIST
FROM "World/NPCs"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
```
%%



%% DATAVIEW_PUBLISHER: end %%

#### Party
%% DATAVIEW_PUBLISHER: start
```
LIST
FROM "Party"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
```
%%



%% DATAVIEW_PUBLISHER: end %%
#### World
%% DATAVIEW_PUBLISHER: start
```
LIST
FROM "World"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
```
%%



%% DATAVIEW_PUBLISHER: end %%

---