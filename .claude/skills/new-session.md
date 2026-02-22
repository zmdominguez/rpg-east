# /new-session

Create a new session note for the RPG campaign.

## Usage
```
/new-session [session_number] [campaign]
```

- `session_number`: The session number (e.g., 05, 06)
- `campaign`: Either "Main" (default), "CrossBones" (X##), or "OneShot" (O##)

## Instructions

1. Ask the user for:
   - Session number (if not provided)
   - Campaign type (Main/CrossBones/OneShot)
   - Session title
   - Location(s) visited
   - Party members present

2. Determine the file path:
   - Main campaign: `Campaign Journal/Main/S## Title.md`
   - Cross Bones: `Campaign Journal/Cross Bone Inc/X## Title.md`
   - One Shot: `Campaign Journal/One Shot/O## Title.md`

3. Create the file using this template:

```markdown
---
date: YYYY-MM-DD
location:
  - "[[Location1]]"
  - "[[Location2]]"
dm: Canato
party:
  - "[[Character1]]"
  - "[[Character2]]"
tags:
  - session
---
## 💡Key Learnings

- Description of any important information that the party learned.


## 🤝 Who Did We Meet?

**Name.** Description


## 📝 Session Notes
- Description


## 📓 Homework
- [ ] Item 1
```

4. Use today's date in YYYY-MM-DD format
5. Wrap all wiki-links in quotes within the YAML front matter
6. After creating, remind the user to fill in the session details
