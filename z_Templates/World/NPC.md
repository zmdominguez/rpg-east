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

```dataview
LIST
FROM "Campaign Journal"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
```

##### NPCs

```dataview
LIST
FROM "NPCs"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
```

#### Party

```dataview
LIST
FROM "Party"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
```
#### World

```dataview
LIST
FROM "World"
WHERE contains(file.outlinks, [[]])
SORT file.name ASC
```

---