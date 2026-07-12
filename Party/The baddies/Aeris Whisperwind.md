---
player: Zarah
name: Aeris Whisperwind
class:
  - Bard
species: Wood Elf
tags:
  - party
aliases:
  - Aeris
---

> [!statblocks|full]
> ![[Aeris-Whisperwind.png|cover right circle p+tc htiny wtiny lp]]
> 
> # <!-- IQ: =this.file.name -->Aeris Whisperwind<!-- /IQ -->
>
> |  |  |
> | ---- | ---- |
> | **Player** | <!-- IQ: =this.player -->Zarah<!-- /IQ --> |
> | **Class** | <!-- IQ: =this.class -->Bard<!-- /IQ --> |
> | **Species** | <!-- IQ: =this.species -->Wood Elf<!-- /IQ --> | 
> | **Level** | <!-- IQ: =this.level -->5<!-- /IQ --> (College of Valor) | 
> 
> ---
| HP | AC | Initiative |
|:---:|:---:|:---:|
| 19 | 13 |  +<!-- IQ: =this.dex_mod -->2<!-- /IQ --> |
>
| STR | DEX | CON | INT | WIS | CHA |  |
|:---:|:---:|:---:|:---:|:---:|:---:|:--- |
| 8 | 14  | 8 | 14 | 17 | 18 |  |
| <!-- IQ: =this.str_mod -->-1<!-- /IQ --> | +<!-- IQ: =this.dex_mod -->2<!-- /IQ --> | <!-- IQ: =this.con_mod -->-1<!-- /IQ --> | +<!-- IQ: =this.int_mod -->2<!-- /IQ --> | +<!-- IQ: =this.wis_mod -->3<!-- /IQ --> | +<!-- IQ: =this.cha_mod -->4<!-- /IQ --> | **Mod** |
| <!-- IQ: =this.str_mod -->-1<!-- /IQ --> | +<!-- IQ: =(this.dex_mod+this.pb) -->5<!-- /IQ --> | <!-- IQ: =this.con_mod -->-1<!-- /IQ --> | +<!-- IQ: =this.int_mod -->2<!-- /IQ --> | +<!-- IQ: =this.wis_mod -->3<!-- /IQ --> | +<!-- IQ: =(this.cha_mod+this.pb) -->7<!-- /IQ --> | **Sav** |
>
>> \*ADV made to avoid or end the Charmed condition (Fey Ancestry)
>> \*ADV on Performance checks (Whisperwind Quill)
>> 
>> **Skills:** 
>> - Expertise: Perception +<!-- IQ: =(this.wis_mod+(this.pb*2)) -->9<!-- /IQ -->, Performance +<!-- IQ: =(this.cha_mod+(this.pb*2)) -->10<!-- /IQ -->
>> - Proficiency: Acrobatics +<!-- IQ: =(this.dex_mod+this.pb) -->5<!-- /IQ -->, Arcana +<!-- IQ: =(this.int_mod+this.pb) -->5<!-- /IQ -->, Insight +<!-- IQ: =(this.wis_mod+this.pb) -->6<!-- /IQ -->, Stealth +<!-- IQ: =(this.dex_mod+this.pb) -->5<!-- /IQ -->
>> - Half Proficiency: Animal Handling +<!-- IQ: =(this.wis_mod+(floor(this.pb/2))) -->4<!-- /IQ -->, Athletics +<!-- IQ: =(this.str_mod+(floor(this.pb/2))) -->0<!-- /IQ -->, Deception +<!-- IQ: =(this.cha_mod+(floor(this.pb/2))) -->5<!-- /IQ -->, History +<!-- IQ: =(this.int_mod+(floor(this.pb/2))) -->3<!-- /IQ -->, Intimidation +<!-- IQ: =(this.cha_mod+(floor(this.pb/2))) -->5<!-- /IQ -->, Investigation +<!-- IQ: =(this.int_mod+(floor(this.pb/2))) -->3<!-- /IQ -->, Medicine +<!-- IQ: =(this.wis_mod+(floor(this.pb/2))) -->4<!-- /IQ -->, Nature +<!-- IQ: =(this.int_mod+(floor(this.pb/2))) -->3<!-- /IQ -->, Persuasion +<!-- IQ: =(this.cha_mod+(floor(this.pb/2))) -->5<!-- /IQ -->, Religion +<!-- IQ: =(this.int_mod+(floor(this.pb/2))) -->3<!-- /IQ -->, Sleight of Hand +<!-- IQ: =(this.dex_mod+(floor(this.pb/2))) -->3<!-- /IQ -->, Survival +<!-- IQ: =(this.wis_mod+(floor(this.pb/2))) -->4<!-- /IQ -->
>
> %% 
> Add modifiers or stats here used in other places. For example, this WIS modifier is used for other checks:
> level:: 5
> pb:: 3
> str_mod:: -1
> dex_mod:: 2
> con_mod:: -1
> int_mod:: 2
> wis_mod:: 3
> cha_mod:: 4
> %%
>
|  |  |
| ---:|:--- |
| **Speed** | 35ft |
| **Passive Perception** | <!-- IQ: =(this.wis_mod+(this.pb*2)+10) -->19<!-- /IQ --> |
| **Proficiency Bonus** | +<!-- IQ: =this.pb -->3<!-- /IQ --> |
| **Darkvision** | 60ft |
>
>> ## Spells
>> 
>> |  |  |
| ---:|:--- |
| **Modifier** | +<!-- IQ: =this.cha_mod -->4<!-- /IQ --> |
| **Spell Attack** | +<!-- IQ: =(this.cha_mod+this.pb) -->7<!-- /IQ --> |
| **Save DC** | <!-- IQ: =(8+this.cha_mod+this.pb) -->15<!-- /IQ --> |
>>
| Level | Slots | Spells |
| ---: | --- | --- | 
| 1st | 4 | Charm Person, Dissonant Whispers, Healing Word, Heroism, Longstrider |
| 2nd | 3 | Aid, Blindness/Deafness, Mirror Image, Pass Without Trace |
| 3rd | 2 | Dispel Magic, Mass Healing Word |
| 4th | - | - |
| 5th | - | - |
>
>> #### Cantrips (4)
>> Dancing Lights, Druidcraft, Mage Hand, Vicious Mockery
>
> ---
>> ## Class Features
>> #### Bardic Inspiration
>> **Using Bardic Inspiration.** Bonus Action, inspire another creature within 60 feet of yourself who can see or hear you. That creature gains one of your Bardic Inspiration dice (<!-- IQ: =choice(this.level > 14, "1d12", choice(this.level > 9, "1d10", choice(this.level > 4, "1d8", "1d6"))) -->1d8<!-- /IQ -->).
>> **Number of Uses.** <!-- IQ: =this.cha_mod -->4<!-- /IQ --> (CHA mod) per Long Rest.
>> **At Higher Levels.** Starts at d6. The die becomes a d8 at level 5, a d10 at level 10, and a d12 at level 15.
>> 
>> #### Jack of All Trades
>> You can add half your Proficiency Bonus (round down) to any ability check you make that uses a skill proficiency you lack and that doesn’t otherwise use your Proficiency Bonus.
>> 
>> #### Font of Inspiration
>> You now regain all your expended uses of Bardic Inspiration when you finish a Short or Long Rest.
>> 
>> In addition, you can expend a spell slot (no action required) to regain one expended use of Bardic Inspiration.
>> 
>> #### Combat Inspiration
>> **Defense.** When the creature is hit by an attack roll, that creature can use its Reaction to roll the Bardic Inspiration die and add the number rolled to its AC against that attack, potentially causing the attack to miss.
>> **Offense.** Immediately after the creature hits a target with an attack roll, the creature can roll the Bardic Inspiration die and add the number rolled to the attack’s damage against the target.
>>
>> ## <!-- IQ: =this.species -->Wood Elf<!-- /IQ --> Traits
| | |
| --- | :--- |
| **Fey Ancestry** | Advantage on saving throws to avoid or end the Charmed condition |
| **Trance** | Magic can’t put you to sleep; finish a Long Rest in 4 hours if you spend those hours in a trancelike meditation, during which you retain consciousness |
>> 
>
>> ## Feats
>> 
>> #### Musician
>> **Instrument Training.** You gain proficiency with three Musical Instruments of your choice: Viol, Pan Flute, Flute.
>> **Encouraging Song.** 1/SR or LR; Play a song on a Musical Instrument with which you have proficiency and give Heroic Inspiration to <!-- IQ: =this.pb -->3<!-- /IQ -->(PB) allies who hear the song.
>> #### Inspiring Leader
>> **Ability Score Increase.** Increase your Wisdom or Charisma score by 1, to a maximum of 20: CHA
>> **Bolstering Performance.** 1/SR or LR; Give an inspiring performance: a speech, song, or dance. Choose up to six allies (which can include yourself) within 30 feet of yourself who witness the performance and each gain <!-- IQ: =(this.level+this.cha_mod) -->9<!-- /IQ --> Temporary HP (character level + CHA mod).
>> 
>
> ## Equipment and Notable Items
> #### Equipment
> Traveler's clothes, leather armor, dagger, costumes, mirror, perfume
> 
> #### Whisperwind Quill
> *Uncommon wondrous item — requires attunement (Bard)*
> Received from [[Pipe Ashford]] via the [[Rootmother's Garden]].
> - 1/LR: Send a floating written message
> - Advantage on Performance checks
> - Hums faintly near someone speaking a deliberate lie
> 
> Attuned through a [[Blood root]] sacrifice ritual. Long-term effects unknown.
> 
> ---


## 🕯️ Backstory

Aeris Whisperwind was never meant to lift swords or wear armor. Born into the twilight lands between the elven city of Elarion and the cosmopolitan sprawl of Caelora, she grew up in a home of candlelit poetry, whispered lullabies, and layered truths.

Her body was always delicate — illness clung to her in childhood, and she tired quickly from even small exertions. She wasn’t raised to fight, but to observe, learn, and understand. Her mother, Lirae Whisperwind, a quiet elven noblewoman skilled in courtly subtlety, taught Aeris the art of reading unspoken emotions. Her father, an elven playwright named Thalen Rook, gave her a love of words so powerful they could cut deeper than blades.

Aeris could listen to a room and know its secrets. She could speak a single sentence and change the course of a negotiation. Her wisdom made her intuitive and cautious; her intelligence made her curious and quick-thinking; and her charisma — that radiant, commanding presence — ensured that people listened when she spoke… even if they didn’t want to.

At twelve, Thalen vanished during a private performance for Elarion's high court. He left behind only a page torn from a script, stained in blood and ink — and a beautiful silver-stringed lyre, one he had commissioned in secret for Aeris. Its name was etched beneath the frame in fine script:

> “Let her voice carry what mine could not.”

Aeris named it Thalen’s Voice.

Grief-stricken and betrayed by her mother’s silence, Aeris fled Elarion. With Thalen’s Voice at her side, she began to walk the world, weaving songs that stirred hearts and uncovered secrets, hoping that one day, they would lead her to the truth.

## 👨‍🎤 Description

Aeris Whisperwind is a soft-spoken Wood Elf whose presence is more felt than noticed. Slight and graceful, she carries a faint fragility but moves with deliberate poise. Her pale, faintly freckled skin and long silver-lavender hair frame luminous storm-gray eyes that seem to listen as much as they see.

She dresses in elegant, dark practical clothing suited for quiet movement, wearing a silver quill-and-lyre pendant tied to her family. Almost always at her side is her rune-etched lyre, _Thalen’s Voice_, which subtly responds to her emotions. Rather than commanding attention with brightness, Aeris draws it like a hushed melody — calm, observant, and quietly haunting.

## 📝 Notes
- Default musician at [[Cross Bones Pub]]
- Raised on the Royal Court, after her dad went missing, she left to look for him, taking his lyre as her main instrument. 
- Sees an unknown character from her Childhood in the city


