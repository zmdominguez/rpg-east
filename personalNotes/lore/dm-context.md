---
name: DM Context — Age of Roots & Campaign Lore
description: DM-only reference for deep lore, worldbuilding conventions, and hidden campaign context
tags:
  - dm-only
---

# DM Context

This file is DM-only. Never include in PRs, player-facing content, or any public `.claude/` files.

---

## personalNotes Structure

```
personalNotes/
  lore/
    worldbuilding/  — Historical character files: Gorethis, Maerath, Velenth, Scarsith,
                      Maeris Thornweave, Aeldris Vorn, Velthara
                      Master docs: age-of-roots.md, prologue.md, plot-twists.md
    thelasian/      — Thelasian civilization: overview, the-six-founders,
                      society-and-technology, ruins-guide
    the-web-of-velthara.md
    factions-of-thornhaven.md
    dm-context.md   — This file
  sessions/
    upcoming/       — Session prep folders (numbered files + nav footers)
    done/           — Completed session prep
  PLAN.md           — Active worldbuilding plan (write before large lore tasks)
```

---

## Age of Roots — Key Facts

Full history in `personalNotes/lore/worldbuilding/age-of-roots.md`. Summary for quick reference:

- **Gorethis** — god of growth, sealed inside Blood Root; Blood Root's amplification IS his dispersed essence
- **Maerath** — god of fate/portals, sleeping beneath the Thelasian ruins; portal reopening (Year 4) was him stirring
- **Velthara** — created by Maerath as a weapon against Gorethis; she carries Gorethis's fragments; **killing her releases him** (critical trap for players)
- **Scarsith** — was a minor deity during Age of Roots who merely noticed the false abundance; grew powerful from the collapse aftermath; Thornhaven is his deliberate project to maintain Blood Root scarcity
- **The Owl Cult** transformation — Maerath's protective spell on Maeris's loyal druids, not a curse
- **Aeldris Vorn's tower** — Veiled Peaks; contains the controlled dispersal method (the endgame key)

Plot twists ordered by reveal: `personalNotes/lore/worldbuilding/plot-twists.md`
In-world read-aloud prologue: `personalNotes/lore/worldbuilding/prologue.md`

---

## Worldbuilding Conventions

### Before Large Lore Tasks
1. Write `personalNotes/PLAN.md` first — narrative spine, character list, file list, plot hooks
2. Create the target folder before writing any files — never write to parent and move later
3. Character files → `personalNotes/lore/worldbuilding/[Name].md`
4. Location-specific lore → `personalNotes/lore/[location-name]/`

### Character File Rules
- All characters (including gods and historical figures) require valid **D&D 5e species and class** — no invented types
- Gods need a `## Mortal Life — Before Ascension` section explaining their pre-deity species, class, and path to divinity
- Lore character YAML includes: `name, status, species, class, occupation, location, era, alignment, epithet, tags: [npc, deity/age-of-roots/etc]`

---

## Thelasian Ruins — Player-Facing Facts

Things the party already knows (established in sessions):
- Bioluminescent glowworms light the tunnels
- Inscriptions above the portal entrance and cleansing pool
- Janitor golem encountered
- Dr. Clair's transformation
- Bri and Akor's positions in the ruins

Full DM guide: `personalNotes/lore/thelasian/ruins-guide.md`
