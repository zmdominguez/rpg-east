🎮 **DM**: Canato
📆 Every Monday, 6pm-ish
📍9/53 Forsyth St, Kingsford NSW 2032

#### 👯 Party
```dataview
TABLE WITHOUT ID player as Player, file.link AS Character, class as Class, species as Species
FROM "Party"
SORT file.name ASC
```

#### 👮 House rules:
- 💰Add expenses to the [Splitwise group](https://www.splitwise.com/join/incW2So3Dry+1mkx8?v=e)
- 🍿 Players in charge of snacks: vegetarian, no shrimp, no crab

#### 🌏 World rules:
- No equipment weight limit

### 🔗 Links
- [[📆 Calendar]]

---
## 📚 Session Index
```dataview
LIST
FROM "Campaign Journal"
WHERE regexmatch("^S\d{2}", file.name)
SORT file.name ASC
```

### Cross Bones
```dataview
LIST
FROM "Campaign Journal"
WHERE regexmatch("^X\d{2}", file.name)
SORT file.name ASC
```

### One Shots
```dataview
LIST
FROM "Campaign Journal"
WHERE regexmatch("^O\d{2}", file.name)
SORT file.name ASC
```
---

